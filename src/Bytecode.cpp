#include <Bytecode.h>
#include <Type.h>
#include <platform/platform.h>
#include <Parser.h>

static Type_Info *type_64;
static Type_Info *type_32;
static Type_Info *type_16;
static Type_Info *type_u8;
static Type_Info *str_type;
//static Data_Segment_Table *global_lookup;
static i32 *overload_table;
static Type_Info *ptr_type;
static i32 CALL_MEMCPY_INTRIN;

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

IR **
ast_to_bytecode(File_Contents **files)
{
	i32 func_count = 0;
	i32 overload_count = 0;
	auto file_count = SDCount(files);
	LOOP_FILES {
		File_Contents *f = files[file_idx];
		func_count += SDCount(f->functions);
	}

	LOOP_FILES {
		File_Contents *f = files[file_idx];
		func_count += SDCount(f->overloads);
	}

	CALL_MEMCPY_INTRIN = func_count + overload_count;

	type_64 = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	type_64->type = T_INTEGER;
	type_64->primitive.size = byte8;
	type_64->identifier = (u8 *)"i64";

	type_32 = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	type_32->type = T_INTEGER;
	type_32->primitive.size = byte4;
	type_32->identifier = (u8 *)"i32";

	type_16 = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	type_16->type = T_INTEGER;
	type_16->primitive.size = byte2;
	type_16->identifier = (u8 *)"i16";

	type_u8 = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	type_u8->type = T_INTEGER;
	type_u8->primitive.size = byte1;
	type_u8->identifier = (u8 *)"u8";

	str_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	str_type->type = T_POINTER;
	str_type->pointer.type = type_u8;
	str_type->identifier = (u8 *)"* u8";

	ptr_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	ptr_type->type = T_POINTER;
	ptr_type->pointer.type = type_64;

	IR **result = SDCreate(IR *);
	IR first = {};
	first.allocated = SDCreate(Data_Segment);
	first.reg_count = reg_invalid + 1; // starting from here so we know that
					   // anything under is a physical register instead of a virtual one
	first.blocks = SDCreate(IR_Block *);
	alloc_block("global_block", &first);
	// @NOTE: maybe not needed since we are at global scope?
	SDPush(result, first);

	LOOP_FILES {
		File_Contents *f = files[file_idx];
		auto ir = SDCreate(IR);
		ast_to_bc_file_level_list(f, f->ast_root->statements.list, ir);
		SDPush(result, ir);
	}
	
	return result;
}

void
ast_to_bc_file_level_list(File_Contents *f, Ast_Node **list, IR *ir)
{
	size_t count = SDCount(list);
	for(size_t i = 0; i < count; ++i) {
		ast_to_bc_file_level(f, list[i], &ir[0], false);
	}

	for(size_t i = 0; i < count; ++i) {
		ast_to_bc_file_level(f, list[i], ir, true);
	}
}

void
ast_to_bc_file_level(File_Contents *f, Ast_Node *node, IR *ir, b32 gen_func)
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
			auto size = get_type_size(*value.type);
			global_var.init_val = (u64)value.pointed;
			global_var.size = size;
			SDPush(ir->allocated, global_var);
			shput(global_lookup, node->assignment.token.identifier, SDCount(ir->allocated) - 1);
		} break;
		case type_func:
		{
			if(gen_func) {
				IR next;
				if(node->function.body)
				{
					next = ast_to_bc_function(
							f, node->function.body->scope_desc.body->statements.list,
							node
						);
				}
				else
				{
					next = {};
				}
				SDPush(ir, next);
			}

		} break;
		case type_overload:
		{
			if(gen_func) {
				IR next;
				Assert(node->overload.function->function.body);
				next = ast_to_bc_function(f,
						node->overload.function->function.body->scope_desc.body->statements.list,
						node->overload.function);
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
bc_create_context(IR *ir)
{
	i32 idx = allocate_stack_space(ir, 16);
	return idx;
}

void
call_memcpy(IR *ir, IR_Block *block, i32 src_addr, i32 dst_addr, i32 size)
{
	i32 memcpy_register = allocate_register(ir);
	i32 size_register = allocate_register(ir);
	instruction(-1, CALL_MEMCPY_INTRIN, memcpy_register, BC_MOVE_FUNCTION_TO_REG, block, ptr_type);

	// put things into the right registers
	instruction(size, size_register, BC_MOVE_VALUE_TO_REG, block, type_64);

	i32 *expressions = (i32 *)AllocateCompileMemory(sizeof(i32) * 3);
	expressions[0] = dst_addr;
	expressions[1] = src_addr;
	expressions[2] = size_register;

	Type_Info **expr_types = (Type_Info **)AllocateCompileMemory(sizeof(void *) * 3);
	expr_types[0] = type_64;
	expr_types[1] = type_64;
	expr_types[2] = type_64;
	

	BC_Func_Call *call = (BC_Func_Call *)AllocatePermanentMemory(sizeof(BC_Func_Call));
	call->func_register = memcpy_register;
	call->expressions = expressions;
	call->expr_count = 3;
	call->expr_types = expr_types;
	instruction((u64)call, -1, BC_CALL, block, type_64);
}

i32
copy_memory(IR *ir, IR_Block *block, i32 src_register, i32 size)
{
	i32 dst_register = allocate_register(ir);
	i32 idx = allocate_stack_space(ir, size);
	ir->allocated[idx].virtual_register = dst_register;
	instruction(-1, idx, dst_register, BC_LOAD_ADDRESS, block, ptr_type);
	call_memcpy(ir, block, src_register, dst_register, size);
	return dst_register;
}

i32
bc_get_callee_maybe_overloaded(File_Contents *f, Ast_Node *call_node, IR_Block *block, IR *ir)
{
	if(call_node->func_call.overload_name)
	{
		i32 function = load_pointer(f, call_node->func_call.overload_name, ir, block, &call_node->func_call.operand_type);
		return function;
	}
	else
	{
		i32 function = expression_to_bc(f, call_node->func_call.operand, block, ir, true);
		return function;
	}

}

Type_Info *
size_to_type(int size)
{
	switch(size)
	{
		case 1:
		{
			return type_u8;
		} break;
		case 2:
		{
			return type_16;
		} break;
		case 4:
		{
			return type_32;
		} break;
		case 8:
		{
			return type_64;
		} break;
	}
	Assert(false);
}

i32
call_function(File_Contents *f, IR *ir, IR_Block *block, Ast_Node *node, Call_Conv conv)
{
	i32 expr_count = SDCount(node->func_call.arguments);
	// + 1 incase we need to pass the context
	i32 *expressions = (i32 *)AllocateCompileMemory(sizeof(i32) * (expr_count + 1));

	Type_Info ret_type = {};
	b32 is_apoc = conv == CALL_APOC;
	b32 ret_ptr = false;
	if(get_type_size(*node->func_call.operand_type.func.return_type) > 8)
	{
		ret_type = *node->func_call.operand_type.func.return_type;
		node->func_call.operand_type.func.return_type->type = T_VOID;
		node->func_call.operand_type.func.return_type->identifier = (u8 *)"void";
		ret_ptr = true;
	}

	auto expr_types = (Type_Info **)AllocateCompileMemory(sizeof(void *) * (expr_count + (is_apoc ? 1 : 0)));
	i32 ret_address = -1;
	
	if(is_apoc)
	{
		i32 context_idx = bc_create_context(ir);

		i32 context_ptr = allocate_register(ir);
		instruction(-1, context_idx, context_ptr, BC_LOAD_ADDRESS, block, ptr_type);
		if(ret_ptr)
		{

			i32 ret_idx = allocate_stack_space(ir, get_type_size(ret_type));
			ret_address = allocate_register(ir);
			ir->allocated[ret_idx].virtual_register = ret_address;
			instruction(-1, ret_idx, ret_address, BC_LOAD_ADDRESS, block, ptr_type);
			do_store_instruction(context_idx, ret_address, ret_address, block, ptr_type, false);
		}
		
		expressions[0] = context_ptr;
		expr_types[0] = ptr_type;
		for(i64 i = 0; i < expr_count; ++i)
		{
			if(node->func_call.expr_types[i].type == T_STRUCT || node->func_call.expr_types[i].type == T_ARRAY)
			{
				if(!is_standard_size(&node->func_call.expr_types[i]))
				{
					expressions[i + 1] = copy_memory(ir, block, expression_to_bc(f, node->func_call.arguments[i], block, ir, true),
							get_type_size(node->func_call.expr_types[i]));
					expr_types[i + 1] = ptr_type;
				}
				else
				{
					// @NOTE: this means that the struct can be loaded into a register
					i32 type_size = get_type_size(node->func_call.expr_types[i]);
					Type_Info *fake_type = size_to_type(type_size);
					i32 address_register = allocate_register(ir);
					expressions[i + 1] = allocate_register(ir);
					address_register = expression_to_bc(f, node->func_call.arguments[i], block, ir, true);
					instruction(address_register, -1, expressions[i + 1], BC_DEREFRENCE, block, fake_type);
					expr_types[i + 1] = fake_type;
				}
			}
			else
			{
				expressions[i + 1] = expression_to_bc(f, node->func_call.arguments[i], block, ir, false);
				expr_types[i + 1] = &node->func_call.expr_types[i];
			}
		}
		expr_count++;
	}
	else
	{
		for(i64 i = 0; i < expr_count; ++i)
		{
			if(node->func_call.expr_types[i].type == T_STRUCT || node->func_call.expr_types[i].type == T_ARRAY)
			{
				if(!is_standard_size(&node->func_call.expr_types[i]))
				{
					expressions[i] = copy_memory(ir, block, expression_to_bc(f, node->func_call.arguments[i], block, ir, true),
							get_type_size(node->func_call.expr_types[i]));
					expr_types[i] = ptr_type;
				}
				else
				{
					// @NOTE: this means that the struct can be loaded into a register
					i32 type_size = get_type_size(node->func_call.expr_types[i]);
					Type_Info *fake_type = size_to_type(type_size);
					i32 address_register = allocate_register(ir);
					expressions[i] = allocate_register(ir);
					address_register = expression_to_bc(f, node->func_call.arguments[i], block, ir, true);
					instruction(address_register, -1, expressions[i], BC_DEREFRENCE, block, fake_type);
					expr_types[i] = fake_type;
				}
			}
			else
			{
				expressions[i] = expression_to_bc(f, node->func_call.arguments[i], block, ir, false);
				expr_types[i] = &node->func_call.expr_types[i];
			}
		}
	}
	i32 func = bc_get_callee_maybe_overloaded(node, block, ir);

	i32 result = allocate_register(ir);
	BC_Func_Call *call = (BC_Func_Call *)AllocatePermanentMemory(sizeof(BC_Func_Call));
	call->func_register = func;
	call->expressions = expressions;
	call->expr_count = expr_count;
	call->expr_types = expr_types;
	instruction((u64)call, -1, BC_CALL, block, &node->func_call.operand_type);

	if(ret_address != -1)
	{
		*node->func_call.operand_type.func.return_type = ret_type;
		instruction(ret_address, -1, result, BC_DEREFRENCE, block, node->func_call.operand_type.func.return_type);
	}
	else
	{
		if(node->func_call.operand_type.func.return_type->type == T_VOID)
			return -1;

		if(is_float(*node->func_call.operand_type.func.return_type))
			instruction(result, reg_xmm0, result, BC_MOVE_REG_TO_REG, block, node->func_call.operand_type.func.return_type);
		else
			instruction(result, reg_a, result, BC_MOVE_REG_TO_REG, block, node->func_call.operand_type.func.return_type);
	}
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
find_function_index(File_Contents *f, u8 *id)
{
	i32 count = SDCount(f->functions);
	for(int i = 0; i < count; ++i)
	{
		if(vstd_strcmp((char *)id, (char *)f->functions[i]->identifier))
			return i;
	}
	return -1;
}

i32
load_pointer(File_Contents *f, u8 *id, IR *ir, IR_Block *block, Type_Info *type)
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

			i32 result = allocate_register(ir);
			instruction(-1, got, result, BC_MOVE_FUNCTION_TO_REG, block, type);
			return result;
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
atom_expr_to_bc(File_Contents *f, Ast_Node *expr, IR_Block *block, IR *ir, b32 get_pointer)
{
	i32 result;
	switch((int)expr->type)
	{
		case type_identifier:
		{
			if(get_pointer)
				result = load_pointer(f, expr->identifier.name, ir, block, expr->identifier.symbol_spot->type);
			else
				result = load_variable(f, expr->identifier.name, ir, block, expr->identifier.symbol_spot->type);
		} break;
		case type_overload:
		{
			result = allocate_register(ir);
			instruction(-1, overload_table[expr->overload.index], result, BC_MOVE_FUNCTION_TO_REG, block, ptr_type);
		} break;
		case type_run:
		{
			result = val_to_register(&expr->run.ran_val, ir, block);
		} break;
		case type_func_call:
		{
			Assert(expr->func_call.operand_type.type == T_FUNC);
			result = call_function(f, ir, block, expr, (Call_Conv)expr->func_call.operand_type.func.calling_convention);
		} break;
		case type_index:
		{
			// Since pointers are stored as seperate things
			// we want to derefrence them so we pass false get_pointer
			// but arrays are just the first element so we
			// pass true to get_pointer if it's an array
			result = expression_to_bc(expr->index.operand, block, ir, expr->index.operand_type.type != T_POINTER);
			i64 type_size;
			Type_Info *out_type = NULL;
			if(expr->index.operand_type.type == T_POINTER)
			{
				type_size = get_type_size(*expr->index.operand_type.pointer.type);
				out_type = expr->index.operand_type.pointer.type;
			}
			else if(expr->index.operand_type.type == T_ARRAY)
			{
				type_size = get_type_size(*expr->index.operand_type.array.type);
				out_type = expr->index.operand_type.array.type;
			}
			else
				Assert(false);
			i32 index_expression = expression_to_bc(expr->index.expression, block, ir, false);
			Interp_Val type_size_val;
			type_size_val._i64 = type_size;
			type_size_val.type = *type_64;
			i32 type_size_register = val_to_register(&type_size_val, ir, block);

			// @TODO: IMUL can accept 2 different registers, we don't have to use rax
			// so make it do that for perforamnce
			// @TODO: IMUL can accept 2 different registers, we don't have to use rax
			// so make it do that for perforamnce
			// @TODO: IMUL can accept 2 different registers, we don't have to use rax
			// so make it do that for perforamnce
			i32 reg_a_virtual = allocate_register(ir);
			i32 reg_c_virtual = allocate_register(ir);
			// Move index expression to register a for the multiply
			instruction(reg_a, index_expression, reg_a_virtual, BC_MOVE_REG_TO_REG, block, type_64);
			// Move type size to reg c, so that we can make sure it's not in reg d
			instruction(reg_c, type_size_register, reg_c_virtual, BC_MOVE_REG_TO_REG, block, type_64);
			// Remove anything in reg d
			instruction(reg_d, reg_d, reg_d, BC_BIT_XOR, block, type_64);
			// Multiply the index by the size off the pointer type
			instruction(reg_a_virtual, reg_c_virtual, reg_a_virtual, BC_I_MUL, block, type_64);
			// Offset the pointer to get to the destination
			instruction(result, reg_a_virtual, result, BC_OFFSET_POINTER, block, ptr_type);
			if(!get_pointer)
			{
				// Derefrence if needed
				instruction(result, -1, result, BC_DEREFRENCE, block, out_type);
			}
		} break;
		case type_selector:
		{
			result = allocate_register(ir);
			b32 derefrence_pointer = true;
			Type_Info *struct_type = expr->selector.operand_type;
			if(expr->selector.operand_type->type != T_POINTER) {
				derefrence_pointer = false;
			}
			else {
				struct_type = struct_type->pointer.type;
			}
			i32 struct_start = expression_to_bc(expr->selector.operand, block, ir, !derefrence_pointer);
			i64 offset = struct_get_offset_to_element_in_bytes(struct_type, expr->selector.selected_index);
			i32 offset_register = allocate_register(ir);

			// put the offset into a register
			instruction(offset, offset_register, BC_MOVE_VALUE_TO_REG, block, type_64);			
			// put the starting address of the struct into the result register
			instruction(result, struct_start, result, BC_MOVE_REG_TO_REG, block, type_64);
			// offset the pointer (it's really just an add instruction)
			instruction(result, offset_register, result, BC_OFFSET_POINTER, block, expr->selector.selected_type);
			if(!get_pointer)
			{
				// derefrence the resulting pointer to get the member
				instruction(result, -1, result, BC_DEREFRENCE, block, expr->selector.selected_type);
			}
		} break;
		case type_const_str:
		{
			result = allocate_register(ir);
			instruction((u64)expr->atom.identifier.name, result, BC_LOAD_STRING, block, str_type);
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
		switch((int)expr->unary_expr.op->type)
		{
			case '@':
			{
				i32 expr_reg = expression_to_bc(expr->unary_expr.expression, block, ir, true);
				return expr_reg;
			} break;
			case '*':
			{
				i32 expr_reg = expression_to_bc(expr->unary_expr.expression, block, ir, get_pointer);
				result = allocate_register(ir); 
				Type_Info *result_type = &expr->unary_expr.expr_type;
				if(!get_pointer)
					result_type = result_type->pointer.type;

				instruction(expr_reg, -1, result, BC_DEREFRENCE, block, result_type);
			} break;
			case '-':
			{
				i32 expr_reg = expression_to_bc(expr->unary_expr.expression, block, ir, false);
				if(is_float(expr->unary_expr.expr_type))
				{
					result = allocate_register(ir);
					instruction(expr_reg, -1, result, BC_FNEG, block, &expr->unary_expr.expr_type);
				}
				else
				{
					result = expr_reg;
					instruction(expr_reg, -1, expr_reg, BC_NEG, block, &expr->unary_expr.expr_type);
				}
			} break;
			case '!':
			{
				i32 expr_reg = expression_to_bc(expr->unary_expr.expression, block, ir, false);
				Assert(expr->unary_expr.expr_type.type == T_BOOLEAN);
				result = allocate_register(ir);
				instruction(expr_reg, -1, result, BC_LOGICAL_NOT, block, &expr->unary_expr.expr_type);
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
		i32 to_cast = expression_to_bc(expr->cast.expression, block, ir, get_pointer);
		result = do_cast(to_cast, &expr->cast.expr_type, &expr->cast.type, ir, block);
		if(result == -1)
			result = to_cast;
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
				i32 right_rc = allocate_register(ir);
				// operand in reg a
				instruction(reg_a, left, result, BC_MOVE_REG_TO_REG, block, &expr->binary_expr.left);
				// other operand in reg c so it's not in reg d
				instruction(reg_c, right, right_rc, BC_MOVE_REG_TO_REG, block, &expr->binary_expr.left);
				// Remove anything in reg d so it's not used (part of the result ends up there
				instruction(reg_d, reg_d, reg_d, BC_BIT_XOR, block, type_64);
				// @TODO: add a way to say that a register needs to be emptied in cases like this without generating
				// a useless instruction
				// @TODO: add a way to say that a register needs to be emptied in cases like this without generating
				// a useless instruction
				// @TODO: add a way to say that a register needs to be emptied in cases like this without generating
				// a useless instruction
				// @TODO: add a way to say that a register needs to be emptied in cases like this without generating
				// a useless instruction
				// @TODO: add a way to say that a register needs to be emptied in cases like this without generating
				// a useless instruction
				// @TODO: add a way to say that a register needs to be emptied in cases like this without generating
				// a useless instruction
				// @TODO: add a way to say that a register needs to be emptied in cases like this without generating
				// a useless instruction
				if(is_signed(expr->binary_expr.left))
						instruction(result, right_rc, result, BC_I_MUL, block, &expr->binary_expr.left);
				else
						instruction(result, right_rc, result, BC_U_MUL, block, &expr->binary_expr.left);
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

inline int
round_up_to_multiple(int x, int multiple)
{
	return (x + multiple) - (x % multiple);
}

void
padd_to_alignment(i32 alignment, IR *ir)
{
	Data_Segment *previous = &ir->allocated[SDCount(ir->allocated) - 1];
	if((previous->position + previous->size) % alignment != 0) {

		i32 unaligned_position = previous->position + previous->size;
		i32 aligned_position = round_up_to_multiple(unaligned_position, alignment);

		Data_Segment align;
		align.init_val = 0;
		align.position = unaligned_position;
		align.size = aligned_position - unaligned_position;
		align.virtual_register = -1;
		SDPush(ir->allocated, align);
	}
}

void
do_store_instruction(i32 idx, i32 right, i32 result, IR_Block *block, Type_Info *type, b32 is_removable)
{
	if(type->type == T_STRING)
		*type = *str_type;
	if(!is_removable)
		instruction(idx, right, result, BC_STORE_NON_REMOVABLE, block, type);
	else
		instruction(idx, right, result, BC_STORE, block, type);
}

void
do_out_store_instruction(i32 idx, i32 right, i32 result, Bytecode *out_bc, size_t *out_count, Type_Info *type, IR *ir)
{
	if(type->type == T_STRING)
		*type = *str_type;
	out_instruction(idx, right, result, BC_STORE, out_bc, out_count, type);

	i32 position = idx == 0 ? idx : ir->allocated[idx - 1].position + ir->allocated[idx - 1].size;
	Data_Segment item = {0, (u64)get_type_size(*type), position};
	SDPush(ir->allocated, item);
}

i32
allocate_stack_space(IR *ir, size_t size)
{
	size_t idx = SDCount(ir->allocated);
	size_t position = 0;
	if(idx == 0) {
		position = 0;
	}
	else {
		auto last_segment = ir->allocated[idx - 1];
		position = last_segment.position + last_segment.size;
	}
	Data_Segment allocation;
	allocation.init_val = 0;
	allocation.position = position;
	allocation.size     = size;
	allocation.virtual_register = -1;
	SDPush(ir->allocated, allocation);
	return idx;
}

i32
store_expression(Ast_Node *node, IR *ir, IR_Block *block, Type_Info *expr_type, Type_Info *store_type, b32 should_align, b32 is_removable)
{
	if(should_align) {
		i32 alignment = get_type_alignment(*store_type);
		padd_to_alignment(alignment, ir);
	}

	if(node->type == type_struct_init)
	{
		Assert(store_type->type == T_STRUCT);

		auto expressions = node->struct_init.expressions;
		auto member_types = node->struct_init.type.structure.member_types;
		auto expr_types = node->struct_init.expr_types;
		size_t count = SDCount(expressions);
		// Store them in reverse because we use a negative offset
		// on the stack, so we store -3, -2, -1, instead of -1, -2, -3
		// so it's correctly continuous in memory
		for(i64 i = count - 1; i >= 0; --i) {
			store_expression(expressions[i], ir, block, &expr_types[i], &member_types[i], !store_type->structure.is_packed, false);
		}
		return SDCount(ir->allocated) - 1;
	}
	else if(node->type == type_array_list)
	{
		Assert(store_type->type == T_ARRAY);

		auto expressions = node->array_list.list;
		auto expr_types = node->array_list.expr_types;
		size_t count = SDCount(expressions);
		// Store them in reverse because we use a negative offset
		// on the stack, so we store -3, -2, -1, instead of -1, -2, -3
		// so it's correctly continuous in memory
		for(i64 i = count - 1; i >= 0; --i) {
			store_expression(expressions[i], ir, block, &expr_types[i], store_type->array.type, false, false);
		}
		return SDCount(ir->allocated) - 1;
	}
	else
	{
		Assert(expr_type->type != T_ARRAY && expr_type->type != T_STRUCT);

		i32 expr_register = expression_to_bc(node, block, ir, false);
		i32 casted = do_cast(expr_register, expr_type, store_type, ir, block);
		if(casted == -1)
			casted = expr_register;

		i32 idx = allocate_stack_space(ir, get_type_size(*store_type));
		ir->allocated[idx].virtual_register = casted;
		do_store_instruction(idx, casted, casted, block, store_type, is_removable);

		return idx;
	}
}

void
assign_to_bc(Ast_Node *node, IR_Block *block, IR *ir)
{
	if(node->assignment.is_declaration) {
		i32 result = store_expression(node->assignment.rhs, ir, block, &node->assignment.rhs_type, &node->assignment.decl_type, true, true);
		shput(ir->lookup, node->assignment.token.identifier, result);
	}
	else {
		i32 expr_register = expression_to_bc(node->assignment.rhs, block, ir, false);
		i32 dst_pointer = expression_to_bc(node->assignment.lhs, block, ir, true);
		i32 casted = do_cast(expr_register, &node->assignment.rhs_type, &node->assignment.decl_type, ir, block);
		if(casted == -1)
			casted = expr_register;
		instruction(dst_pointer, casted, -1, BC_STORE_REG, block, &node->assignment.decl_type);
	}
}

IR_Block *
ast_to_bc_func_level_list(File_Contents *f, Ast_Node **list, i32 *optional_index, IR_Block *optional_block, u8 *id, IR *ir, IR_Block *to_go)
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
	auto statement_count = SDCount(list);
	if(optional_index)
	{
		i32 i = *optional_index;
		for(; i < statement_count; ++i)
		{
			ast_to_bc_func_level(f, list[i], block, list, &i, ir, to_go);
			*optional_index = i;
		}
	}
	else
	{
		for(i32 i = 0; i < statement_count; ++i)
		{
			ast_to_bc_func_level(f, list[i], block, list, &i, ir, to_go);
		}
	}
	return block;
}

IR_Block *
ast_to_bc_func_level_list(Ast_Node **list, i32 *optional_index, IR_Block *optional_block, const char *id, IR *ir, IR_Block *to_go)
{
	return ast_to_bc_func_level_list(list, optional_index, optional_block, (u8 *)id, ir, to_go);
}

void
get_function_arguments(Ast_Node *function, IR *ir, IR_Block *block)
{
	auto args = function->function.arguments;
	size_t count = SDCount(args);

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

	if(function->function.conv == CALL_APOC)
	{
		i32 arg_reg = allocate_register(ir);
		instruction(arg_reg, int_register_order[int_register_count++], arg_reg, BC_MOVE_REG_TO_REG, block, type_64);

		i32 idx = allocate_stack_space(ir, 8);
		ir->allocated[idx].virtual_register = arg_reg;
		do_store_instruction(idx, arg_reg, arg_reg, block, type_64, true);
		shput(ir->lookup, "__apoc_internal_context", idx);
	}
	for(size_t i = 0; i < count; ++i)
	{
		auto arg = &args[i]->variable;
		auto type = &arg->type;
		i32 result = allocate_register(ir);
		if(type->type == T_STRUCT || type->type == T_ARRAY)
		{
			type = size_to_type(get_type_size(*type));
		}
		if(is_float(*type))
		{
			if(float_register_count < sizeof(float_register_order) / sizeof(Register))
			{
				instruction(result, float_register_order[float_register_count++], result, BC_MOVE_REG_TO_REG, block, type);
			}
			else
			{
				instruction(ir->stack_top, result, BC_POP_OFFSET, block, type);
				ir->stack_top += 8;
			}
		}
		else
		{
			if(int_register_count < sizeof(int_register_order) / sizeof(Register))
			{
				instruction(result, int_register_order[int_register_count++], result, BC_MOVE_REG_TO_REG, block, type);
			}
			else
			{
				instruction(ir->stack_top, result, BC_POP_OFFSET, block, type);
				ir->stack_top += 8;
			}

		}
		i32 idx = allocate_stack_space(ir, get_type_size(*type));
		ir->allocated[idx].virtual_register = result;
		do_store_instruction(idx, result, result, block, type, true);
		shput(ir->lookup, arg->identifier.name, idx);
	}
	ir->stack_top = 16;
}

IR
ast_to_bc_function(File_Contents *f, Ast_Node **list, Ast_Node *function)
{
	IR result = {};
	result.blocks = SDCreate(IR_Block*);
	result.allocated = SDCreate(Data_Segment);
	result.reg_count = reg_invalid + 1; // starting from here so we know that
					    // anything under is a physical register instead of a virtual one
	result.bc_count = 0;
	result.stack_top = 16;
	shdefault(result.lookup, -1);

	IR_Block *entry = alloc_block("entry", &result);
	instruction(reg_bp, -1, -1, BC_PUSH_REG, entry, type_64);
	instruction(reg_bp, reg_sp, reg_bp, BC_MOVE_REG_TO_REG, entry, type_64);
	get_function_arguments(function, &result, entry);
	ast_to_bc_func_level_list(f, list, NULL, entry, "entry", &result, NULL);

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
		do_register_allocation(&result, result.blocks[i], allocated);
		for(size_t i = 0; i < result.reg_count; ++i)
			allocated[i].in_register = reg_invalid;
	}

	for(size_t i = 0; i < block_count; ++i)
	{
		if(!result.blocks[i]->has_terminator)
			LG_ERROR("Block doesn't have a terminator: %s", result.blocks[i]->id);

	}

	// @NOTE: is this necessary?
	// it should be pretty cheap since it's 2 tight loops
	// but it's better to profile it when there are actually programs
	// to profile it on
	remove_useless_stores(&result);
#if 1
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
ast_to_bc_func_level(File_Contents *f, Ast_Node *node, IR_Block *current_block, Ast_Node **list, i32 *optional_index, IR *ir, IR_Block *to_go)
{
	IR_Block *result = NULL;
	switch((int)node->type)
	{
		case type_func_call:
		{
			call_function(f, ir, current_block, node, (Call_Conv)node->func_call.operand_type.func.calling_convention);
		} break;
		case type_assignment:
		{
			assign_to_bc(f, node, current_block, ir);
		} break;
		case type_if:
		{
			result = if_to_bc(ir, current_block, node, optional_index, list, to_go);
		} break;
		case type_return:
		{
			if(!node->ret.expression)
			{
				instruction(-1, -1, -1, BC_RETURN, current_block, &node->ret.func_type);
				set_terminator(current_block);
			}
			else
			{
				i32 ret_reg = expression_to_bc(node->ret.expression, current_block, ir, false);
				i32 casted = do_cast(ret_reg, &node->ret.expression_type, &node->ret.func_type, ir, current_block);
				if(casted == -1)
					casted = ret_reg;
				instruction(casted, -1, -1, BC_RETURN, current_block, &node->ret.func_type);
				set_terminator(current_block);
			}
		} break;
	}
	return result;
}

i32
do_cast(i32 source, Type_Info *from, Type_Info *to, IR *ir, IR_Block *block)
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
	if(to->type == T_UNTYPED_INTEGER)
	{
		to->type = T_INTEGER;
		to->primitive.size = byte8;
		to->identifier = (u8 *)"i64";
	}
	else if(to->type == T_UNTYPED_FLOAT)
	{
		to->type = T_FLOAT;
		to->primitive.size = real64;
		to->identifier = (u8 *)"f64";
	}
	Type_Type from_type = from->type;
	Type_Type to_type = to->type;
	BC_OP op;
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
								op = BC_CAST_SEXT;
							}
							else if(from->primitive.size > to->primitive.size)
							{
								op = BC_CAST_TRUNC;
							}
							else
							{
								op = BC_NO_OP;
							}
						}
						else
						{
							if(from->primitive.size < to->primitive.size)
							{
								op = BC_CAST_SEXT;
							}
							else if(from->primitive.size > to->primitive.size)
							{
								op = BC_CAST_TRUNC;
							}
							else
							{
								op = BC_NO_OP;
							}
						}
					} break;
					case T_FLOAT:
					{
						int from_size = get_type_size(*from);
						if(from_size < 4)
						{
							// We need to extend it to 32 bit atleast
							Type_Info *to_intermidiate = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
							memcpy(to_intermidiate, from, sizeof(Type_Info));
							to_intermidiate->primitive.size = byte4;
							i32 extend_register = allocate_register(ir);
							instruction(source, (u32)((u8 *)from - (u8 *)to_intermidiate), extend_register, BC_CAST_SEXT, block, to); 
							source = extend_register;
							from = to_intermidiate;
						}
						if(to->primitive.size == real64)
							op = BC_CAST_I_TO_D;
						else
							op = BC_CAST_I_TO_F;
					} break;
					case T_POINTER:
					{
						op = BC_NO_OP;
					} break;
					case T_BOOLEAN:
					{
						if(from->primitive.size == byte1 || from->primitive.size == ubyte1)
							op = BC_NO_OP;
						else
							op = BC_CAST_TRUNC;
					} break;
					default:
					{
						Assert(false);
					} break;
				}
			}
			else
			{
				// Unsgiend to x
				switch(to_type)
				{
					case T_INTEGER:
					{
						if(is_signed(*to))
						{
							if(from->primitive.size < to->primitive.size)
							{
								op = BC_CAST_ZEXT;
							}
							else if(from->primitive.size > to->primitive.size)
							{
								op = BC_CAST_TRUNC;
							}
							else
							{
								op = BC_NO_OP;
							}
						}
						else
						{
							if(from->primitive.size < to->primitive.size)
							{
								op = BC_CAST_ZEXT;
							}
							else if(from->primitive.size > to->primitive.size)
							{
								op = BC_CAST_TRUNC;
							}
							else
							{
								op = BC_NO_OP;
							}
						}
					} break;
					case T_FLOAT:
					{
						int from_size = get_type_size(*from);
						if(from_size < 4)
						{
							Type_Info *to_intermidiate = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
							memcpy(to_intermidiate, from, sizeof(Type_Info));
							to_intermidiate->primitive.size = ubyte4;
							i32 extend_register = allocate_register(ir);
							instruction(source, (u32)((u8 *)from - (u8 *)to_intermidiate), extend_register, BC_CAST_ZEXT, block, to); 
							source = extend_register;
							from = to_intermidiate;
						}
						if(to->primitive.size == real64)
							op = BC_CAST_U_TO_D;
						else
							op = BC_CAST_U_TO_F;
					} break;
					case T_POINTER:
					{
						op = BC_NO_OP;
					} break;
					case T_BOOLEAN:
					{
						if(from->primitive.size == byte1 || from->primitive.size == ubyte1)
							op = BC_NO_OP;
						else
							op = BC_CAST_TRUNC;
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
						op = BC_CAST_F_TO_I;
					else
						op = BC_CAST_D_TO_I;
				} break;
				case T_FLOAT:
				{
					if(from->primitive.size < to->primitive.size)
						op = BC_CAST_F_EXT;
					else if(from->primitive.size > to->primitive.size)
						op = BC_CAST_F_TRUNC;
					else
						op = BC_NO_OP;
				} break;
			}
		} break;
		case T_BOOLEAN:
		{
			switch (to_type)
			{
				case T_INTEGER:
				{
					if(is_signed(*to))
					{
						if(to->primitive.size == byte1 || to->primitive.size == ubyte1)
							op = BC_NO_OP;
						else
							op = BC_CAST_SEXT;
					}
					else
					{
						if(to->primitive.size == byte1 || to->primitive.size == ubyte1)
							op = BC_NO_OP;
						else
							op = BC_CAST_ZEXT;
					}
				} break;
				case T_FLOAT:
				{
					if(to->primitive.size == real64)
						op = BC_CAST_D_TO_I;
					else
						op = BC_CAST_F_TO_I;
				} break;
				case T_BOOLEAN:
				{
					op = BC_NO_OP;
				} break;
				default:
				{
					Assert(false);
				} break;
			}
		} break;
		case T_POINTER:
		{
			switch(to_type)
			{
				case T_POINTER:
				{
					op = BC_NO_OP;
				} break;
				default:
				{
					Assert(false);
				} break;
			}
		} break;
		default:
		{
			Assert(false);
		} break;
	}
	if(op == BC_NO_OP)
		return source;
	i32 result = allocate_register(ir);
	instruction(source, (u32)((u8 *)from - (u8 *)to), result, op, block, to); 
	return result;
}

inline b32
op_has_left_idx(BC_OP op)
{
	if(op == BC_STORE || op == BC_STORE_NON_REMOVABLE)
		return false;
	return true;
}

inline b32
op_has_right_idx(BC_OP op)
{
	if(op == BC_LOAD_STACK || op == BC_LOAD_DATA_SEG || op == BC_MOVE_FUNCTION_TO_REG || (op >= BC_CAST_SEXT && op <= BC_CAST_F_EXT))
		return false;
	return true;
}

void
free_virtual_register(i32 virtual_register, Virtual_Register_Tracker *v_regs, Register_Allocation_Tracker *phy_regs,
		IR *ir, Bytecode *out_bc, size_t *out_count)
{
	Register physical_register = v_regs[virtual_register].in_register;
	if(v_regs[virtual_register].in_memory == -1)
	{
		i32 idx = SDCount(ir->allocated);
		do_out_store_instruction(idx, physical_register, physical_register, out_bc, out_count,
				v_regs[virtual_register].current_type, ir);
		v_regs[virtual_register].in_memory = idx;
	}
	v_regs[virtual_register].in_register = reg_invalid;
	phy_regs[physical_register].current_virtual_register = -1;
}

Register
free_up_register_for(i32 virtual_register, Virtual_Register_Tracker *v_regs, Register_Allocation_Tracker *phy_regs,
		IR *ir, Bytecode *out_bc, size_t *out_count, Type_Info *type)
{
	if(v_regs[virtual_register].in_register != reg_invalid)
		return v_regs[virtual_register].in_register;

	Register out;
	Register first;
	Register last;
	if(is_float(*type))
	{
		first = reg_xmm0;
		last = reg_xmm6;
	}
	else
	{
		first = reg_a;
		last = reg_b;
	}
	out = first;
	for(size_t i = first; i < last; ++i)
	{
		Register item = (Register)i;
		if(phy_regs[item].current_virtual_register == -1)
		{
			out = item;
			break;
		}
		if(phy_regs[item].last_updated < phy_regs[out].last_updated)
		{
			out = item;
		}
	}

	phy_regs[out].last_updated++;

	// Free both the virtual register about to be put into the physical one
	// and the one that was previously connected
	if(v_regs[virtual_register].in_register != reg_invalid)
		free_virtual_register(virtual_register, v_regs, phy_regs, ir, out_bc, out_count);
	if(phy_regs[out].current_virtual_register != -1)
		free_virtual_register(phy_regs[out].current_virtual_register, v_regs, phy_regs, ir, out_bc, out_count);

	if(v_regs[virtual_register].in_memory != -1)
	{
		out_instruction(-1, v_regs[virtual_register].in_memory, out, BC_LOAD_STACK, out_bc, out_count, type);
	}

	phy_regs[out].current_virtual_register = virtual_register;
	v_regs[virtual_register].in_register = out;
	v_regs[virtual_register].current_type = type;
	return out;
}

void
free_phyisical_register(Register reg, Register_Allocation_Tracker *phy_regs, Virtual_Register_Tracker *v_regs, IR *ir, Bytecode *out_bc, size_t *out_count)
{
	i32 virtual_register = phy_regs[reg].current_virtual_register;
	if(virtual_register != -1)
		free_virtual_register(virtual_register, v_regs, phy_regs, ir, out_bc, out_count);
	phy_regs[reg].current_virtual_register = -1;
}

void
put_virtual_register_into_phyisicla_without_touching_other(i32 virtual_register, Register physical_register,
		Register_Allocation_Tracker *phy_regs, Virtual_Register_Tracker *v_regs, IR *ir, Bytecode *out_bc, size_t *out_count, Type_Info *type)
{
	Assert(v_regs[virtual_register].in_memory != -1 || v_regs[virtual_register].in_register != reg_invalid);
	if(v_regs[virtual_register].in_register != reg_invalid)
	{
		out_instruction(physical_register, v_regs[virtual_register].in_register, physical_register, BC_MOVE_REG_TO_REG, out_bc, out_count, type);

		Register old_physical_register = v_regs[virtual_register].in_register;
		phy_regs[old_physical_register].current_virtual_register = -1;
	}
	else if(v_regs[virtual_register].in_memory != -1)
	{
		out_instruction(-1, v_regs[virtual_register].in_memory, physical_register, BC_LOAD_STACK, out_bc, out_count, type);
	}
	else
	{
		LG_FATAL(" ----- COMPILER BUG ----- \nWhen allocating registers for function call, one value was lost");
	}
	phy_regs[physical_register].current_virtual_register = virtual_register;
	v_regs[virtual_register].current_type = type;
	v_regs[virtual_register].in_register = physical_register;
}

void
allocate_for_function_calls(Bytecode bc, Register_Allocation_Tracker *phy_regs, Virtual_Register_Tracker *v_regs, IR *ir, Bytecode *out_bc, size_t *out_count)
{
	BC_Func_Call *call = (BC_Func_Call *)bc.big_idx;

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

	i32 stack_offset = 16;
	for(i64 i = 0; i < call->expr_count; ++i)
	{
		Register physical_register = reg_invalid;
		Type_Info *type = call->expr_types[i];
		if(is_float(*type)) {
			if(float_register_count != sizeof(float_register_order) / sizeof(Register)) {
				physical_register = float_register_order[float_register_count++];
			}
		}
		else {
			if(int_register_count != sizeof(int_register_order) / sizeof(Register)) {
				physical_register = int_register_order[int_register_count++];
			}
		}
		if(physical_register != reg_invalid) {
			free_phyisical_register(physical_register, phy_regs, v_regs, ir, out_bc, out_count);
			put_virtual_register_into_phyisicla_without_touching_other(call->expressions[i], physical_register, phy_regs, v_regs, ir, out_bc, out_count, type);
		}
		else {
			// @TODO: implement this
			// @TODO: implement this
			// @TODO: implement this
			// @TODO: implement this
			// @TODO: implement this
			// @TODO: implement this
			// @TODO: implement this
			// @TODO: implement this
			Assert(false);
			out_instruction(stack_offset, call->expressions[i], -1, BC_PUSH_OFFSET, out_bc, out_count, type);
			stack_offset += 8;
		}
	}

	// Put the function in the a register
	free_phyisical_register(reg_a, phy_regs, v_regs, ir, out_bc, out_count);
	put_virtual_register_into_phyisicla_without_touching_other(call->func_register, reg_a, phy_regs, v_regs, ir, out_bc, out_count, ptr_type);
}

void
do_register_allocation(IR *ir, IR_Block *block, Virtual_Register_Tracker *v_regs)
{
	Register_Allocation_Tracker phy_regs[reg_invalid];
	for(size_t i = 0; i < reg_invalid; ++i)
	{
		phy_regs[i].current_virtual_register = -1;
		phy_regs[i].last_updated = 0;
	}

	size_t bc_count = block->bc_count;
	Bytecode *new_bc = (Bytecode *)AllocateCompileMemory(bc_count * sizeof(Bytecode) * 3);
	size_t new_count = 0;
	size_t i = 0;

	if(vstd_strcmp((char *)block->id, (char *)"entry")) {
		// Copy the stack manipulation instructions
		new_bc[new_count++] = block->bc[i++];
		new_bc[new_count++] = block->bc[i++];
	}

	for(; i < bc_count; ++i)
	{
		Bytecode bc = block->bc[i];
		if(bc.op == BC_STORE || bc.op == BC_STORE_NON_REMOVABLE)
		{
			v_regs[bc.right_idx].in_memory = bc.left_idx;
			v_regs[bc.right_idx].current_type = bc.type;
		}
		if(bc.op < BC_MOVE_VALUE_TO_REG || bc.op > BC_LOAD_STRING) // doesn't use big_idx register
		{
			if(bc.left_idx != -1 && op_has_left_idx(bc.op) && bc.left_idx > reg_invalid)
			{
				if(bc.op >= BC_CAST_I_TO_F && bc.op <= BC_CAST_D_TO_I)
				{
					Type_Info *src_type = (Type_Info *)((u8 *)bc.type + bc.right_idx);
					bc.left_idx = free_up_register_for(bc.left_idx, v_regs, phy_regs, ir, new_bc, &new_count, src_type);
				}
				else
					bc.left_idx = free_up_register_for(bc.left_idx, v_regs, phy_regs, ir, new_bc, &new_count, bc.type);
				if(bc.op == BC_CAST_ZEXT)
				{
					free_virtual_register(phy_regs[bc.left_idx].current_virtual_register, v_regs,
							phy_regs, ir, new_bc, &new_count);
				}
			}
			if(bc.right_idx != -1 && op_has_right_idx(bc.op) && bc.right_idx > reg_invalid)
			{
				bc.right_idx = free_up_register_for(bc.right_idx, v_regs, phy_regs, ir, new_bc, &new_count, bc.type);
			}
		}
		if(bc.result != -1)
		{
			if(bc.result < reg_invalid)
			{
				// if we have a move to the same register
				// we don't want to spill to the stack
				// the instruction itself would be handled by the code generation
				// but it will result in a spill
				if(bc.op == BC_MOVE_REG_TO_REG && bc.left_idx == bc.right_idx)
					continue;

				i32 virtual_register = phy_regs[bc.result].current_virtual_register;
				if(virtual_register != -1)
					free_virtual_register(virtual_register, v_regs, phy_regs, ir, new_bc, &new_count);
			}
			else
			{
				if(bc.op == BC_MOVE_REG_TO_REG)
				{
					if(bc.result != phy_regs[bc.left_idx].current_virtual_register)
					{
						if(v_regs[bc.result].in_register != reg_invalid)
							free_virtual_register(bc.result, v_regs, phy_regs, ir, new_bc, &new_count);
						if(phy_regs[bc.left_idx].current_virtual_register != -1)
							free_virtual_register(phy_regs[bc.left_idx].current_virtual_register, v_regs, phy_regs, ir, new_bc, &new_count);

						v_regs[bc.result].in_register = (Register)bc.left_idx;
						v_regs[bc.result].current_type = bc.type;
						phy_regs[bc.left_idx].current_virtual_register = bc.result;
						phy_regs[bc.left_idx].last_updated++;
					}
					bc.result = bc.left_idx;
				}
				else
				{
					bc.result = free_up_register_for(bc.result, v_regs, phy_regs, ir, new_bc, &new_count, bc.type);
				}
			}
		}
		if(bc.op == BC_CALL)
		{
			// Clear up any links to volitile registers

			// @NOTE: DO NOT CLEAR RAX THE FUNCTION IS IN THERE
			for(int i = 1; i < reg_b; ++i)
			{
				Register item = (Register)i;
				free_phyisical_register(item, phy_regs, v_regs, ir, new_bc, &new_count);
			}
			for(int i = reg_xmm0; i < reg_xmm6; ++i)
			{
				Register item = (Register)i;
				free_phyisical_register(item, phy_regs, v_regs, ir, new_bc, &new_count);
			}
			allocate_for_function_calls(bc, phy_regs, v_regs, ir, new_bc, &new_count);
		}
#if 1
		else if(bc.op == BC_STORE_REG)
		{
			for(int i = 1; i < reg_b; ++i)
			{
				Register item = (Register)i;
				if(phy_regs[item].current_virtual_register != -1)
				{
					if(v_regs[phy_regs[item].current_virtual_register].in_memory != -1)
						free_phyisical_register(item, phy_regs, v_regs, ir, new_bc, &new_count);
				}
			}
			for(int i = reg_xmm0; i < reg_xmm6; ++i)
			{
				Register item = (Register)i;
				if(phy_regs[item].current_virtual_register != -1)
				{
					if(v_regs[phy_regs[item].current_virtual_register].in_memory != -1)
						free_phyisical_register(item, phy_regs, v_regs, ir, new_bc, &new_count);
				}
			}
		}
#endif
			
		new_bc[new_count++] = bc;
	}

	if(vstd_strcmp((char *)block->id, (char *)"entry")) {
		if(SDCount(ir->allocated) != 0) {
			// Subtract the necessary amount of space
			// so when we push on the stack we don't overwrite the 
			// memory stored with stack_pointer - offset
			int last_idx = SDCount(ir->allocated) - 1;
			int unaligned = ir->allocated[last_idx].position + ir->allocated[last_idx].size;
			int to_sub = round_up_to_multiple(unaligned, 16);

			// We have to shove them inside the
			// already created bytecode
			Bytecode bc_sub;
			bc_sub.op = BC_SUB_VALUE;
			bc_sub.big_idx = to_sub;
			bc_sub.result = reg_sp;
			bc_sub.type = type_64;
			

			// we skip the first 2 instructions
			// since they are the stack pushing
			// and moving of rbp
			void *move_dst = new_bc + 3;
			void *move_src = new_bc + 2;
			memmove(move_dst, move_src, (new_count - 2) * sizeof(Bytecode));
			new_bc[2] = bc_sub;
			new_count += 1;
			ir->stack_top = to_sub;
		}
	}
	block->bc = new_bc;
	block->bc_count = new_count;
	ir->bc_count += new_count;
}

void
remove_useless_stores(IR *ir)
{
	// @TODO: maybe make it so we fix the stack after
	// because even though we eliminate the store ops
	// the following stores will still write at a position
	// further down the stack like the ops were there


	auto block_count = SDCount(ir->blocks);
	i32 loaded[SDCount(ir->allocated)];
	i32 loaded_count = 0;
	for(size_t block_idx = 0; block_idx < block_count; ++block_idx)
	{
		auto block = ir->blocks[block_idx];
		auto bc_count = block->bc_count;
		auto bc = block->bc;

		for(size_t i = 0; i < bc_count; ++i)
		{
			if(bc[i].op == BC_LOAD_STACK || bc[i].op == BC_LOAD_ADDRESS)
			{
				loaded[loaded_count++] = bc[i].right_idx;
			}
		}
	}
	for(size_t block_idx = 0; block_idx < block_count; ++block_idx)
	{
		auto block = ir->blocks[block_idx];
		auto bc_count = block->bc_count;
		auto bc = block->bc;

		for(size_t i = 0; i < bc_count; ++i)
		{
			if(bc[i].op == BC_STORE)
			{
				i32 memory_index = bc[i].left_idx;
				for(size_t j = 0; j < loaded_count; ++j)
				{
					if(loaded[j] == memory_index)
					{
						goto STORE_ELIMINATION_END;
					}
				}
				bc[i].op = BC_NO_OP;
			}
STORE_ELIMINATION_END:;
		}
	}
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
		case reg_xmm0:
		return "xmm0";
		case reg_xmm1:
		return "xmm1";
		case reg_xmm2:
		return "xmm2";
		case reg_xmm3:
		return "xmm3";
		case reg_xmm4:
		return "xmm4";
		case reg_xmm5:
		return "xmm5";
		case reg_xmm6:
		return "xmm6";
		case reg_xmm7:
		return "xmm7";
		case reg_xmm8:
		return "xmm8";
		case reg_xmm9:
		return "xmm9";
		case reg_xmm10:
		return "xmm10";
		case reg_xmm11:
		return "xmm11";
		case reg_xmm12:
		return "xmm12";
		case reg_xmm13:
		return "xmm13";
		case reg_xmm14:
		return "xmm14";
		case reg_xmm15:
		return "xmm15";
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
		if(bc.type && bc.op != BC_NO_OP)
			buffer_size += vstd_sprintf(buffer + buffer_size, "%s ", var_type_to_name(bc.type));
		switch(bc.op)
		{
			case BC_POP_OFFSET:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t POP [%x]\n", register_to_name(bc.result), bc.big_idx);
			} break;
			case BC_ADD_VALUE:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t ADD %d\n", register_to_name(bc.result), bc.big_idx);
			} break;
			case BC_SUB_VALUE:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t SUB %d\n", register_to_name(bc.result), bc.big_idx);
			} break;
			case BC_LOAD_STRING:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t LOAD %s\n", register_to_name(bc.result), (u8 *)bc.big_idx);
			} break;
			case BC_FCMP_NEQ:
			case BC_CMP_I_NEQ:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t %s != %s\n", register_to_name(bc.result), register_to_name(bc.left_idx), register_to_name(bc.right_idx));
			} break;
			case BC_FCMP_EQ:
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
			case BC_LOGICAL_NOT:
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
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t MOVE FUNCTION [ID: %d]\n", register_to_name(bc.result), bc.right_idx);
			} break;
			case BC_STORE_NON_REMOVABLE:
			case BC_STORE:
			{
				auto ds = ir->allocated[bc.left_idx];
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t STORE [%X] %s\n", register_to_name(bc.result), ds.position + ds.size, register_to_name(bc.right_idx));
			} break;
			case BC_CALL:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "CALL %s\n", register_to_name(reg_a));
			} break;
			case BC_PUSH_OFFSET:
			{
				auto ds = ir->allocated[bc.left_idx];
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t STORE [+%X] %s\n",register_to_name(bc.result), ds.position + ds.size, register_to_name(bc.right_idx));
			} break;
			case BC_STORE_REG:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "[%s]:\t STORE %s\n", register_to_name(bc.left_idx), register_to_name(bc.right_idx));
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
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t GLOBAL ADDRESS %d\n", register_to_name(bc.result), bc.right_idx);
			} break;
			case BC_LOAD_ADDRESS:
			{
				auto ds = ir->allocated[bc.right_idx];
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t ADDRESS %X\n", register_to_name(bc.result), ds.position + ds.size);
			} break;
			case BC_LOAD_STACK:
			{
				auto ds = ir->allocated[bc.right_idx];
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t LOAD [%X]\n", register_to_name(bc.result), ds.position + ds.size);
			} break;
			case BC_LOAD_DATA_SEG:
			{
				auto ds = ir->allocated[bc.right_idx];
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t LOAD GLOBAL [%X]\n", register_to_name(bc.result), ds.position + ds.size);
			} break;
			case BC_FNEG:
			case BC_NEG:
			{
				// result and left_idx should be the same register
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t NEG %s\n", register_to_name(bc.result), register_to_name(bc.left_idx));
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
				// buffer_size += vstd_sprintf(buffer + buffer_size, "NO OP\n");
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

