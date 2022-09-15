#include <Bytecode.h>
#include <Type.h>
#include <platform/platform.h>

static Type_Info *type_64;

IR *
ast_to_bytecode(Ast_Node *node)
{
	type_64 = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	type_64->type = T_INTEGER;
	type_64->primitive.size = byte8;
	type_64->identifier = (u8 *)"i64";

	IR *result = SDCreate(IR);
	IR first;
	first.allocated = NULL;
	first.bc = SDCreate(Bytecode);
	first.reg_count = reg_invalid + 1; // starting from here so we know that
					   // anything under is a physical register instead of a virtual one
	// @NOTE: maybe not needed since we are at global scope?
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

			b32 failed = false;
			auto value = interpret_expression(node->assignment.rhs, &failed);
			Data_Segment global_var;
			global_var.virtual_register = -1;
			if(ir->allocated == NULL || SDCount(ir->allocated) == 0)
				global_var.position = 0;
			else {
				size_t segment_size = shlen(ir->allocated);
				auto last_segment = ir->allocated[segment_size - 1].value;
				global_var.position = last_segment.position + last_segment.size;
			}
			auto size = get_type_size(value.type);
			// @TODO: structs and stuff 
			if(size > 8)
				Assert(false);
			global_var.init_val = value._u64;
			global_var.size = size;

		} break;
		case type_func:
		{
			if(gen_func && node->function.body) {
				IR next = ast_to_bc_func_level_list(
						node->function.body->scope_desc.body->statements.list, ir->allocated);
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
instruction(i32 left, i32 right, i32 result, BC_OP op, IR *ir, Type_Info *type)
{
	Bytecode bc;
	bc.op = op;
	bc.left_idx = left;
	bc.right_idx = right;
	bc.result = result;
	bc.type = type;
	SDPush(ir->bc, bc);
	size_t count = SDCount(ir->bc);
	return &ir->bc[count - 1];
}

i32
val_to_register(Interp_Val *val, IR *ir)
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
		else
			bc.big_idx = (u64)val->pointed;
	}
	else
	{
		Assert(false);
	}
	bc.type = typed;
	SDPush(ir->bc, bc);
	return bc.result;
}

i32
load_variable(u8 *id, IR *ir, Type_Info *type)
{
	BC_OP op = BC_LOAD_STACK;
	auto got = shgeti(ir->allocated, id);
	Data_Segment *ds;
	i32 result = -1;
	if(got == -1)
	{
		op = BC_LOAD_DATA_SEG;
		got = shgeti(ir->global_allocated_ref, id);
		Assert(got != -1);
		instruction(-1, got, result, op, ir, type);
	}
	else
	{
		ds = &ir->allocated[got].value;
		if(ds->virtual_register != -1)
			result = ds->virtual_register;
		else
		{
			result = allocate_register(ir);
			ds->virtual_register = result;
		}
	}
	if(result == -1)
		result = allocate_register(ir);
	return result;
}

i32
atom_expr_to_bc(Ast_Node *expr, IR *ir)
{
	i32 result;
	switch((int)expr->type)
	{
		case type_identifier:
		{
			result = load_variable(expr->identifier.name, ir, &expr->identifier.symbol_spot->type);
		} break;
		case type_run:
		{
			result = val_to_register(&expr->run.ran_val, ir);
		} break;
		case type_literal:
		{
			// @TODO: this is pretty stupid but it works soooo
			b32 failed = false;
			Interp_Val val = interpret_expression(expr, &failed);
			Assert(!failed);
			result = val_to_register(&val, ir);
		} break;
	}
	return result;
}

i32
unary_expression_to_bc(Ast_Node *expr, IR *ir)
{
	i32 result;
	if(expr->type == type_unary_expr)
	{
		//i32 expr_reg = expression_to_bc(expr->unary_expr.expression, ir);
		switch((int)expr->unary_expr.op.type)
		{
			case '@':
			{
				Assert(false);
			} break;
			case '*':
			{
				Assert(false);
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
		result = val_to_register(&val, ir);
	}
	else if(expr->type == type_cast)
	{
		i32 to_cast = expression_to_bc(expr->cast.expression, ir);
		result = do_cast(to_cast, &expr->cast.expr_type, &expr->cast.type, ir);
	}
	else
		result = atom_expr_to_bc(expr, ir);
	return result;
}

i32
expression_to_bc(Ast_Node *expr, IR *ir)
{
	if(expr->type != type_binary_expr) {	
		return unary_expression_to_bc(expr, ir);
	}

	i32 left  = expression_to_bc(expr->left, ir);
	i32 right = expression_to_bc(expr->right, ir);
	i32 result = allocate_register(ir);
	switch((int)expr->binary_expr.op)
	{
		case '+':
		{
			instruction(result, left, result, BC_MOVE_REG_TO_REG, ir, &expr->binary_expr.left);
			if(expr->binary_expr.left.type == T_POINTER) {
				LG_FATAL("Pointer arithmetic is not implemented in bytecode");
			}
			else if(is_float(expr->binary_expr.left)) {
				instruction(result, right, result, BC_F_ADD, ir, &expr->binary_expr.left);
			}
			else  {
				instruction(result, right, result, BC_ADD, ir, &expr->binary_expr.left);
			}
		} break;
		case '-':
		{
			instruction(result, left, result, BC_MOVE_REG_TO_REG, ir, &expr->binary_expr.left);
			if(is_float(expr->binary_expr.left)) {
				instruction(result, right, result, BC_F_SUB, ir, &expr->binary_expr.left);
			}
			else {
				instruction(result, right, result, BC_SUB, ir, &expr->binary_expr.left);
			}
		} break;
		case '*':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_F_MUL, ir, &expr->binary_expr.left);
			}
			else {
				instruction(reg_a, left, result, BC_MOVE_REG_TO_REG, ir, &expr->binary_expr.left);
				if(is_signed(expr->binary_expr.left))
						instruction(result, right, result, BC_I_MUL, ir, &expr->binary_expr.left);
				else
						instruction(result, right, result, BC_U_MUL, ir, &expr->binary_expr.left);
			}
		} break;
		case '/':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_F_DIV, ir, &expr->binary_expr.left);
			}
			else {
				instruction(reg_a, left, result, BC_MOVE_REG_TO_REG, ir, &expr->binary_expr.left);
				instruction(reg_c, right, right, BC_MOVE_REG_TO_REG, ir, &expr->binary_expr.left);
				instruction(reg_d, reg_d, reg_d, BC_BIT_XOR, ir, &expr->binary_expr.left);
				if(is_signed(expr->binary_expr.left)) {
					instruction(result, right, result, BC_I_DIV, ir, &expr->binary_expr.left);
				}
				else {
					instruction(result, right, result, BC_U_DIV, ir, &expr->binary_expr.left);
				}
			}
		} break;
		case '%':
		{
			if(is_float(expr->binary_expr.left))
			{
				Assert(false);
				//instruction(left, right, reg_d, BC_F_REM, ir, &expr->binary_expr.left);
			}
			else {
				Assert(false);
				instruction(reg_a, left, result, BC_MOVE_REG_TO_REG, ir, &expr->binary_expr.left);
				instruction(reg_c, right, right, BC_MOVE_REG_TO_REG, ir, &expr->binary_expr.left);
				instruction(reg_d, reg_d, reg_d, BC_BIT_XOR, ir, &expr->binary_expr.left);
				if(is_signed(expr->binary_expr.left)) {
					instruction(result, right, result, BC_I_REM, ir, &expr->binary_expr.left);
				}
				else {
					instruction(result, right, result, BC_U_REM, ir, &expr->binary_expr.left);
				}
			}
		} break;
		case tok_logical_is:
		{
			LG_FATAL("== is not implemented in bytecode");
		} break;
		case tok_logical_isnot:
		{
			LG_FATAL("!= is not implemented in bytecode");
		} break;
		case tok_logical_and:
		{
			LG_FATAL("&& is not implemented in bytecode");
		} break;
		case tok_logical_or:
		{
			LG_FATAL("|| is not implemented in bytecode");
		} break;
		case tok_bits_rshift:
		{
			if(is_signed(expr->binary_expr.left)) {
				instruction(left, right, result, BC_SAR, ir, &expr->binary_expr.left);
			} else {
				instruction(left, right, result, BC_SLR, ir, &expr->binary_expr.left);
			}
		} break;
		case tok_bits_lshift:
		{
			if(is_signed(expr->binary_expr.left)) {
				instruction(left, right, result, BC_SL, ir, &expr->binary_expr.left);
			} else {
				instruction(left, right, result, BC_SL, ir, &expr->binary_expr.left);
			}
		} break;
		case '<':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_FCMP_LESS_THAN, ir, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, result, BC_CMP_I_LESS_THAN, ir, &expr->binary_expr.left);
				} else {
					instruction(left, right, result, BC_CMP_U_LESS_THAN, ir, &expr->binary_expr.left);
				}
			}
		} break;
		case '>':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_FCMP_GREATER_THAN, ir, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, result, BC_CMP_I_GREATER_THAN, ir, &expr->binary_expr.left);
				} else {
					instruction(left, right, result, BC_CMP_U_GREATER_THAN, ir, &expr->binary_expr.left);
				}
			}
		} break;
		case tok_logical_gequal:
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_FCMP_GREATER_EQ, ir, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, result, BC_CMP_I_GREATER_EQ, ir, &expr->binary_expr.left);
				} else {
					instruction(left, right, result, BC_CMP_U_GREATER_EQ, ir, &expr->binary_expr.left);
				}
			}
		} break;
		case tok_logical_lequal:
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, result, BC_FCMP_LESS_EQ, ir, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, result, BC_CMP_I_LESS_EQ, ir, &expr->binary_expr.left);
				} else {
					instruction(left, right, result, BC_CMP_U_LESS_EQ, ir, &expr->binary_expr.left);
				}
			}
		} break;
		case tok_bits_and:
		{
			instruction(left, right, result, BC_BIT_AND, ir, &expr->binary_expr.left);
		} break;
		case tok_bits_xor:
		{
			instruction(left, right, result, BC_BIT_XOR, ir, &expr->binary_expr.left);
		} break;
		case tok_bits_or:
		{
			instruction(left, right, result, BC_BIT_OR, ir, &expr->binary_expr.left);
		} break;	
	}
	return result;
}

void
assign_to_bc(Ast_Node *node, IR *ir)
{
	size_t idx = 0;
	size_t size = get_type_size(node->assignment.decl_type);
	size_t position = 0;
	if(ir->allocated == NULL || shlen(ir->allocated) == 0)
		position = 0;
	else {
		size_t segment_size = shlen(ir->allocated);
		idx = segment_size;
		auto last_segment = ir->allocated[segment_size - 1].value;
		position = last_segment.position + last_segment.size;
	}
	i32 expr_register = expression_to_bc(node->assignment.rhs, ir);
	Data_Segment allocation;
	allocation.init_val = 0;
	allocation.position = position;
	allocation.size     = size;
	allocation.virtual_register = expr_register;
	shput(ir->allocated, node->assignment.token.identifier, allocation);
	instruction(idx, expr_register, expr_register, BC_STORE, ir, &node->assignment.decl_type);
}

IR
ast_to_bc_func_level_list(Ast_Node **list, Data_Segment_Table *global_table)
{
	IR result;
	result.bc = SDCreate(Bytecode);
	result.global_allocated_ref = global_table;
	result.allocated = NULL;
	result.reg_count = reg_invalid + 1; // starting from here so we know that
					    // anything under is a physical register instead of a virtual one
	size_t count = SDCount(list);
	instruction(reg_bp, -1, -1, BC_PUSH_REG, &result, type_64);
	instruction(reg_bp, reg_sp, reg_bp, BC_MOVE_REG_TO_REG, &result, type_64);
	for(size_t i = 0; i < count; ++i) {
		Ast_Node *node = list[i];
		ast_to_bc_func_level(node, &result);
	}

#if 1
	{
		result.bc_count = SDCount(result.bc);
		result.ds_out = NULL;
		print_bytecode(&result);
	}
#endif
	register_allocation_first_pass(&result);

	print_bytecode(&result);

	return result;
}

void
ast_to_bc_func_level(Ast_Node *node, IR *ir)
{
	switch((int)node->type)
	{
		case type_assignment:
		{
			assign_to_bc(node, ir);
		} break;
		case type_return:
		{
			i32 ret_reg = expression_to_bc(node->ret.expression, ir);
			instruction(ret_reg, -1, -1, BC_RETURN, ir, &node->ret.expression_type);
		} break;
	}
}

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
			bc.left_idx = ir->ds_count++;
			bc.right_idx = physical_register;
			bc.type = type;
			bc.result = physical_register;
			new_bc[*new_count] = bc;
			*new_count += 1;
			allocated[old_virtual_register].in_memory = bc.left_idx;

			i32 position = ir->ds_out[bc.left_idx - 1].position + ir->ds_out[bc.left_idx - 1].size;
			ir->ds_out[bc.left_idx] = {0, (u64)type->primitive.size, position};
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
	for(i32 i = reg_a; i < reg_sp; ++i)
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
		for(i32 i = reg_a; i < reg_sp; ++i)
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
		bc.left_idx = ir->ds_count++;
		bc.right_idx = oldest_update;
		bc.type = type_64;
		bc.result = oldest_update;
		new_bc[*new_count] = bc;
		*new_count += 1;
		allocated[old_v_reg].in_memory = bc.left_idx;

		i32 position = ir->ds_out[bc.left_idx - 1].position + ir->ds_out[bc.left_idx - 1].size;
		ir->ds_out[bc.left_idx] = {0, (u64)type->primitive.size, position};
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
			i32 saved_register = ir->ds_out[allocated[*virtual_register].in_memory].virtual_register;
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
			bc.left_idx = ir->ds_count++;
			bc.right_idx = *virtual_register; // @Note: this register is not actually virtual
			bc.type = type_64;
			bc.result = *virtual_register;
			new_bc[*new_count] = bc;
			*new_count += 1;
			allocated[actual_v_reg].in_memory = bc.left_idx;
		}
		allocated[actual_v_reg].in_register = reg_invalid;
	}
}

void
register_allocation_first_pass(IR *ir)
{
	Register_Allocation_Tracker trackers[reg_invalid];
	for(size_t i = 0; i < reg_invalid; ++i)
	{
		trackers[i].current_virtual_register = -1;
		trackers[i].last_updated = 0;
	}

	Virtual_Register_Tracker allocated[ir->reg_count];
	for(size_t i = 0; i < ir->reg_count; ++i)
	{
		allocated[i].in_memory = -1;
		allocated[i].in_register = reg_invalid;
	}

	size_t bc_count = SDCount(ir->bc);
	Bytecode *new_bc = (Bytecode *)AllocateCompileMemory(bc_count * sizeof(Bytecode) * 3);
	size_t new_count = 0;

	Data_Segment_Table *old_ds = ir->allocated;
	size_t old_ds_len = shlen(old_ds);
	Data_Segment *new_ds = (Data_Segment *)AllocateCompileMemory(sizeof(Data_Segment) * (old_ds_len + ir->reg_count));
	for(size_t i = 0; i < old_ds_len; ++i)
	{
		new_ds[i] = old_ds[i].value;
	}
	shfree(old_ds);
	ir->ds_out = new_ds;
	ir->ds_count = old_ds_len;

	for(size_t i = 0; i < bc_count; ++i)
	{
		Bytecode bc = ir->bc[i];
		if(bc.op == BC_LOAD_STACK)
		{
			i32 virtual_register = -1;
			for(size_t i = reg_a; i < reg_sp; ++i)
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
		else if(bc.op != BC_MOVE_VALUE_TO_REG && bc.op != BC_MOVE_FLOAT_TO_REG)
		{
			if(bc.op == BC_STORE)
			{
				allocated[bc.right_idx].in_memory = bc.left_idx;
			}
			else if(bc.left_idx != -1 && bc.op != BC_LOAD_STACK && bc.op != BC_LOAD_DATA_SEG)
			{
				check_and_do_register_allocation(&bc.left_idx, allocated, trackers, new_bc, &new_count, ir, false, bc.type, -1);
			}
			if(bc.right_idx != -1)
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
					bc.result = ir->ds_out[bc.right_idx].virtual_register;
				check_and_do_register_allocation(&bc.result, allocated, trackers, new_bc, &new_count, ir, true, bc.type, -1);

				allocated[was].in_register = (Register)bc.result;
				trackers[bc.result].current_virtual_register = was;
				trackers[bc.result].last_updated++;
			}
		}
		new_bc[new_count++] = bc;
	}

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
	SDFree(ir->bc);
	ir->bc = new_bc;
	ir->bc_count = new_count;
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
print_bytecode(IR *ir)
{
	size_t bc_count = ir->bc_count;
	size_t to_allocate = 128 * bc_count;
	char *buffer = (char *)AllocatePermanentMemory(to_allocate);
	size_t buffer_size = 0;
	for(size_t i = 0; i < bc_count; ++i)
	{
		Bytecode bc = ir->bc[i];
		switch(bc.op)
		{
			case BC_COPY:
			{
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t COPY %s\n", register_to_name(bc.result), register_to_name(bc.right_idx));
			} break;
			case BC_STORE:
			{
				Data_Segment ds;
				if(ir->ds_out)
					ds = ir->ds_out[bc.left_idx];
				else
					ds = ir->allocated[bc.left_idx].value;
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t STORE [%X] %s\n", register_to_name(bc.result), ds.position, register_to_name(bc.right_idx));
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
			case BC_LOAD_STACK:
			{
				Data_Segment ds;
				if(ir->ds_out)
					ds = ir->ds_out[bc.right_idx];
				else
					ds = ir->allocated[bc.right_idx].value;
				buffer_size += vstd_sprintf(buffer + buffer_size, "%s:\t LOAD [%X]\n", register_to_name(bc.result), ds.position);
			} break;
			case BC_LOAD_DATA_SEG:
			{
				Data_Segment ds;
				if(ir->ds_out)
					ds = ir->ds_out[bc.right_idx];
				else
					ds = ir->allocated[bc.right_idx].value;
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

