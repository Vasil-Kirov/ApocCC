#include <Parser.h>

auto_number
add_auto_numbers(auto_number a, auto_number b)
{
	auto_number result = {};
	result.type = a.type;
	switch(a.type)
	{
		case auto_signed:
		{
			result.number.signed_long = a.number.signed_long + b.number.signed_long;
		}break;
		default:
		{
			LG_FATAL("not implemented");
		}break;
	}
	return result;
}

auto_number
evaluate_expression(ast_expression *tree)
{
	if(tree->left != 0)
	{
		tree->number = evaluate_expression(tree->left);
	}
	switch(tree->type)
	{
		case type_constant:
		{
			return tree->number;
		}break;
		case type_add:
		{
			tree->number = add_auto_numbers(tree->number, evaluate_expression(tree->right));
		}break;
		default:
		{
			LG_FATAL("not implemented");
		}break;
	}
	return tree->number;
}


// 2 * 3 + 4
ast_expression
tokens_to_ast_expression(i16 *tokens, i16 amount)
{
	ast_expression result = {};
	ast_expression *current = &result;
	for(i32 token_index = 0; token_index < amount; ++token_index)
	{
		ast_expression *new_expression = AllocateCompileMemory(sizeof(ast_expression));
		switch(tokens[token_index])
		{
			case tok_number:
			{
				new_expression->number.type = auto_real64;
				new_expression->number.number.real64 = vstd_str_to_double((char *)get_next_identifier());
			}break;
			case type_add:
			{
				new_expression->left = type_add;
			}break;
			case type_subtract:
			{
				new_expression->left = type_subtract;
			}break;
			case type_multiply:
			{
				new_expression->right = type_multiply;
			}break;
			case type_divide:
			{
				new_expression->right = type_divide;
			}break;
			case '(':
			{
				
			}break;
		}
	}
}