#include <Bytecode.h>
#include <Type.h>


IR *
ast_to_bytecode(Ast_Node *node)
{
	IR *result = SDCreate(IR);
	IR first;
	first.allocated = NULL;
	first.bc = SDCreate(Bytecode);
	// @NOTE: maybe not needed since we are at global scope?
	first.registers = SDCreate(Operand);
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
	Operand operand;
	operand.reg = reg_invalid;
	i32 index = SDCount(ir->registers);
	SDPush(ir->registers, operand);
	return index;
}

void
instruction(i32 left, i32 right, BC_OP op, IR *ir, Type_Info *type)
{
	Bytecode bc;
	bc.op = op;
	bc.left_idx = left;
	bc.right_idx = right;
	bc.type = type;
	SDPush(ir->bc, bc);
}

i32
val_to_register(Interp_Val *val, IR *ir)
{
	Bytecode bc;
	bc.opt = allocate_register(ir);
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
	return bc.opt;
}

i32
load_variable(u8 *id, IR *ir, Type_Info *type)
{
	BC_OP op = BC_LOAD_STACK;
	auto got = shgeti(ir->allocated, id);
	if(got == -1)
	{
		op = BC_LOAD_DATA_SEG;
		got = shgeti(ir->global_allocated_ref, id);
		Assert(got != -1);
	}
	i32 result = allocate_register(ir);
	instruction(result, got, op, ir, type);
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
		i32 expr_reg = expression_to_bc(expr->unary_expr.expression, ir);
		switch((int)expr->unary_expr.op.type)
		{
			case '@':
			{
				Assert(false);
			} break;
			case '*':
			{
				Bytecode bc;
				bc.op = BC_LOAD_MEMORY;
				bc.left_idx = allocate_register(ir);
				bc.right_idx = expr_reg;
				SDPush(ir->bc, bc);
				result = bc.left_idx;
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
	i32 result = left;
	switch((int)expr->binary_expr.op)
	{
		case '+':
		{
			if(expr->binary_expr.left.type == T_POINTER) {
				LG_FATAL("Pointer arithmetic is not implemented in bytecode");
			}
			else if(is_float(expr->binary_expr.left)) {
				instruction(left, right, BC_F_ADD, ir, &expr->binary_expr.left);
			}
			else  {
				instruction(left, right, BC_ADD, ir, &expr->binary_expr.left);
			}
		} break;
		case '-':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, BC_F_SUB, ir, &expr->binary_expr.left);
			}
			else {
				instruction(left, right, BC_SUB, ir, &expr->binary_expr.left);
			}
		} break;
		case '*':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, BC_F_MUL, ir, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left))
						instruction(left, right, BC_I_MUL, ir, &expr->binary_expr.left);
				else
						instruction(left, right, BC_U_MUL, ir, &expr->binary_expr.left);
			}
		} break;
		case '/':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, BC_F_DIV, ir, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, BC_I_DIV, ir, &expr->binary_expr.left);
				}
				else {
					instruction(left, right, BC_U_DIV, ir, &expr->binary_expr.left);
				}
			}
		} break;
		case '%':
		{
			if(is_float(expr->binary_expr.left))
			{
				instruction(left, right, BC_F_REM, ir, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, BC_I_REM, ir, &expr->binary_expr.left);
				}
				else {
					instruction(left, right, BC_U_REM, ir, &expr->binary_expr.left);
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
				instruction(left, right, BC_SAR, ir, &expr->binary_expr.left);
			} else {
				instruction(left, right, BC_SLR, ir, &expr->binary_expr.left);
			}
		} break;
		case tok_bits_lshift:
		{
			if(is_signed(expr->binary_expr.left)) {
				instruction(left, right, BC_SL, ir, &expr->binary_expr.left);
			} else {
				instruction(left, right, BC_SL, ir, &expr->binary_expr.left);
			}
		} break;
		case '<':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, BC_FCMP_LESS_THAN, ir, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, BC_CMP_I_LESS_THAN, ir, &expr->binary_expr.left);
				} else {
					instruction(left, right, BC_CMP_U_LESS_THAN, ir, &expr->binary_expr.left);
				}
			}
		} break;
		case '>':
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, BC_FCMP_GREATER_THAN, ir, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, BC_CMP_I_GREATER_THAN, ir, &expr->binary_expr.left);
				} else {
					instruction(left, right, BC_CMP_U_GREATER_THAN, ir, &expr->binary_expr.left);
				}
			}
		} break;
		case tok_logical_gequal:
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, BC_FCMP_GREATER_EQ, ir, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, BC_CMP_I_GREATER_EQ, ir, &expr->binary_expr.left);
				} else {
					instruction(left, right, BC_CMP_U_GREATER_EQ, ir, &expr->binary_expr.left);
				}
			}
		} break;
		case tok_logical_lequal:
		{
			if(is_float(expr->binary_expr.left)) {
				instruction(left, right, BC_FCMP_LESS_EQ, ir, &expr->binary_expr.left);
			}
			else {
				if(is_signed(expr->binary_expr.left)) {
					instruction(left, right, BC_CMP_I_LESS_EQ, ir, &expr->binary_expr.left);
				} else {
					instruction(left, right, BC_CMP_U_LESS_EQ, ir, &expr->binary_expr.left);
				}
			}
		} break;
		case tok_bits_and:
		{
			instruction(left, right, BC_BIT_AND, ir, &expr->binary_expr.left);
		} break;
		case tok_bits_xor:
		{
			instruction(left, right, BC_BIT_XOR, ir, &expr->binary_expr.left);
		} break;
		case tok_bits_or:
		{
			instruction(left, right, BC_BIT_OR, ir, &expr->binary_expr.left);
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
	if(ir->allocated == NULL || SDCount(ir->allocated) == 0)
		position = 0;
	else {
		size_t segment_size = shlen(ir->allocated);
		idx = segment_size;
		auto last_segment = ir->allocated[segment_size - 1].value;
		position = last_segment.position + last_segment.size;
	}
	Data_Segment allocation = {};
	allocation.init_val = 0;
	allocation.position = position;
	allocation.size     = size;
	shput(ir->allocated, node->assignment.token.identifier, allocation);
	i32 expr_register = expression_to_bc(node->assignment.rhs, ir);
	instruction(idx, expr_register, BC_MOVE_VALUE_TO_MEMORY, ir, &node->assignment.decl_type);
}

IR
ast_to_bc_func_level_list(Ast_Node **list, Data_Segment_Table *global_table)
{
	IR result;
	result.bc = SDCreate(Bytecode);
	result.registers = SDCreate(Operand);
	result.global_allocated_ref = global_table;
	shdefault(result.allocated, (Data_Segment){-1});
	size_t count = SDCount(list);
	Type_Info *type_64 = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	type_64->type = T_INTEGER;
	type_64->primitive.size = byte8;
	i32 left  = allocate_register(&result);
	i32 right = allocate_register(&result);
	result.registers[left].reg = reg_bp;
	result.registers[right].reg = reg_sp;
	instruction(left, 0, BC_PUSH_REG, &result, type_64);
	instruction(left, right, BC_MOVE_REG_TO_REG, &result, type_64);
	for(size_t i = 0; i < count; ++i) {
		Ast_Node *node = list[i];
		ast_to_bc_func_level(node, &result);
	}
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
			Type_Info *type_64 = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			type_64->type = T_INTEGER;
			type_64->primitive.size = byte8;
			i32 ret_reg = expression_to_bc(node->ret.expression, ir);
			i32 pop_req = allocate_register(ir);
			ir->registers[pop_req].reg = reg_bp;
			instruction(pop_req, 0, BC_POP_REG, ir, type_64);
			instruction(ret_reg, 0, BC_RETURN, ir, &node->ret.expression_type);
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
								bc.op = BC_NO_CAST;
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
								bc.op = BC_NO_CAST;
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
								bc.op = BC_NO_CAST;
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
								bc.op = BC_NO_CAST;
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
						bc.op = BC_NO_CAST;
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
						bc.op = BC_NO_CAST;
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
	bc.opt = allocate_register(ir);
	SDPush(ir->bc, bc);
	return bc.opt;
}

