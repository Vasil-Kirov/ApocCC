#include <Bytecode.h>
#include <Type.h>
#include <platform/platform.h>
#include <Parser.h>

static Type_Info *type_64;
static Data_Segment_Table *global_lookup;
static BC_Function_Table *func_table;

#define MAX_BC_PER_BLOCK (1024 * 8)

IR_Block *
alloc_block(u8 *id, IR *ir)
{
	IR_Block *result = (IR_Block *)AllocateCompileMemory(sizeof(IR_Block));
	result->id = id;
	result->start_address = 0;
	// @NOTE: this (8192) should be more than enough instructions for a
	// block of code that doesn't branch
	// I feel like it's important for this to be a fast linear allocation
	// so I am not using a dynamic array
	result->bc = (Bytecode *)AllocateCompileMemory(sizeof(Bytecode) * MAX_BC_PER_BLOCK);
	SDPush(ir->blocks, result);
	return result;
}

IR_Block *
alloc_block(const char *id, IR *ir)
{
	return alloc_block((u8 *)id, ir);
}

void
set_terminator(IR_Block *block)
{
	if(block->has_terminator)
	{
		LG_ERROR("Setting terminator to block %s, even though it already has a termiantor",
				block->id);
	}
	block->has_terminator = true;
}

IR *
ast_to_bytecode(File_Contents *f, Ast_Node *node)
{
	for(size_t i = 0; i < SDCount(f->functions); ++i)
	{
		shput(func_table, f->functions[i]->identifier, i);
	}

	type_64 = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	type_64->type = T_INTEGER;
	type_64->primitive.size = byte8;
	type_64->identifier = (u8 *)"i64";

	shdefault(global_lookup, -1);

	IR *result = SDCreate(IR);
	IR first = {};
	first.allocated = SDCreate(Data_Segment);
	first.reg_count = reg_invalid + 1; // starting from here so we know that
					   // anything under is a physical register instead of a virtual one
	first.blocks = SDCreate(IR_Block *);
	alloc_block("global_block", &first);
	// @NOTE: maybe not needed since we are at global scope?
	SDPush(result, first);
	if(node->type == type_statements)
		ast_to_bc_file_level_list(node->statements.list, result);
	else
		Assert(false); //@TODO: maybe parse one statement?
	return result;
}

void
ast_to_bc_file_level_list(Ast_Node **list, IR *ir)
{
	size_t count = SDCount(list);
	for(size_t i = 0; i < count; ++i) {
		ast_to_bc_file_level(list[i], &ir[0], false);
	}

	for(size_t i = 0; i < count; ++i) {
		ast_to_bc_file_level(list[i], ir, true);
	}
}

void
ast_to_bc_file_level(Ast_Node *node, IR *ir, b32 gen_func)
{
	switch((int)node->type)
	{
		case type_assignment:
		{
			if(gen_func)
				return;

			Assert(node->assignment.is_declaration);
			b32 failed = false;
			auto value = interpret_expression(node->assignment.rhs, &failed);
			Data_Segment global_var;
			global_var.virtual_register = -1;
			if(ir->allocated == NULL || SDCount(ir->allocated) == 0)
				global_var.position = 0;
			else {
				size_t segment_size = SDCount(ir->allocated);
				auto last_segment = ir->allocated[segment_size - 1];
				global_var.position = last_segment.position + last_segment.size;
			}
			auto size = get_type_size(value.type);
			// @TODO: structs and stuff 
			if(size > 8)
				Assert(false);
			global_var.init_val = value._u64;
			global_var.size = size;
			SDPush(ir->allocated, global_var);
			shput(global_lookup, node->assignment.token.identifier, SDCount(ir->allocated) - 1);
		} break;
		case type_func:
		{
			if(gen_func && node->function.body) {
				IR next = ast_to_bc_function(
						node->function.body->scope_desc.body->statements.list,
						node);
				SDPush(ir, next);
			}

		} break;
	}
}

i32
allocate_register(IR *ir)
{
	return ir->reg_count++;
}

Bytecode *
instruction(i64 big_num, i32 result, BC_OP op, IR_Block *block, Type_Info *type)
{
	Bytecode bc;
	bc.op = op;
	bc.big_idx = big_num;
	bc.result = result;
	bc.type = type;
	block->bc[block->bc_count++] = bc;
	Assert(block->bc_count < MAX_BC_PER_BLOCK);
	return &block->bc[block->bc_count - 1];
}

Bytecode *
instruction(i32 left, i32 right, i32 result, BC_OP op, IR_Block *block, Type_Info *type)
{
	Bytecode bc;
	bc.op = op;
	bc.left_idx = left;
	bc.right_idx = right;
	bc.result = result;
	bc.type = type;
	block->bc[block->bc_count++] = bc;
	Assert(block->bc_count < MAX_BC_PER_BLOCK);
	return &block->bc[block->bc_count - 1];
}

Bytecode *
out_instruction(i64 big_num, i32 result, BC_OP op, Bytecode *out_bc, size_t *bc_count, Type_Info *type)
{
	Bytecode bc;
	bc.op = op;
	bc.big_idx = big_num;
	bc.result = result;
	bc.type = type;
	out_bc[*bc_count] = bc;
	*bc_count += 1;
	return &out_bc[*bc_count - 1];
}

Bytecode *
out_instruction(i32 left, i32 right, i32 result, BC_OP op, Bytecode *out_bc, size_t *bc_count, Type_Info *type)
{
	Bytecode bc;
	bc.op = op;
	bc.left_idx = left;
	bc.right_idx = right;
	bc.result = result;
	bc.type = type;
	out_bc[*bc_count] = bc;
	*bc_count += 1;
	return &out_bc[*bc_count - 1];
}

i32
call_function(IR *ir, IR_Block *block, Ast_Node *node, Call_Conv conv)
{
	Assert(conv == CALL_C_DECL);
	i32 result = allocate_register(ir);
	i32 expr_count = SDCount(node->func_call.arguments);
	i32 expressions[expr_count];
#if defined(_WIN32)
	const Register int_register_order[] = {
		reg_c, reg_d, reg_r8, reg_r9
	};
#else
	const Register int_register_order[] = {
		reg_di, reg_si, reg_d, reg_c, reg_r8, reg_r9
	};
#endif
	i32 int_register_count = 0;
	const Register float_register_order[] = {
		reg_xmm0, reg_xmm1, reg_xmm2, reg_xmm3
	};
	i32 float_register_count = 0;
	for(i64 i = 0; i < expr_count; ++i)
	{
		expressions[i] = expression_to_bc(node->func_call.arguments[i], block, ir, node->func_call.expr_types[i].type == T_POINTER);
	}
	i32 stack_offset = 0;
	i32 func = expression_to_bc(node->func_call.operand, block, ir, true);
	for(i64 i = 0; i < expr_count; ++i)
	{
		Register physical_register = reg_invalid;
		Type_Info *type = &node->func_call.expr_types[i];
		if(is_integer(*type)) {
			if(int_register_count != sizeof(int_register_order) / sizeof(Register)) {
				physical_register = int_register_order[int_register_count++];
			}
		}
		else if(is_float(*type)) {
			if(float_register_count != sizeof(float_register_order) / sizeof(Register)) {
				physical_register = float_register_order[float_register_count++];
			}
		}
		if(physical_register != reg_invalid) {
			instruction(physical_register, expressions[i], physical_register, BC_MOVE_REG_TO_REG, block, type);
		}
		else {
			instruction(stack_offset, expressions[i], -1, BC_PUSH_OFFSET, block, type);
			auto type_size = get_type_size(*type);
			stack_offset += type_size;
			ir->stack_top += type_size;
		}
	}
	instruction(func, reg_a, func, BC_MOVE_REG_TO_REG, block, &node->func_call.operand_type);
	instruction(func, -1, result, BC_CALL, block, node->func_call.operand_type.func.return_type);
	instruction(result, reg_a, result, BC_MOVE_REG_TO_REG, block, node->func_call.operand_type.func.return_type);
	return result;
}

i32
val_to_register(Interp_Val *val, IR *ir, IR_Block *block)
{
	Bytecode bc;
	bc.result = allocate_register(ir);
	Type_Info *typed = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	memcpy(typed, &val->type, sizeof(Type_Info));
	if(is_untyped(val->type))
		*typed = untyped_to_type(val->type);

	if(typed->type == T_INTEGER)
	{
		bc.op = BC_MOVE_VALUE_TO_REG;
		bc.big_idx = (u64)val->pointed;
	}
	else if(typed->type == T_FLOAT)
	{
		bc.op = BC_MOVE_FLOAT_TO_REG;
		if(val->type.primitive.size == real32) {
			f64 casted = (f64)val->_f32;
			bc.big_idx = *(u64 *)&casted;
		}
		else {
			bc.big_idx = (u64)val->pointed;
		}
	}
	else
	{
		Assert(false);
	}
	bc.type = typed;
	block->bc[block->bc_count++] = bc;
	return bc.result;
}

i32
load_variable(u8 *id, IR *ir, IR_Block *block, Type_Info *type)
{
	BC_OP op = BC_LOAD_STACK;
	i32 got = shget(ir->lookup, id);
	i32 result = -1;
	if(got == -1)
	{
		result = allocate_register(ir);
		op = BC_LOAD_DATA_SEG;
		got = shget(global_lookup, id);
		if(got == -1)
		{
			got = shget(func_table, id);
			Assert(got != -1);
			instruction(-1, got, result, BC_MOVE_FUNCTION_TO_REG, block, type);
			return result;
		}
		instruction(-1, got, result, op, block, type);
		return result;
	}
	else
	{
		auto ds = &ir->allocated[got];
		if(ds->virtual_register != -1) {
			result = ds->virtual_register;
		}
		else {
			result = allocate_register(ir);
			ds->virtual_register = result;
		}
	}
	Assert(result != -1);
	return result;
}

i32
load_pointer(u8 *id, IR *ir, IR_Block *block, Type_Info *type)
{
	BC_OP op = BC_LOAD_ADDRESS;
	auto got = shget(ir->lookup, id);
	if(got == -1)
	{
		op = BC_GLOBAL_ADDRESS;
		got = shget(global_lookup, id);
		if(got == -1)
		{
			op = BC_MOVE_FUNCTION_TO_REG;
			got = shget(func_table, id);
			Assert(got != -1);
		}
	}
	i32 result = allocate_register(ir);
	instruction(-1, got, result, op, block, type_64);
	return result;
}

i32
struct_get_offset_to_element_in_bytes(Type_Info *type, i32 index)
{
	auto members = type->structure.member_types;
	size_t memory_address = 0;
	size_t member_count = type->structure.member_count;
	size_t largest_member = 1;
	b32 is_packed = type->structure.is_packed;
	for(size_t i = 0; i < member_count; ++i)
	{
		if(i == index)
		{
			return memory_address;
		}
		size_t member_size = get_type_size(members[i]);
		size_t align_size = member_size;
		if(members[i].type == T_STRUCT)
		{
			align_size = get_struct_alignment(members[i]);
		}
		else if(members[i].type == T_ARRAY)
		{
			align_size = get_type_alignment(*members[i].array.type);
		}
		if(align_size > largest_member)
			largest_member = align_size;

		if(!is_packed && memory_address % align_size != 0)
		{
			size_t align_addr = (memory_address + align_size) - 
				(memory_address % align_size);
			member_size += align_addr - memory_address;
		}
		memory_address += member_size;
	}
	Assert(false);
}

i32
atom_expr_to_bc(Ast_Node *expr, IR_Block *block, IR *ir, b32 get_pointer)
{
	i32 result;
	switch((int)expr->type)
	{
		case type_identifier:
		{
			if(get_pointer)
				result = load_pointer(expr->identifier.name, ir, block, &expr->identifier.symbol_spot->type);
			else
				result = load_variable(expr->identifier.name, ir, block, &expr->identifier.symbol_spot->type);
		} break;
		case type_run:
		{
			result = val_to_register(&expr->run.ran_val, ir, block);
		} break;
		case type_func_call:
		{
			Assert(expr->func_call.operand_type.type == T_FUNC);
			result = call_function(ir, block, expr, (Call_Conv)expr->func_call.operand_type.func.calling_convention);
		} break;
		case type_selector:
		{
			result = allocate_register(ir);
			b32 derefrence_pointer = true;
			if(expr->selector.operand_type.type != T_POINTER) {
				derefrence_pointer = false;
			}
			i32 struct_start = expression_to_bc(expr->selector.operand, block, ir, !derefrence_pointer);
			i64 offset = struct_get_offset_to_element_in_bytes(&expr->selector.operand_type, expr->selector.selected_index);
			i32 offset_register = allocate_register(ir);

			// put the offset into a register
			instruction(offset, offset_register, BC_MOVE_VALUE_TO_REG, block, type_64);			
			// put the starting address of the struct into the result register
			instruction(result, struct_start, result, BC_MOVE_REG_TO_REG, block, type_64);
			// offset the pointer (it's really just a add instruction)
			instruction(result, offset_register, result, BC_OFFSET_POINTER, block, &expr->selector.selected_type);
			// derefrence the resulting pointer to get the member
			instruction(result, -1, result, BC_DEREFRENCE, block, &expr->selector.selected_type);
		} break;
		case type_literal:
		{
			// @TODO: this is pretty stupid but it works soooo
			b32 failed = false;
			Interp_Val val = interpret_expression(expr, &failed);
			Assert(!failed);
			result = val_to_register(&val, ir, block);
		} break;
		default:
		{
			Assert(false);
		} break;
	}
	return result;
}

i32
unary_expression_to_bc(Ast_Node *expr, IR_Block *block, IR *ir, b32 get_pointer)
{
	i32 result;
	if(expr->type == type_unary_expr)
	{
		//i32 expr_reg = expression_to_bc(expr->unary_expr.expression, block);
		switch((int)expr->unary_expr.op.type)
		{
			case '@':
			{
				i32 expr_reg = expression_to_bc(expr->unary_expr.expression, block, ir, true);
				return expr_reg;
			} break;
			case '*':
			{
				i32 expr_reg = expression_to_bc(expr->unary_expr.expression, block, ir, false);
				// I think you need to allocate a new register so that if you derefrence
				// a register which is keept as the register for a memory location you don't
				// overwrite it... probably
				result = allocate_register(ir); 
				instruction(expr_reg, -1, result, BC_DEREFRENCE, block, &expr->unary_expr.expr_type);
			} break;
			default:
			{
				LG_FATAL("Not implemented in bytecode");
				result = -1;
			} break;
		}
	}
	else if(expr->type == type_size)
	{
		int size = get_type_size(expr->size.operand_type);
		Interp_Val val;
		val._u64 = size;
		val.type.type = T_INTEGER;
		val.type.primitive.size = ubyte8;
		val.type.identifier = (u8 *)"u64";
		result = val_to_register(&val, ir, block);
	}
	else if(expr->type == type_cast)
	{
		Assert(false);
#if 0
		i32 to_cast = expression_to_bc(expr->cast.expression, block, ir, get_pointer);
		result = do_cast(to_cast, &expr->cast.expr_type, &expr->cast.type, ir);
#endif
	}
	else
		result = atom_expr_to_bc(expr, block, ir, get_pointer);
	return result;
}

i32
expression_to_bc(Ast_Node *expr, IR_Block *block, IR *ir, b32 get_pointer)
{
	if(expr->type != type_binary_expr) {	
		return unary_expression_to_bc(expr, block, ir, get_pointer);
	}

	i32 left  = expression_to_bc(expr->left, block, ir, get_pointer);
	i32 right = expression_to_bc(expr->right, block, ir, get_pointer);
	i32 result = allocate_register(ir);
	switch((int)expr->binary_expr.op)
	{
		case '+':
		{
			instruction(result, left, result, BC_MOVE_REG_TO_REG, block, &expr->binary_expr.left);
			if(expr->binary_expr.left.type == T_POINTER) {
				LG_FATAL("Pointer arithmetic is not implemented in bytecode");
			}
			else if(is_float(expr->binary_expr.left)) {
				instruction(result, right, result, BC_F_ADD, block, &expr->binary_expr.left);
			}
			else  {
				instruction(result, right, result, BC_ADD, block, &expr->binary_expr.left);
			}
		} break;
		case '-':
		{
			instruction(result, left, result, BC_MOVE_REG_TO_REG, block, &expr->binary_expr.left);
			if(is_float(expr->binary_expr.left)) {
				instruction(result, right, result, BC_F_SUB, block, &expr->binary_expr.left);
			}
			else {
				instruction(result, right, result, BC_SUB, block, &expr->binary_expr.left);
			}
		} break;
		case '*':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_F_MUL, block, &expr->binary_expr.left);
			}
			else {
				instruction(reg_a, left, result, BC_MOVE_REG_TO_REG, block, &expr->binary_expr.left);
				if(is_signed(expr->binary_expr.left))
						instruction(result, right, result, BC_I_MUL, block, &expr->binary_expr.left);
				else
						instruction(result, right, result, BC_U_MUL, block, &expr->binary_expr.left);
			}
		} break;
		case '/':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_F_DIV, block, &expr->binary_expr.left);
			}
			else {
				instruction(reg_a, left, result, BC_MOVE_REG_TO_REG, block, &expr->binary_expr.left);
				instruction(reg_c, right, right, BC_MOVE_REG_TO_REG, block, &expr->binary_expr.left);
				instruction(reg_d, reg_d, reg_d, BC_BIT_XOR, block, &expr->binary_expr.left);
				if(is_signed(expr->binary_expr.left)) {
					instruction(result, right, result, BC_I_DIV, block, &expr->binary_expr.left);
				}
				else {
					instruction(result, right, result, BC_U_DIV, block, &expr->binary_expr.left);
				}
			}
		} break;
		case '%':
		{
			if(is_float(expr->binary_expr.left))
			{
				Assert(false);
				//instruction(left, right, reg_d, BC_F_REM, block, &expr->binary_expr.left);
			}
			else
			{
				Assert(false);
				instruction(reg_a, left, result, BC_MOVE_REG_TO_REG, block, &expr->binary_expr.left);
				instruction(reg_c, right, right, BC_MOVE_REG_TO_REG, block, &expr->binary_expr.left);
				instruction(reg_d, reg_d, reg_d, BC_BIT_XOR, block, &expr->binary_expr.left);
				if(is_signed(expr->binary_expr.left)) {
					instruction(result, right, result, BC_I_REM, block, &expr->binary_expr.left);
				}
				else {
					instruction(result, right, result, BC_U_REM, block, &expr->binary_expr.left);
				}
			}
		} break;
		case tok_logical_is:
		{
			if(is_float(expr->binary_expr.left))
			{
				Assert(false);
			}
			else
			{
				instruction(left, right, result, BC_CMP_I_EQ, block, &expr->binary_expr.left);
			}
		} break;
		case tok_logical_isnot:
		{
			if(is_float(expr->binary_expr.left))
			{
				Assert(false);
			}
			else
			{
				instruction(left, right, result, BC_CMP_I_NEQ, block, &expr->binary_expr.left);
			}
		} break;
		case tok_logical_and:
		{
			// should be bool
			Assert(is_float(expr->binary_expr.left) == false);
			instruction(left, right, result, BC_CMP_LOGICAL_AND, block, &expr->binary_expr.left);
		} break;
		case tok_logical_or:
		{
			// should be bool
			Assert(is_float(expr->binary_expr.left) == false);
			instruction(left, right, result, BC_CMP_LOGICAL_OR, block, &expr->binary_expr.left);
		} break;
		case tok_bits_rshift:
		{
			if(is_signed(expr->binary_expr.left)) {
				instruction(left, right, result, BC_SAR, block, &expr->binary_expr.left);
			} else {
				instruction(left, right, result, BC_SLR, block, &expr->binary_expr.left);
			}
		} break;
		case tok_bits_lshift:
		{
			if(is_signed(expr->binary_expr.left)) {
				instruction(left, right, result, BC_SL, block, &expr->binary_expr.left);
			} else {
				instruction(left, right, result, BC_SL, block, &expr->binary_expr.left);
			}
		} break;
		case '<':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_FCMP_LESS_THAN, block, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, result, BC_CMP_I_LESS_THAN, block, &expr->binary_expr.left);
				} else {
					instruction(left, right, result, BC_CMP_U_LESS_THAN, block, &expr->binary_expr.left);
				}
			}
		} break;
		case '>':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_FCMP_GREATER_THAN, block, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, result, BC_CMP_I_GREATER_THAN, block, &expr->binary_expr.left);
				} else {
					instruction(left, right, result, BC_CMP_U_GREATER_THAN, block, &expr->binary_expr.left);
				}
			}
		} break;
		case tok_logical_gequal:
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_FCMP_GREATER_EQ, block, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, result, BC_CMP_I_GREATER_EQ, block, &expr->binary_expr.left);
				} else {
					instruction(left, right, result, BC_CMP_U_GREATER_EQ, block, &expr->binary_expr.left);
				}
			}
		} break;
		case tok_logical_lequal:
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_FCMP_LESS_EQ, block, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, result, BC_CMP_I_LESS_EQ, block, &expr->binary_expr.left);
				} else {
					instruction(left, right, result, BC_CMP_U_LESS_EQ, block, &expr->binary_expr.left);
				}
			}
		} break;
		case tok_bits_and:
		{
			instruction(left, right, result, BC_BIT_AND, block, &expr->binary_expr.left);
		} break;
		case tok_bits_xor:
		{
			instruction(left, right, result, BC_BIT_XOR, block, &expr->binary_expr.left);
		} break;
		case tok_bits_or:
		{
			instruction(left, right, result, BC_BIT_OR, block, &expr->binary_expr.left);
		} break;	
	}
	return result;
}

void
padd_to_alignment(i32 alignment, IR *ir)
{
	Data_Segment *previous = &ir->allocated[SDCount(ir->allocated) - 1];
	if((previous->position + previous->size) % alignment != 0) {

		i32 unaligned_position = previous->position + previous->size;
		i32 aligned_position = (unaligned_position + alignment) - (unaligned_position % alignment);

		Data_Segment align;
		align.init_val = 0;
		align.position = unaligned_position;
		align.size = aligned_position - unaligned_position;
		align.virtual_register = -1;
		SDPush(ir->allocated, align);
	}
}

i32
store_expression(Ast_Node *node, IR *ir, IR_Block *block, Type_Info *type, b32 should_align)
{
	if(should_align) {
		i32 alignment = get_type_alignment(*type);
		padd_to_alignment(alignment, ir);
	}

	if(node->type == type_struct_init)
	{
		Assert(type->type == T_STRUCT);

		auto expressions = node->struct_init.expressions;
		auto types = node->struct_init.type.structure.member_types;
		size_t count = SDCount(expressions);
		// Store them in reverse because we use a negative offset
		// on the stack, so we store -3, -2, -1, instead of -1, -2, -3
		// so it's correctly continuous in memory
		for(i64 i = count - 1; i >= 0; --i) {
			store_expression(expressions[i], ir, block, &types[i], !type->structure.is_packed);
		}
		return SDCount(ir->allocated) - 1;
	}
	else if(node->type == type_array_list)
	{
		Assert(false);
	}
	else
	{
		Assert(type->type != T_ARRAY && type->type != T_STRUCT);
		size_t idx = 0;
		size_t size = get_type_size(*type);
		size_t position = 0;
		if(ir->allocated == NULL || SDCount(ir->allocated) == 0)
			position = 0;
		else {
			size_t segment_size = SDCount(ir->allocated);
			idx = segment_size;
			auto last_segment = ir->allocated[segment_size - 1];
			position = last_segment.position + last_segment.size;
		}
		i32 expr_register = expression_to_bc(node, block, ir, false);
		Data_Segment allocation;
		allocation.init_val = 0;
		allocation.position = position;
		allocation.size     = size;
		allocation.virtual_register = expr_register;
		SDPush(ir->allocated, allocation);
		instruction(idx, expr_register, expr_register, BC_STORE, block, type);
		return SDCount(ir->allocated) - 1;
	}
}

void
assign_to_bc(Ast_Node *node, IR_Block *block, IR *ir)
{
	i32 result = store_expression(node->assignment.rhs, ir, block, &node->assignment.decl_type, true);
	if(node->assignment.is_declaration) {
		shput(ir->lookup, node->assignment.token.identifier, result);
	}
}

IR_Block *
ast_to_bc_func_level_list(Ast_Node **list, i32 *optional_index, IR_Block *optional_block, u8 *id, IR *ir, IR_Block *to_go)
{
	IR_Block *block = NULL;
	if(optional_block)
	{
		block = optional_block;
	}
	else
	{
		block = alloc_block(id, ir);
	}
	i32 current_block = SDCount(ir->blocks) - 1;
	auto statement_count = SDCount(list);
	if(optional_index)
	{
		i32 i = *optional_index;
		for(; i < statement_count; ++i)
		{
			ast_to_bc_func_level(list[i], block, list, &i, ir, to_go);
			*optional_index = i;
		}
	}
	else
	{
		for(i32 i = 0; i < statement_count; ++i)
		{
			ast_to_bc_func_level(list[i], block, list, &i, ir, to_go);
		}
	}
	return block;
}

IR_Block *
ast_to_bc_func_level_list(Ast_Node **list, i32 *optional_index, IR_Block *optional_block, const char *id, IR *ir, IR_Block *to_go)
{
	return ast_to_bc_func_level_list(list, optional_index, optional_block, (u8 *)id, ir, to_go);
}

IR
ast_to_bc_function(Ast_Node **list, Ast_Node *function)
{
	IR result = {};
	result.blocks = SDCreate(IR_Block*);
	result.allocated = SDCreate(Data_Segment);
	result.reg_count = reg_invalid + 1; // starting from here so we know that
					    // anything under is a physical register instead of a virtual one
	shdefault(result.lookup, -1);

	IR_Block *entry = alloc_block("entry", &result);
	instruction(reg_bp, -1, -1, BC_PUSH_REG, entry, type_64);
	instruction(reg_bp, reg_sp, reg_bp, BC_MOVE_REG_TO_REG, entry, type_64);
	ast_to_bc_func_level_list(list, NULL, entry, "entry", &result, NULL);

	u8 func_signature[1024] = {};
	i32 signature_size = vstd_sprintf((char *)func_signature, "\nfn %s -> %s:\n", function->function.identifier.name,
			var_type_to_name(function->function.type));
	platform_write_file(func_signature, signature_size, "0", false);
	size_t block_count = SDCount(result.blocks);

#if 1
	for(size_t i = 0; i < block_count; ++i)
	{
		platform_write_file(result.blocks[i]->id, vstd_strlen((char *)result.blocks[i]->id), "0", false);
		platform_write_file((void *)":\n", 2, "0", false);
		print_bytecode(&result, result.blocks[i]);
	}
#endif


	Virtual_Register_Tracker allocated[result.reg_count];
	for(size_t i = 0; i < result.reg_count; ++i)
	{
		allocated[i].in_memory = -1;
		allocated[i].in_register = reg_invalid;
	}
	for(size_t i = 0; i < block_count; ++i)
	{
		register_allocation_first_pass(&result, result.blocks[i], allocated);
		for(size_t i = 0; i < result.reg_count; ++i)
			allocated[i].in_register = reg_invalid;
	}

	for(size_t i = 0; i < block_count; ++i)
	{
		if(!result.blocks[i]->has_terminator)
			LG_ERROR("Block doesn't have a terminator: %s", result.blocks[i]->id);

	}

#if 0
	for(size_t i = 0; i < block_count; ++i)
	{
		platform_write_file(result.blocks[i]->id, vstd_strlen((char *)result.blocks[i]->id), "0", false);
		platform_write_file((void *)":\n", 2, "0", false);
		print_bytecode(&result, result.blocks[i]);
	}
#endif

	return result;
}

void
bc_branch(IR_Block *from, IR_Block *to)
{
	if(from && to && !from->has_terminator && to)
	{
		set_terminator(from);
		instruction((u64)to, -1, BC_JUMP, from, NULL);
	}
}

void
bc_cond_branch(i32 expression_register, IR_Block *from, IR_Block *_true, IR_Block *_false)
{
	instruction((u64)_true, expression_register, BC_COND_JUMP, from, NULL);
	bc_branch(from, _false);
}

IR_Block *
if_to_bc(IR *ir, IR_Block *block, Ast_Node *node, i32 *idx, Ast_Node **list, IR_Block *to_go)
{
	IR_Block *block_true = alloc_block("if.true", ir);
	IR_Block *block_aftr = alloc_block("if.aftr", ir);
	IR_Block *block_else = NULL;

	*idx += 1;
	auto body = list[*idx];
	Assert(body->type == type_scope_start); 
	ast_to_bc_func_level_list(body->scope_desc.body->statements.list, NULL, block_true, "if.true", ir, block_aftr);

	*idx += 1;
	auto else_node = list[*idx];
	if(else_node->type == type_else)
	{
		*idx += 1;
		auto else_body = list[*idx];
		*idx += 1;
		Assert(else_body->type == type_scope_start);
		block_else = ast_to_bc_func_level_list(else_body->scope_desc.body->statements.list, NULL, NULL, "if.else", ir, block_aftr);
	}

	{
		ast_to_bc_func_level_list(list, idx, block_aftr, "if.aftr", ir, to_go);
		bc_branch(block_aftr, to_go);
	}

	i32 evaluation = expression_to_bc(node->condition.expr, block, ir, false);
	bc_cond_branch(evaluation, block, block_true, block_else ? block_else : block_aftr);
	return block_aftr;
}

IR_Block *
ast_to_bc_func_level(Ast_Node *node, IR_Block *current_block, Ast_Node **list, i32 *optional_index, IR *ir, IR_Block *to_go)
{
	IR_Block *result = NULL;
	switch((int)node->type)
	{
		case type_assignment:
		{
			assign_to_bc(node, current_block, ir);
		} break;
		case type_if:
		{
			result = if_to_bc(ir, current_block, node, optional_index, list, to_go);
		} break;
		case type_return:
		{
			i32 ret_reg = expression_to_bc(node->ret.expression, current_block, ir, false);
			instruction(ret_reg, -1, -1, BC_RETURN, current_block, &node->ret.expression_type);
			set_terminator(current_block);
		} break;
	}
	return result;
}

#if 0
i32
do_cast(i32 source, Type_Info *from, Type_Info *to, IR *ir)
{
	if(from->type == T_UNTYPED_INTEGER)
	{
		from->type = T_INTEGER;
		from->primitive.size = byte8;
		from->identifier = (u8 *)"i64";
	}
	else if(from->type == T_UNTYPED_FLOAT)
	{
		from->type = T_FLOAT;
		from->primitive.size = real64;
		from->identifier = (u8 *)"f64";
	}
	Type_Type from_type = from->type;
	Type_Type to_type = to->type;
	Bytecode bc;
	switch(from_type)
	{
		case T_INTEGER:
		{
			if(is_signed(*from))
			{
				switch(to_type)
				{
					case T_INTEGER:
					{
						if(is_signed(*to))
						{
							if(from->primitive.size < to->primitive.size)
							{
								bc.op = BC_CAST_SEXT;
							}
							else if(from->primitive.size > to->primitive.size)
							{
								bc.op = BC_CAST_TRUNC;
							}
							else
							{
								bc.op = BC_NO_OP;
							}
						}
						else
						{
							if(from->primitive.size < to->primitive.size)
							{
								bc.op = BC_CAST_SEXT;
							}
							else if(from->primitive.size > to->primitive.size)
							{
								bc.op = BC_CAST_TRUNC;
							}
							else
							{
								bc.op = BC_NO_OP;
							}
						}
					} break;
					case T_FLOAT:
					{
						if(to->primitive.size == real64)
							bc.op = BC_CAST_I_TO_D;
						else
							bc.op = BC_CAST_I_TO_F;
					} break;
					default:
					{
						Assert(false);
					} break;
				}
			}
			else
			{
				switch(to_type)
				{
					case T_INTEGER:
					{
						if(is_signed(*to))
						{
							if(from->primitive.size < to->primitive.size)
							{
								bc.op = BC_CAST_ZEXT;
							}
							else if(from->primitive.size > to->primitive.size)
							{
								bc.op = BC_CAST_TRUNC;
							}
							else
							{
								bc.op = BC_NO_OP;
							}
						}
						else
						{
							if(from->primitive.size < to->primitive.size)
							{
								bc.op = BC_CAST_SEXT;
							}
							else if(from->primitive.size > to->primitive.size)
							{
								bc.op = BC_CAST_TRUNC;
							}
							else
							{
								bc.op = BC_NO_OP;
							}
						}
					} break;
					case T_FLOAT:
					{
						if(to->primitive.size == real64)
							bc.op = BC_CAST_U_TO_D;
						else
							bc.op = BC_CAST_U_TO_F;
					} break;
					case T_POINTER:
					{
						bc.op = BC_NO_OP;
					} break;
					default:
					{
						Assert(false);
					} break;
				}
			}
		} break;
		case T_FLOAT:
		{
			switch(to_type)
			{
				case T_INTEGER:
				{
					if(from->primitive.size == real32)
						bc.op = BC_CAST_F_TO_I;
					else
						bc.op = BC_CAST_D_TO_I;
				} break;
				case T_FLOAT:
				{
					if(from->primitive.size < to->primitive.size)
						bc.op = BC_CAST_F_EXT;
					else if(from->primitive.size > to->primitive.size)
						bc.op = BC_CAST_F_TRUNC;
					else
						bc.op = BC_NO_OP;
				} break;
			}
		} break;
		case T_BOOLEAN:
		{
			Assert(false);
		} break;
		case T_POINTER:
		{
			Assert(false);
		} break;
		default:
		{
			Assert(false);
		} break;
	}
	bc.left_idx = get_type_size(*to);
	bc.right_idx= source;
	bc.result = allocate_register(ir);
	SDPush(ir->bc, bc);
	return bc.result;
}
#endif

void
move_virtual_reg_to_physical(i32 virtual_register, Register physical_register, Virtual_Register_Tracker *allocated, Register_Allocation_Tracker *trackers,
		Bytecode *new_bc, size_t *new_count, IR *ir, Type_Info *type)
{
	
	Register reg = allocated[virtual_register].in_register;
	if(reg != reg_invalid)
	{
		trackers[reg].current_virtual_register = -1;
	}
	if(trackers[physical_register].current_virtual_register != -1)
	{
		i32 old_virtual_register = trackers[physical_register].current_virtual_register;
		allocated[old_virtual_register].in_register = reg_invalid;
		if(allocated[old_virtual_register].in_memory == -1)
		{
			Bytecode bc;
			bc.op = BC_STORE;
			bc.left_idx = SDCount(ir->allocated);
			bc.right_idx = physical_register;
			bc.type = type;
			bc.result = physical_register;
			new_bc[*new_count] = bc;
			*new_count += 1;
			allocated[old_virtual_register].in_memory = bc.left_idx;

			i32 position = ir->allocated[bc.left_idx - 1].position + ir->allocated[bc.left_idx - 1].size;
			Data_Segment item = {0, (u64)get_type_size(*type), position};
			SDPush(ir->allocated, item);
		}
	}
	trackers[physical_register].last_updated++;
	trackers[physical_register].current_virtual_register = virtual_register;
	allocated[virtual_register].in_register = physical_register;
}

i32
perform_physical_register_allocation(Bytecode *new_bc, size_t *new_count, Register_Allocation_Tracker *trackers,
		Virtual_Register_Tracker *allocated, i32 to_allocate_virtual_register, IR *ir, Type_Info *type,
		i32 wanted_register)
{
	for(i32 i = reg_a; i < reg_b; ++i)
	{
		Register reg = (Register)i;
		if(trackers[reg].current_virtual_register == -1)
		{
			if(wanted_register != -1 && wanted_register != reg)
				continue;
			trackers[reg].current_virtual_register = to_allocate_virtual_register;
			allocated[to_allocate_virtual_register].in_register = reg;
			return reg;
		}
	}

	// Find the physical register that hasn't been
	// update in the longest time
	Register oldest_update = reg_a;
	i32 oldest_update_value = trackers[reg_a].last_updated;
	if(wanted_register == -1)
	{
		for(i32 i = reg_a; i < reg_b; ++i)
		{
			Register reg = (Register)i;
			if(trackers[reg].last_updated < oldest_update_value)
			{
				oldest_update = reg;
				oldest_update_value = trackers[reg].last_updated;
			}
		}
	}
	else oldest_update = (Register)wanted_register;
	i32 old_v_reg = trackers[oldest_update].current_virtual_register;
	trackers[oldest_update].current_virtual_register = to_allocate_virtual_register;
	trackers[oldest_update].last_updated++;

	allocated[old_v_reg].in_register = reg_invalid;
	if(allocated[old_v_reg].in_memory == -1)
	{
		Bytecode bc;
		bc.op = BC_STORE;
		bc.left_idx = SDCount(ir->allocated);
		bc.right_idx = oldest_update;
		bc.type = type;
		bc.result = oldest_update;
		new_bc[*new_count] = bc;
		*new_count += 1;
		allocated[old_v_reg].in_memory = bc.left_idx;

		i32 position = ir->allocated[bc.left_idx - 1].position + ir->allocated[bc.left_idx - 1].size;
		Data_Segment item = {0, (u64)get_type_size(*type), position};
		SDPush(ir->allocated, item);
	}
	//Assert(allocated[to_allocate_virtual_register].in_memory != -1);
	return oldest_update;
}

inline void
check_and_do_register_allocation(i32 *virtual_register, Virtual_Register_Tracker *allocated, Register_Allocation_Tracker *trackers,
		Bytecode *new_bc, size_t *new_count, IR *ir, b32 is_result, Type_Info *type, i32 wanted_register)
{
	if(*virtual_register >= reg_invalid)
	{
		if(allocated[*virtual_register].in_register != reg_invalid)
		{
			if(wanted_register != -1 && wanted_register != allocated[*virtual_register].in_register)
			{
				if(allocated[*virtual_register].in_register != reg_invalid)
				{
					trackers[allocated[*virtual_register].in_register].current_virtual_register = -1;
					allocated[*virtual_register].in_register = reg_invalid;
				}
				check_and_do_register_allocation(virtual_register, allocated, trackers, new_bc, new_count, ir, is_result, type, wanted_register);
			}
			else
			{
				*virtual_register = allocated[*virtual_register].in_register;
			}
		}
		else if(allocated[*virtual_register].in_memory != -1)
		{
			i32 saved_register = ir->allocated[allocated[*virtual_register].in_memory].virtual_register;
			if(allocated[saved_register].in_register != reg_invalid) {
				*virtual_register = allocated[saved_register].in_register;
				return;
			}
			Bytecode bc;
			bc.op = BC_LOAD_STACK;
			bc.left_idx = -1;
			bc.right_idx = allocated[*virtual_register].in_memory;
			bc.result = perform_physical_register_allocation(new_bc, new_count, trackers, allocated, *virtual_register, ir, type, wanted_register);
			bc.type = type;
			new_bc[*new_count] = bc;
			*new_count += 1;
			allocated[*virtual_register].in_register = (Register)bc.result;
			*virtual_register = bc.result;
		}
		else
		{
			*virtual_register = perform_physical_register_allocation(new_bc, new_count, trackers, allocated, *virtual_register, ir, type, wanted_register);
		}
	}
	else if(is_result) {
		i32 actual_v_reg = trackers[*virtual_register].current_virtual_register;
		if(actual_v_reg == -1)
			return;
		if(allocated[actual_v_reg].in_memory == -1)
		{
			Bytecode bc;
			bc.op = BC_STORE;
			bc.left_idx = SDCount(ir->allocated);
			bc.right_idx = *virtual_register; // @Note: this register is not actually virtual
			bc.type = type_64;
			bc.result = *virtual_register;
			new_bc[*new_count] = bc;
			*new_count += 1;
			allocated[actual_v_reg].in_memory = bc.left_idx;

			i32 position = ir->allocated[bc.left_idx - 1].position + ir->allocated[bc.left_idx - 1].size;
			Data_Segment item = {0, (u64)get_type_size(*type), position};
			SDPush(ir->allocated, item);
		}
		allocated[actual_v_reg].in_register = reg_invalid;
	}
}

void
register_allocation_first_pass(IR *ir, IR_Block *block, Virtual_Register_Tracker *allocated)
{
	Register_Allocation_Tracker trackers[reg_invalid];
	for(size_t i = 0; i < reg_invalid; ++i)
	{
		trackers[i].current_virtual_register = -1;
		trackers[i].last_updated = 0;
	}

	size_t bc_count = block->bc_count;
	Bytecode *new_bc = (Bytecode *)AllocateCompileMemory(bc_count * sizeof(Bytecode) * 3);
	size_t new_count = 0;
	size_t i = 0;

	if(vstd_strcmp((char *)block->id, (char *)"entry")) {
		// Copy the stack manipulation instructions
		new_bc[new_count++] = block->bc[i++];
		new_bc[new_count++] = block->bc[i++];

		if(ir->stack_top != 0) {
			// Subtract the necessary amount of space
			// so when we push on the stack we don't overwrite the 
			// memory stored with stack_pointer - offset
			out_instruction(ir->stack_top, reg_a, BC_MOVE_VALUE_TO_REG, new_bc, &new_count, type_64);
			out_instruction(reg_sp, reg_a, reg_sp, BC_SUB, new_bc, &new_count, type_64);
		}
	}
	
	for(; i < bc_count; ++i)
	{
		Bytecode bc = block->bc[i];
		if(bc.op == BC_LOAD_STACK)
		{
			i32 virtual_register = -1;
			for(size_t i = reg_a; i < reg_b; ++i)
			{
				i32 current_register = trackers[i].current_virtual_register;
				if(current_register != -1 && allocated[current_register].in_memory == bc.right_idx && allocated[current_register].in_register != reg_invalid)
				{
					virtual_register = trackers[i].current_virtual_register;
					break;
				}
			}
			if(virtual_register != -1)
			{
				// instruction eliminated
				allocated[bc.result] = allocated[virtual_register];
				//allocated[virtual_register].in_register = reg_invalid;
				trackers[allocated[bc.result].in_register].current_virtual_register = bc.result;
			}
		}
		else if(bc.op != BC_MOVE_VALUE_TO_REG && bc.op != BC_MOVE_FLOAT_TO_REG && bc.op != BC_MOVE_FUNCTION_TO_REG && bc.op != BC_COND_JUMP && bc.op != BC_JUMP)
		{
			if(bc.op == BC_STORE)
			{
				allocated[bc.right_idx].in_memory = bc.left_idx;
			}
			else if(bc.left_idx != -1)
			{
				check_and_do_register_allocation(&bc.left_idx, allocated, trackers, new_bc, &new_count, ir, false, bc.type, -1);
			}
			if(bc.right_idx != -1 && bc.op != BC_LOAD_STACK && bc.op != BC_LOAD_DATA_SEG && bc.op != BC_MOVE_FUNCTION_TO_REG)
			{
				check_and_do_register_allocation(&bc.right_idx, allocated, trackers, new_bc, &new_count, ir, false, bc.type, -1);
			}
		}
		if(bc.result != -1)
		{
			if(bc.op == BC_MOVE_REG_TO_REG)
			{
				move_virtual_reg_to_physical(bc.result, (Register)bc.left_idx, allocated, trackers, new_bc, &new_count, ir, bc.type);
				bc.result = bc.left_idx;
			}
			else
			{
				u32 was = bc.result;
				if(bc.op == BC_LOAD_STACK)
					bc.result = ir->allocated[bc.right_idx].virtual_register;
				check_and_do_register_allocation(&bc.result, allocated, trackers, new_bc, &new_count, ir, true, bc.type, -1);

				allocated[was].in_register = (Register)bc.result;
				trackers[bc.result].current_virtual_register = was;
				trackers[bc.result].last_updated++;
			}
		}
		new_bc[new_count++] = bc;
	}

#if 0
	// @TODO: this is a hack
	// @TODO: this is a hack
	// @TODO: this is a hack
	for(i32 i = 0; i < new_count; ++i)
	{
		if(new_bc[i].op == BC_LOAD_STACK)
		{
			if(i + 1 < new_count && new_bc[i + 1].op == BC_LOAD_STACK)
			{
				if(new_bc[i].right_idx == new_bc[i+1].right_idx)
					new_bc[i].op = BC_NO_OP;
			}
		}
	}
#endif
	block->bc = new_bc;
	block->bc_count = new_count;
}

const char *
register_to_name(i32 reg_in)
{
	Register reg = (Register)reg_in;
	switch(reg)
	{
		case reg_a:
		return "r_a";
		case reg_b:
		return "r_b";
		case reg_c:
		return "r_c";
		case reg_d:
		return "r_d";
		case reg_bp:
		return "r_bp";
		case reg_sp:
		return "r_sp";
		case reg_si:
		return "reg_si";
		case reg_di:
		return "reg_di";
		case reg_invalid:
		Assert(false);
		default:
		{
			void *buffer = AllocatePermanentMemory(12);
			_vstd_IntToStr(reg_in, (char *)buffer);
			return (const char *)buffer;
		} break;
	}
}

void
print_bytecode(IR *ir, IR_Block *block)
{
	size_t bc_count = block->bc_count;
	size_t to_allocate = 128 * bc_count;
	char *buffer = (char *)AllocatePermanentMemory(to_allocate);
	size_t buffer_size = 0;
	for(size_t i = 0; i < bc_count; ++i)
	{
		Bytecode bc = block->bc[i];
		switch(bc.op)
		{
			case BC_CMP_I_NEQ:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t %s != %s\n", register_to_name(bc.result), register_to_name(bc.left_idx), register_to_name(bc.right_idx));
			} break;
			case BC_CMP_I_EQ:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t %s == %s\n", register_to_name(bc.result), register_to_name(bc.left_idx), register_to_name(bc.right_idx));
			} break;
			case BC_CMP_LOGICAL_AND:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t %s && %s\n", register_to_name(bc.result), register_to_name(bc.left_idx), register_to_name(bc.right_idx));
			} break;
			case BC_CMP_LOGICAL_OR:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t %s || %s\n", register_to_name(bc.result), register_to_name(bc.left_idx), register_to_name(bc.right_idx));
			} break;
			case BC_CMP_LOGICAL_NOT:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t ! %s\n", register_to_name(bc.result), register_to_name(bc.left_idx));
			} break;
			case BC_JUMP:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "JUMP %s\n", ((IR_Block *)bc.big_idx)->id);
			} break;
			case BC_COND_JUMP:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "IF %s JUMP %s\n", register_to_name(bc.result), ((IR_Block *)bc.big_idx)->id);
			} break;
			case BC_OFFSET_POINTER:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t OFFSET %s BY %s\n", register_to_name(bc.result), register_to_name(bc.left_idx), register_to_name(bc.right_idx));
			} break;
			case BC_DEREFRENCE:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t DEREFRENCE %s\n", register_to_name(bc.result), register_to_name(bc.left_idx));
			} break;
			case BC_MOVE_FUNCTION_TO_REG:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t MOVE FUNCTION [ID: %d]\n", register_to_name(reg_a), bc.right_idx);
			} break;
			case BC_STORE:
			{
				auto ds = ir->allocated[bc.left_idx];
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t STORE [%X] %s\n", register_to_name(bc.result), ds.position, register_to_name(bc.right_idx));
			} break;
			case BC_CALL:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t CALL %s\n", register_to_name(reg_a), register_to_name(reg_a));
			} break;
			case BC_PUSH_OFFSET:
			{
				auto ds = ir->allocated[bc.left_idx];
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t STORE [+%X] %s\n",register_to_name(bc.result), ds.position, register_to_name(bc.right_idx));
			} break;
			case BC_MOVE_VALUE_TO_REG:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t MOVE %X\n", register_to_name(bc.result), bc.big_idx);
			} break;
			case BC_MOVE_FLOAT_TO_REG:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t MOVE %f\n", register_to_name(bc.result), bc.big_idx);
			} break;
			case BC_MOVE_REG_TO_REG:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t MOVE %s\n", register_to_name(bc.left_idx), register_to_name(bc.right_idx));
			} break;
			case BC_PUSH_REG:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "\t PUSH %s\n", register_to_name(bc.left_idx));
			} break;
			case BC_POP_REG:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "\t POP %s\n", register_to_name(bc.left_idx));
			} break;
			case BC_GLOBAL_ADDRESS:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s\t GLOBAL ADDRESS %d\n", register_to_name(bc.result), bc.right_idx);
			} break;
			case BC_LOAD_ADDRESS:
			{
				auto ds = ir->allocated[bc.right_idx];
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s\t ADDRESS %X\n", register_to_name(bc.result), ds.position);
			} break;
			case BC_LOAD_STACK:
			{
				auto ds = ir->allocated[bc.right_idx];
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t LOAD [%X]\n", register_to_name(bc.result), ds.position);
			} break;
			case BC_LOAD_DATA_SEG:
			{
				auto ds = ir->allocated[bc.right_idx];
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t LOAD GLOBAL [%X]\n", register_to_name(bc.result), ds.position);
			} break;
			case BC_LOAD_MEMORY:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t DEREFRENCE %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_ADD:
			case BC_F_ADD:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t ADD %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_SUB:
			case BC_F_SUB:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t SUB %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_U_MUL:
			case BC_I_MUL:
			case BC_F_MUL:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t MUL %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_U_DIV:
			case BC_I_DIV:
			case BC_F_DIV:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t DIV %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_I_REM:
			case BC_U_REM:
			case BC_F_REM:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t REM %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_SLR:
			case BC_SAR:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t RSHIFT %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_SL:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t LSHIFT %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_FCMP_LESS_THAN:
			case BC_CMP_U_LESS_THAN:
			case BC_CMP_I_LESS_THAN:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t %s < %s\n", register_to_name(bc.result), register_to_name(bc.left_idx), register_to_name(bc.right_idx));
			} break;
			case BC_FCMP_GREATER_THAN:
			case BC_CMP_U_GREATER_THAN:
			case BC_CMP_I_GREATER_THAN:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t %s > %s\n", register_to_name(bc.result), register_to_name(bc.left_idx), register_to_name(bc.right_idx));
			} break;
			case BC_FCMP_LESS_EQ:
			case BC_CMP_U_LESS_EQ:
			case BC_CMP_I_LESS_EQ:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t %s <= %s\n", register_to_name(bc.result), register_to_name(bc.left_idx), register_to_name(bc.right_idx));
			} break;
			case BC_FCMP_GREATER_EQ:
			case BC_CMP_U_GREATER_EQ:
			case BC_CMP_I_GREATER_EQ:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t %s >= \%s\n", register_to_name(bc.result), register_to_name(bc.left_idx), register_to_name(bc.right_idx));
			} break;
			case BC_BIT_AND:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t AND %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_BIT_XOR:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t XOR %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_BIT_OR:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t OR %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_RETURN:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "RETURN %s\n", register_to_name(bc.left_idx));
			} break;
			case BC_CAST_SEXT:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CAST SEXT %s TO %s\n", register_to_name(bc.left_idx), register_to_name(bc.result));
			} break;
			case BC_CAST_ZEXT:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CAST ZEXT %s TO %s\n", register_to_name(bc.left_idx), register_to_name(bc.result));
			} break;
			case BC_CAST_I_TO_F:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CAST I_TO_F %s TO %s\n", register_to_name(bc.left_idx), register_to_name(bc.result));
			} break;
			case BC_CAST_U_TO_F:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CAST U_TO_F %s TO %s\n", register_to_name(bc.left_idx), register_to_name(bc.result));
			} break;
			case BC_CAST_I_TO_D:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CAST I_TO_D %s TO %s\n", register_to_name(bc.left_idx), register_to_name(bc.result));
			} break;
			case BC_CAST_U_TO_D:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CAST U_TO_D %s TO %s\n", register_to_name(bc.left_idx), register_to_name(bc.result));
			} break;
			case BC_CAST_F_TO_I:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CAST F_TO_I %s TO %s\n", register_to_name(bc.left_idx), register_to_name(bc.result));
			} break;
			case BC_CAST_D_TO_I:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CAST D_TO_I %s TO %s\n", register_to_name(bc.left_idx), register_to_name(bc.result));
			} break;
			case BC_CAST_TRUNC:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CAST TRUNC %s TO %s\n", register_to_name(bc.left_idx), register_to_name(bc.result));
			} break;
			case BC_CAST_F_TRUNC:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CAST F_TRUNC %s TO %s\n", register_to_name(bc.left_idx), register_to_name(bc.result));
			} break;
			case BC_CAST_F_EXT:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CAST F_EXT %s TO %s\n", register_to_name(bc.left_idx), register_to_name(bc.result));
			} break;
			case BC_NO_OP:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "NO OP\n");
			} break;
			case BC_INVALID:
			{
				Assert(false);
				buffer_size += vstd_sprintf(buffer + buffer_size, "INVALID OP\n");
			} break;
		}
	}
	platform_write_file(buffer, buffer_size, "0", false);
}

