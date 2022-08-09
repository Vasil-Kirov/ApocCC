#include <Interpret.h>
#include <Parser.h>
#include <math.h>

#define DO_OP(out, op, l, r) \
	Assert(l.type.type != T_INVALID); Assert(r.type.type != T_INVALID);	\
	if(is_float(l.type))                   \
	{                                      \
		out.type.type = T_UNTYPED_FLOAT;   \
		out.tf64 = l.tf64 op r.tf64;       \
	}                                      \
	else if(is_integer(l.type))            \
	{                                      \
				out.type.type = T_UNTYPED_INTEGER;   \
				if(is_signed(l.type))                \
				{                                    \
					out.type.primitive.size = byte8; \
					out.ti64 = l.ti64 op r.ti64;     \
				}                          \
				else                       \
				{                          \
					out.type.primitive.size = ubyte8; \
					out.ti64 = l.tu64 op r.tu64;      \
				}                          \
	}                                      \
	else                                   \
		Assert(false);                     \

Any_Val
interpret_operand(Ast_Node *node)
{
	
}

Any_Val
interpret_unary(Ast_Node *node)
{
	Any_Val result;
	switch(node->type)
	{
		case type_unary_expr:
		{
			
		} break;
		case type_cast:
		{

		} break;
		default:
		{
			result = interpret_operand(node);
		} break;
	}
	return result;
}

Any_Val
interpret_binary(Ast_Node *node)
{
	if(node->type == type_binary_expr)
	{
		Any_Val left = interpret_binary(node->left);
		Any_Val right = interpret_binary(node->right);
		// @NOTE: not sure if we need those
		// auto left_type = node->binary_expr.left;
		// auto right_type = node->binary_expr.right;

		Any_Val result = {};
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
		return interpret_unary(node);
}

Any_Val
interpret_expression(Ast_Node *expr)
{
	return interpret_binary(expr);
}

