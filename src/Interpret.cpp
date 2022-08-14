#include <Interpret.h>
#include <Parser.h>
#include <math.h>
#include <Basic.h>

#define DO_OP(out, op, l, r) \
	Assert(l.type.type != T_INVALID); Assert(r.type.type != T_INVALID);	\
	if(is_float(l.type))                   \
	{                                      \
		out.type.type = T_UNTYPED_FLOAT;   \
		out.tf64 = l.tf64 op r.tf64;       \
	}                                      \
	else if(is_integer(l.type))            \
	{                                      \
				out.type.type = T_UNTYPED_INTEGER;    \
				if(is_signed(l.type))                 \
				{                                     \
					out.type.primitive.size = byte8;  \
					out.ti64 = l.ti64 op r.ti64;      \
				}                                     \
				else                                  \
				{                                     \
					out.type.primitive.size = ubyte8; \
					out.tu64 = l.tu64 op r.tu64;      \
				}                          \
	}                                      \
	else                                   \
		Assert(false);                     


#define DO_U_OP(out, op, l) \
	Assert(l.type.type != T_INVALID)       \
	if(is_float(l.type))                   \
	{                                      \
		out.type.type = T_UNTYPED_FLOAT;   \
		out.tf64 = op l.tf64;              \
	}                                      \
	else if(is_integer(l.type))            \
	{                                      \
				out.type.type = T_UNTYPED_INTEGER;    \
				if(is_signed(l.type))                 \
				{                                     \
					out.type.primitive.size = byte8;  \
					out.ti64 = op l.ti64;             \
				}                                     \
				else                                  \
				{                                     \
					out.type.primitive.size = ubyte8; \
					out.tu64 = op l.tu64;             \
				}                          \
	}                                      \
	else                                   \
		Assert(false);                     

#include <stack>
static std::stack<Interp_Table *> symbol_scope;

Interp_Table *
create_scope()
{
	Interp_Table *new_table = NULL;
	sh_new_arena(new_table);
	return new_table;
}

void
destroy_scope()
{
	Interp_Table *old_table = symbol_scope.top();
	symbol_scope.pop();
	shfree(old_table);
}

Interp_Val
perform_cast(Interp_Val operand, Type_Info cast)
{
	if(is_float(operand.type))
	{
		Assert(is_integer(cast));
		if(is_signed(cast))
		{
			operand.ti64 = (i64)operand.tf64;
		}
		else 
		{
			operand.tu64 = (u64)operand.tf64;
		}
	}
	else if(is_integer(operand.type))
	{
		if(is_signed(operand.type))
		{
			if(is_float(cast))
			{
				operand.tf64 = (f64)operand.ti64;
			}
			else if(cast.type == T_POINTER)
			{
				operand.pointed = (void *)operand.ti64;
			}
			else if(is_integer(cast))
			{
				if(is_signed(cast))
				{
					return operand;
				}
				else
				{
					operand.tu64 = operand.ti64;
				}
			}
		}
		else
		{
			if(is_float(cast))
			{
				operand.tf64 = (f64)operand.tu64;
			}
			else if(cast.type == T_POINTER)
			{
				operand.pointed = (void *)operand.tu64;
			}
			else if(is_integer(cast))
			{
				if(is_signed(cast))
				{
					operand.ti64 = (u64)operand.tu64;
				}
				else
				{
					return operand;
				}
			}
		}
	}
	else if (operand.type.type == T_POINTER)	
	{
		if(is_integer(cast))
		{
			if(is_signed(cast))
				operand.ti64 = (i64)operand.pointed;
			else
				operand.tu64 = (u64)operand.pointed;
		}
		else if(cast.type == T_POINTER)
			return operand;
		else Assert(false);
	}
	else
		Assert(false);
	return operand;
}

void
interp_push_scope()
{
	symbol_scope.push(create_scope());
}

void
interp_add_symbol(u8 *identifier, Interp_Val value)
{
	auto scope = symbol_scope.top();
	shput(scope, identifier, value);
}

Interp_Val *
interp_look_up_symbol(u8 *identifier)
{
	size_t scope_count = symbol_scope.size();
	Interp_Table *scopes[scope_count];
	size_t scope_i = 0;
	memset(scopes, 0, scope_count * sizeof(Interp_Table *));
	Interp_Val *got = NULL;
	while(!symbol_scope.empty())
	{
		Interp_Table *table = symbol_scope.top();
		symbol_scope.pop();
		scopes[scope_i++] = table;
		ptrdiff_t id_idx = shgeti(table, identifier);
		if(id_idx != -1)
		{
			got = &table[id_idx].value;
		}
	}
	
	for(i64 i = scope_count - 1; i >= 0; --i)
	{
		symbol_scope.push(scopes[i]);
	}
	
	return got;
}

void
initialize_interpreter()
{
	Interp_Table *file_scope = create_scope();
	symbol_scope.push(file_scope);
}

Interp_Val
interpret_func_call(Ast_Node *node, b32 *failed)
{
	Interp_Val operand = interpret_expression(node->func_call.operand, failed);
	Interp_Val result = interpret_function(operand, node->func_call, failed);
	if(*failed)
		LG_ERROR("Cannot interpret function %s, it might be an external function",
				operand.type.func->function.identifier.name);
	return result;
}

Interp_Val *
interpret_lhs(Ast_Node *lhs)
{
	switch((int)lhs->type)
	{
		case type_unary_expr:
		{
			Assert(lhs->unary_expr.op.type == tok_star);
			Assert(lhs->unary_expr.expr_type.type == T_POINTER);
			Interp_Val *id = interpret_lhs(lhs->unary_expr.expression);
			return (Interp_Val *)id->pointed;	
		} break;
		case type_identifier:
		{
			return interp_look_up_symbol(lhs->identifier.name);
		} break;
		case type_index:
		{
			Interp_Val *indexed = interpret_lhs(lhs->index.operand);
			b32 failed = false;
			Interp_Val index = interpret_expression(lhs->index.expression, &failed);
			if(failed)
			{
				// @TODO: Hack
				raise_interpret_error("Indexing expression cannot be interpreted", 
						lhs->index.token);
				LG_FATAL(".");
			}
			Assert(is_integer(index.type));
			if(is_signed(index.type))
			{
				i64 index_val = index.ti64;
				if(index_val < 0)
				{
					// @TODO: Hack
					raise_interpret_error("Indexing expression cannot be a negative value", 
							lhs->index.token);
					LG_FATAL(".");
				}
				return ((Interp_Val *)indexed->pointed) + index_val;
			}
			else
			{
				return ((Interp_Val *)indexed->pointed) + index.tu64;
			}
		} break;
	}
	Assert(false);
	return NULL;
}

void
interpret_assignment(Ast_Node *node, b32 *failed)
{
	Interp_Val result = interpret_expression(node->assignment.rhs, failed);
	void *result_loc = result.location;
	if(!result_loc)
		result_loc = &result;
	if(node->assignment.is_declaration)
	{
		Assert(node->assignment.lhs->type == type_identifier);
		size_t type_size = 1 * sizeof(Interp_Val);
		if(node->assignment.decl_type.type == T_ARRAY)
			type_size = (node->assignment.decl_type.array.elem_count + 1) * sizeof(Interp_Val);

		Interp_Val *location = (Interp_Val *)AllocateCompileMemory(type_size);

		size_t expr_size = 1 * sizeof(Interp_Val);
		if(result.type.type == T_ARRAY)
			expr_size = result.type.array.elem_count * sizeof(Interp_Val);

		Assert(type_size >= expr_size);
		if(!is_float(result.type) && !is_integer(result.type))
		{
			memcpy(location, &result, sizeof(Interp_Val));
			location->location = location;
			location->type = node->assignment.decl_type;
			location->pointed = (Interp_Val *)location->location + 1;
			memcpy(location->pointed, result.pointed, expr_size);
			Interp_Val *fill = (Interp_Val *)((u8 *)location->pointed + expr_size);
			size_t to_fill = (type_size - expr_size) / sizeof(Interp_Val);
			Interp_Val integer = {};
			integer.type.type = T_UNTYPED_INTEGER;
			integer.ti64 = 0;
			for (size_t i = 0; i < to_fill; ++i)
			{
				fill[i] = integer;
			}
		}
		else
		{
			memcpy(location, result_loc, expr_size);
			location->location = location;
			location->type = node->assignment.decl_type;
		}

		interp_add_symbol(node->assignment.lhs->identifier.name, *location);
	}
	else
	{
		Interp_Val *lhs_ptr = interpret_lhs(node->assignment.lhs);
		// @NOTE: covers all types
		lhs_ptr->tu64 = result.tu64;
	}
}

b32
val_to_bool(Interp_Val val)
{
	b32 is_true = false;
	if(is_integer(val.type))
		is_true = val.tu64 > 0;
	else
		is_true = val.tf64 > 0;
	return is_true;
}

Interp_Val
interpret_statement(Ast_Node *node, b32 *failed, Token_Iden *token, i32 scope_count,
		b32 *returned, Ast_Node *node_list, size_t *idx)
{
	Interp_Val result = {};
	if(*failed)
	{
		raise_interpret_error("Unexpected end of function", *token);
		return result;
	}

	switch ((int)node->type)
	{
		case type_func_call:
		{
			result = interpret_func_call(node, failed);
		} break;
		case type_assignment:
		{
			interpret_assignment(node, failed);
		} break;
		case type_scope_start:
		{
			interp_push_scope();
			*token = node->scope_desc.token;
			scope_count++;
		} break;
		case type_scope_end:
		{
			destroy_scope();
			*token = node->scope_desc.token;
			scope_count--;
		} break;
		case type_if:
		{
			*token = node->condition.token;
			result = interpret_expression(node->condition.expr, failed);
			b32 is_true = val_to_bool(result);
			if(is_true)
			{
				interp_push_scope();
				*idx += 1;
				Ast_Node *next_node = node_list->statements.list[*idx];
				if(next_node->type == type_scope_start)
				{
					result = interpret_statement_list(next_node->scope_desc.body, failed, 
							token, scope_count, returned);
				}
				else
				{
					result = interpret_statement(next_node, failed, token, 0, returned,
							node_list, idx);
					destroy_scope();
				}
				if(*returned)
				{
					destroy_scope();
					return result;
				}
				destroy_scope();
			}
		} break;
		case type_for:
		{
			interp_push_scope();
			*token = node->for_loop.token;
			if(node->for_loop.expr1)
				interpret_assignment(node->for_loop.expr1, failed);
			Interp_Val expr2 = interpret_expression(node->for_loop.expr2, failed);
			b32 is_true = val_to_bool(expr2);

			
			*idx += 1;
			Ast_Node *next_node = node_list->statements.list[*idx];
			while(is_true)
			{
				// @TODO: Hack?
				interp_push_scope();
				if(next_node->type == type_scope_start)
				{
					result = interpret_statement_list(next_node->scope_desc.body, failed, 
							token, scope_count, returned);
				}
				else
				{
					result = interpret_statement(next_node, failed, token,
							scope_count, returned, node_list, idx);
					destroy_scope();
				}
				if(*returned)
					return result;
				
				interpret_expression(node->for_loop.expr3, failed);
				Interp_Val expr2 = interpret_expression(node->for_loop.expr2, failed);
				is_true = val_to_bool(expr2);
			}
			destroy_scope();
		} break;
		case type_return:
		{
			*returned = true;
			*token = node->ret.token;
			result = interpret_expression(node->ret.expression, failed);
			return result;
		} break;
		default:
		{
			LG_FATAL("Incorrect statement");
		} break;
	}
	return result;
}

Interp_Val
interpret_statement_list(Ast_Node *node, b32 *failed, Token_Iden *token, i32 scope_count,
		b32 *returned)
{
	Interp_Val result = {};
	Ast_Node **list = node->statements.list;
	size_t count = SDCount(list);
	for(size_t i = 0; i < count; ++i)
	{
		result = interpret_statement(list[i], failed, token, scope_count, returned,
				node, &i);
		if(*returned)
			break;
	}
	return result;
}

Interp_Val
interpret_function(Interp_Val func, Ast_Call call, b32 *failed)
{
	Interp_Val result = {};
	Ast_Node *f_node = (Ast_Node *)func.pointed;
	Assert(f_node->type == type_func);
	interp_push_scope();

	Ast_Node *statement = f_node->function.body;
	if(!statement)
	{
		*failed = true;
		return result;
	}

	auto args = f_node->function.arguments;
	size_t arg_count = SDCount(args);
	for (size_t i = 0; i < arg_count; ++i)
	{
		Ast_Variable arg = args[i]->variable;
		// @TODO: Do a heap allocator
		void *location = AllocatePermanentMemory((get_type_size(arg.type) + 1)
				* sizeof(Interp_Val));
		Interp_Val *the_arg = (Interp_Val *)location;
		the_arg->type = arg.type;
		the_arg->location = location;
		if(the_arg->type.type == T_ARRAY)
			the_arg->pointed = (Interp_Val *)location + 1;

		interp_add_symbol(arg.identifier.name, *the_arg);
	}
	
	Token_Iden token = {};
	b32 returned = false;
	result = interpret_statement_list(statement->scope_desc.body, failed, &token, 0, &returned);
	if(!returned)
	{
		*failed = true;
		raise_interpret_error("Function did not return", token);
	}
	destroy_scope();
	return result;
}

Interp_Val
str_to_interp_val(u8 *str)
{
	Interp_Val result = {};
	size_t str_len = vstd_strlen((char *)str);
	for(size_t i = 0; i < str_len; ++i)
	{
		if(str[i] == '.')
		{
			result.type.type = T_UNTYPED_FLOAT;
			result.type.primitive.size = real64;
			result.tf64 = vstd_str_to_double((char *)str);
			return result;
		}
	}

	result.type.type = T_UNTYPED_INTEGER;
	if(str[0] != '-' && str_len > 19)
	{
		result.type.primitive.size = ubyte8;
		result.tu64 = str_to_u64((char *)str);
		return result;
	}
	result.type.primitive.size = byte8;
	result.ti64 = str_to_i64((char *)str);
	return result;
}

void
interpret_add_function(Symbol func_sym)
{
	Interp_Table *top = symbol_scope.top();
	symbol_scope.pop();
	Interp_Val func = {};
	func.type.type = T_FUNC;
	func.pointed = func_sym.node;
	shput(top, func_sym.identifier, func);
	i32 idx = shgeti(top, func_sym.identifier);
	Assert(idx != -1);
	
	top[idx].value.location = &top[idx].value;
	symbol_scope.push(top);
}

Interp_Val
interpret_operand(Ast_Node *node, b32 *failed)
{
	Interp_Val result = {};
	if(*failed)
		return result;

	switch((int)node->type)
	{
		case type_identifier:
		{
			Interp_Val *location = interp_look_up_symbol(node->identifier.name);
			if(location == NULL)
			{
				*failed = true;
				return result;
			}
			result = *location;
			result.location = location;
		} break;
		case type_literal:
		{
			result = str_to_interp_val(node->atom.identifier.name);
		} break;
		case type_func_call:
		{
			result = interpret_func_call(node, failed);
		} break;
		case type_index:
		{
			Assert(result.location);
			Interp_Val *ptr = (Interp_Val *)result.location;
			Interp_Val operand = interpret_operand(node->index.operand, failed);

			Assert(is_integer(operand.type));
			void *pointed = NULL;
			if(is_signed(operand.type))
			{
				pointed = ptr + operand.ti64;
			}
			else
			{
				pointed = ptr + operand.ti64;
			}
			result = *(Interp_Val *)pointed;
			// @NOTE: not sure if it's needed
			result.location = pointed;
		} break;
		case type_postfix:
		{
			Interp_Val operand = interpret_operand(node->postfix.operand, failed);
			Assert(operand.location);

			Interp_Val *location = (Interp_Val *)operand.location;
			Assert(is_type_primitive(location->type));
			// @NOTE: store the original value as this is a postfix operation
			result = *location;
			Interp_Val out = {};
			Interp_Val tmp = *location;
			// @NOTE: do the postfix op on a tmp variable
			if(node->postfix.token.type == tok_plusplus)
			{
				DO_U_OP(out, ++, tmp);
			}
			else if(node->postfix.token.type == tok_minusminus)
			{
				DO_U_OP(out, --, tmp);
			}
			else
				Assert(false);

			// @NOTE: put the temp variable back in
			location->tu64 = tmp.tu64;
		}
		case type_array_list:
		{
			size_t elem_count = SDCount(node->array_list.list);
			Interp_Val *array = (Interp_Val *)AllocatePermanentMemory(sizeof(Interp_Val)
					* (elem_count + 1));
			array->location = array;
			array->pointed = array + 1;
			Type_Info type = {T_ARRAY};
			type.identifier = (u8 *)"array_list";
			type.array.elem_count = elem_count;
			type.array.type = node->array_list.type.array.type;
			array->type = type;
			for(size_t i = 0; i < elem_count; ++i)
			{
				Interp_Val element = interpret_expression(node->array_list.list[i], failed);
				element.type = *node->array_list.type.array.type;
				*(array + i + 1) = element;
			}
			result = *array;
		} break;
		default:
		{
			LG_FATAL("Interpreter unkown operand type: %d", node->type);
		} break;
	}
	return result;
}

Interp_Val
interpret_unary(Ast_Node *node, b32 *failed)
{
	Interp_Val result = {};
	if(*failed)
		return result;
	switch(node->type)
	{
		case type_unary_expr:
		{
			Interp_Val operand = interpret_expression(node->unary_expr.expression, failed);
			switch((int)node->unary_expr.op.type)
			{
				case tok_plusplus:
				{
					DO_U_OP(result, ++, operand);
					if(operand.location)
						((Interp_Val *)operand.location)->tu64 = result.tu64;
				} break;
				case tok_minusminus:
				{
					DO_U_OP(result, --, operand);
					if(operand.location)
						((Interp_Val *)operand.location)->tu64 = result.tu64;
				} break;
				case tok_minus:
				{
					DO_U_OP(result, -, operand);
				} break;
				case tok_not:
				{
					DO_U_OP(result, !, operand);
				} break;
				case '@':
				{
					Assert(operand.location);
					result.type.type = T_POINTER;
					result.pointed = operand.location;
				} break;
				case '*':
				{
					Assert(operand.type.type == T_POINTER);
					Assert(operand.pointed);
					result = *(Interp_Val *)operand.pointed;
				} break;
			}
		} break;
		case type_cast:
		{
			result = interpret_expression(node->cast.expression, failed);
			result = perform_cast(result, node->cast.type);
			result.type = node->cast.type;
		} break;
		default:
		{
			result = interpret_operand(node, failed);
		} break;
	}
	return result;
}

Interp_Val
interpret_binary(Ast_Node *node, b32 *failed)
{
	if(node->type == type_binary_expr)
	{
		Interp_Val result = {};
		if(*failed)
			return result;

		Interp_Val left = interpret_binary(node->left, failed);
		Interp_Val right = interpret_binary(node->right, failed);
		// @NOTE: not sure if we need those
		// auto left_type = node->binary_expr.left;
		// auto right_type = node->binary_expr.right;


		switch ((int)node->binary_expr.op)
		{
			case '+':
			{
				DO_OP(result, +, left, right);
			} break;
			case '-':
			{
				DO_OP(result, -, left, right);
			} break;
			case '*':
			{
				DO_OP(result, *, left, right);
			} break;
			case '/':
			{
				DO_OP(result, /, left, right);
			} break;
			case '%':
			{
				// @NOTE: why is fmod even a function...
				if(is_float(node->binary_expr.left))
				{
					result.type.type = T_UNTYPED_FLOAT;
					if(is_float(node->binary_expr.right))
						result.tf64 = fmod(left.tf64, right.tf64);
					else
						result.tf64 = fmod(left.tf64,  (f64)right.ti64);
				}
				else
				{
					result.type.type = T_UNTYPED_INTEGER;
					if(is_float(node->binary_expr.right))
					{
						result.type.type = T_UNTYPED_FLOAT;
						result.tf64 = fmod(left.tf64, right.tf64);
					}
					else
						result.ti64 = left.ti64 % right.ti64;
				}
			} break;
			case tok_logical_is:
			{
				DO_OP(result, ==, left, right);
			} break;
			case tok_logical_isnot:
			{
				DO_OP(result, !=, left, right);
			} break;
			case tok_bits_rshift:
			{
				result.type.type = T_UNTYPED_INTEGER;
				if(is_signed(left.type))
				{
					result.type.primitive.size = byte8;
					result.ti64 = left.ti64 >> right.ti64;
				}
				else
				{
					result.type.primitive.size = ubyte8;
					result.tu64 = left.tu64 >> right.tu64;
				}
			} break;
			case tok_bits_lshift:
			{
				result.type.type = T_UNTYPED_INTEGER;
				if(is_signed(left.type))
				{
					result.type.primitive.size = byte8;
					result.ti64 = left.ti64 << right.ti64;
				}
				else
				{
					result.type.primitive.size = ubyte8;
					result.tu64 = left.tu64 << right.tu64;
				}
			} break;
			case '<':
			{
				DO_OP(result, <, left, right);
			} break;
			case '>':
			{
				DO_OP(result, >, left, right);
			} break;
			case tok_logical_lequal:
			{
				DO_OP(result, <=, left, right);
			} break;
			case tok_logical_gequal:
			{
				DO_OP(result, >=, left, right);
			} break;
			case tok_bits_and:
			{
				result.type.type = T_UNTYPED_INTEGER;
				if(is_signed(left.type))
				{
					result.type.primitive.size = byte8;
					result.ti64 = left.ti64 & right.ti64;
				}
				else
				{
					result.type.primitive.size = ubyte8;
					result.tu64 = left.tu64 & right.tu64;
				}
			} break;
			case tok_bits_xor:
			{
				result.type.type = T_UNTYPED_INTEGER;
				if(is_signed(left.type))
				{
					result.type.primitive.size = byte8;
					result.ti64 = left.ti64 ^ right.ti64;
				}
				else
				{
					result.type.primitive.size = ubyte8;
					result.tu64 = left.tu64 ^ right.tu64;
				}
			} break;
			case tok_bits_or:
			{
				result.type.type = T_UNTYPED_INTEGER;
				if(is_signed(left.type))
				{
					result.type.primitive.size = byte8;
					result.ti64 = left.ti64 | right.ti64;
				}
				else
				{
					result.type.primitive.size = ubyte8;
					result.tu64 = left.tu64 | right.tu64;
				}
			} break;	
			default:
			{
				LG_FATAL("Unimplemented binary operator %c", node->binary_expr.op);
			} break;
		}
		return result;
	}
	else
		return interpret_unary(node, failed);
}

Interp_Val
interpret_expression(Ast_Node *expr, b32 *failed)
{
	return interpret_binary(expr, failed);
}

