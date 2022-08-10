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
	
	for(size_t i = 0; i < scope_i; ++i)
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

void
interpret_assignment(Ast_Node *node, b32 *failed)
{
	Interp_Val result = interpret_expression(node->assignment.rhs, failed);
	if(node->assignment.is_declaration)
	{
		Assert(node->assignment.lhs->type == type_identifier);
		interp_add_symbol(node->assignment.lhs->identifier.name, result);
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
		b32 *returned)
{
	Interp_Val result = {};
	if(*failed)
	{
		raise_interpret_error("Unexpected end of function", *token);
		return result;
	}

	if(scope_count < 0)
		return result;

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
			result = interpret_expression(node->condition, failed);
			b32 is_true = val_to_bool(result);
			if(is_true)
			{
				result = interpret_statement(node->right->left, failed, token, 0, returned);
				if(*returned)
					return result;
			}
		} break;
		case type_for:
		{
			if(node->for_loop.expr1)
				interpret_assignment(node->for_loop.expr1, failed);
			Interp_Val expr2 = interpret_expression(node->for_loop.expr2, failed);
			b32 is_true = val_to_bool(expr2);
			while(is_true)
			{
				result = interpret_statement(node->left->right, failed,
						token, scope_count, returned);
				if(*returned)
					return result;
				
				interpret_expression(node->for_loop.expr3, failed);
				Interp_Val expr2 = interpret_expression(node->for_loop.expr2, failed);
				is_true = val_to_bool(expr2);
			}
			node = node->left;
		} break;
		case type_return:
		{
			return result;
		} break;
		default:
		{
			
		} break;
	}
	interpret_statement(node->left, failed, token, scope_count, returned);
	return result;
}

Interp_Val
interpret_function(Interp_Val func, Ast_Call call, b32 *failed)
{
	Interp_Val result = {};
	Ast_Node *f_node = (Ast_Node *)func.pointed;
	Assert(f_node->type == type_func);
	interp_push_scope();

	Ast_Node *statement = f_node->left->right;
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
	result = interpret_statement(statement, failed, &token, 0, &returned);
	if(!returned)
	{
		*failed = true;
		raise_interpret_error("Function did not return", token);
	}
	statement = statement->right;
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
interpret_add_function(Symbol *func_sym)
{
	Interp_Table *top = symbol_scope.top();
	Interp_Val func = {};
	func.type.type = T_FUNC;
	func.pointed = func_sym->node;
	shput(top, func_sym->identifier, func);
	i32 idx = shgeti(top, func_sym->identifier);
	Assert(idx != -1);
	
	top[idx].value.location = &top[idx].value;
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

			// @NOTE: put the temp variable back in and restore it's type
			*location = tmp;
			location->type = result.type;
		}
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
				} break;
				case tok_minusminus:
				{
					DO_U_OP(result, --, operand);
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

