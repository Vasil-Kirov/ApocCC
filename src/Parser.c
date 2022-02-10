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

ast_expression
tokens_to_ast_expression(i16 *tokens, i16 amount);