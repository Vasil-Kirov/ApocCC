#if 0
#include <Interpret.h>
#include <Parser.h>
#include <math.h>


Any_Val
evaluate_const_expression(Ast_Node *node)
{
	if(node->type == type_binary_expr)
	{
		Any_Val left = evaluate_const_expression(node->left);
		Any_Val right = evaluate_const_expression(node->right);
		auto left_type = node->binary_expr.left;
		auto right_type = node->binary_expr.right;
		Type_Info float_type = {T_FLOAT};
		float_type.primitive.size = real64;
		Type_Info int_type = {T_INTEGER};
		int_type.primitive.size = byte8;
		f64 left_f64 = 0;
		i64 left_i64 = 0;
		f64 right_f64 = 0;
		i64 right_i64 = 0;
		if(is_float(left_type))
			left_f64 = left.tf64;
		else if(is_integer(left_type))
			left_i64 = left.ti64;
		else
			Assert(false);

		if(is_float(right_type))
			right_f64 = right.tf64;
		else if(is_integer(right_type))
			right_i64 = right.ti64;
		else
			Assert(false);

		Any_Val result = {};
		switch ((int)node->binary_expr.op)
		{
			case '+':
			{
				if(is_float(node->binary_expr.left))
				{
					result.type.type = T_UNTYPED_FLOAT;
					if(is_float(node->binary_expr.right))
						result.tf64 = left_f64 + right_f64;
					else
						result.tf64 = left_f64 + (f64)right_i64;
				}
				else
				{
					result.type.type = T_UNTYPED_INTEGER;
					if(is_float(node->binary_expr.right))
					{
						result.type.type = T_UNTYPED_FLOAT;
						result.tf64 = (f64)left_i64 + right_f64;
					}
					else
						result.ti64 = left_i64 + right_i64;
				}
			} break;
			case '-':
			{
				if(is_float(node->binary_expr.left))
				{
					result.type.type = T_UNTYPED_FLOAT;
					if(is_float(node->binary_expr.right))
						result.tf64 = left_f64 - right_f64;
					else
						result.tf64 = left_f64 - (f64)right_i64;
				}
				else
				{
					result.type.type = T_UNTYPED_INTEGER;
					if(is_float(node->binary_expr.right))
					{
						result.type.type = T_UNTYPED_FLOAT;
						result.tf64 = (f64)left_i64 - right_f64;
					}
					else
						result.ti64 = left_i64 - right_i64;
				}
			} break;
			case '*':
			{
				if(is_float(node->binary_expr.left))
				{
					result.type.type = T_UNTYPED_FLOAT;
					if(is_float(node->binary_expr.right))
						result.tf64 = left_f64 + right_f64;
					else
						result.tf64 = left_f64 + (f64)right_i64;
				}
				else
				{
					result.type.type = T_UNTYPED_INTEGER;
					if(is_float(node->binary_expr.right))
					{
						result.type.type = T_UNTYPED_FLOAT;
						result.tf64 = (f64)left_i64 + right_f64;
					}
					else
						result.ti64 = left_i64 + right_i64;
				}
			} break;
			case '/':
			{
				if(is_float(node->binary_expr.left))
				{
					result.type.type = T_UNTYPED_FLOAT;
					if(is_float(node->binary_expr.right))
						result.tf64 = left_f64 / right_f64;
					else
						result.tf64 = left_f64 / (f64)right_i64;
				}
				else
				{
					result.type.type = T_UNTYPED_INTEGER;
					if(is_float(node->binary_expr.right))
					{
						result.type.type = T_UNTYPED_FLOAT;
						result.tf64 = (f64)left_i64 / right_f64;
					}
					else
						result.ti64 = left_i64 / right_i64;
				}
			} break;
			case '%':
			{
				if(is_float(node->binary_expr.left))
				{
					result.type.type = T_UNTYPED_FLOAT;
					if(is_float(node->binary_expr.right))
						result.tf64 = fmod(left_f64, right_f64);
					else
						result.tf64 = fmod(left_f64,  (f64)right_i64);
				}
				else
				{
					result.type.type = T_UNTYPED_INTEGER;
					if(is_float(node->binary_expr.right))
					{
						result.type.type = T_UNTYPED_FLOAT;
						result.tf64 = fmod((f64)left_i64, right_f64);
					}
					else
						result.ti64 = left_i64 % right_i64;
				}
			} break;
			case tok_logical_is:
			{
				if(is_float(node->binary_expr.left))
				{
					result.type.type = T_UNTYPED_FLOAT;
					if(is_float(node->binary_expr.right))
						result.tf64 = left_f64 == right_f64;
					else
						result.tf64 = left_f64 == (f64)right_i64;
				}
				else
				{
					result.type.type = T_UNTYPED_INTEGER;
					if(is_float(node->binary_expr.right))
					{
						result.type.type = T_UNTYPED_FLOAT;
						result.tf64 = (f64)left_i64 == right_f64;
					}
					else
						result.ti64 = left_i64 == right_i64;
				}
			} break;
			case tok_logical_isnot:
			{
				if(is_float(node->binary_expr.left))
				{
					result.type.type = T_UNTYPED_FLOAT;
					if(is_float(node->binary_expr.right))
						result.tf64 = left_f64 != right_f64;
					else
						result.tf64 = left_f64 != (f64)right_i64;
				}
				else
				{
					result.type.type = T_UNTYPED_INTEGER;
					if(is_float(node->binary_expr.right))
					{
						result.type.type = T_UNTYPED_FLOAT;
						result.tf64 = (f64)left_i64 != right_f64;
					}
					else
						result.ti64 = left_i64 != right_i64;
				}
			} break;
			case tok_bits_rshift:
			{
						result.ti64 = left_i64 + right_i64;
			} break;
			case tok_bits_lshift:
			{
				result = backend.builder->CreateLShr(left, right);
			} break;
			case '<':
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFCmpULT(left, right);
				else if(is_signed(node->binary_expr.left))
					result = backend.builder->CreateICmpSLT(left, right);
				else
					result = backend.builder->CreateICmpULT(left, right);
			} break;
			case '>':
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFCmpUGT(left, right);
				else if(is_signed(node->binary_expr.left))
					result = backend.builder->CreateICmpSGT(left, right);
				else
					result = backend.builder->CreateICmpUGT(left, right);
			} break;
			case tok_bits_and:
			{
				result = backend.builder->CreateAnd(left, right);
			} break;
			case tok_bits_xor:
			{
				result = backend.builder->CreateXor(left, right);
			} break;
			case tok_bits_or:
			{
				result = backend.builder->CreateOr(left, right);
			} break;	
			default:
			{
				LG_FATAL("Unimplemented binary operator %c", node->binary_expr.op);
			} break;
		}
		Assert(result);
		if(is_logical_op(node->binary_expr.op))
		{
			Type_Info boolean_type = {};
			boolean_type.type = T_BOOLEAN;

			result = backend.builder->CreateCast(Instruction::CastOps::Trunc, result, apoc_type_to_llvm(boolean_type, backend), "boolean_expr");
		}
		else if(has_casted)
		{
			Type_Info to = {};
			if(is_untyped(node->binary_expr.left))
			{
				if(is_untyped(node->binary_expr.right))
					return result;
				to = node->binary_expr.right;
			}
			else
				to = node->binary_expr.left;
			
			result = create_cast(to, from_cast, result);
		}

		return result;
	}
	else
		return generate_unary(f, node, func);
}

Any_Val
evaluate_constant_expr(Ast_Node *expr)
{
	evalu
}

#endif