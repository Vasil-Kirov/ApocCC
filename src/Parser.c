#include <Parser.h>

double
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
			tree->number = tree->number + evaluate_expression(tree->right);
		}break;
		default:
		{
			LG_FATAL("not implemented");
		}break;
	}
	return tree->number;
}

i32
get_operator_precedence(char op)
{
	switch(op)
	{
		case '+':
		case '-':
		return 0; break;
		case '*':
		case '/':
		return 1; break;
		case '(':
		return 2; break;
		case ')':
		return 3; break;
		
		default:
		{
			LG_FATAL("Unexpected token when parsing math expression %c", op);
			return INT32_MIN;
		}break;
	}
}
ast_expression
tokens_to_ast_expression(i16 *tokens, i16 amount)
{
	ast_type *output_queue = NULL;
	stack operator_stack = {.top = -1, .array = NULL};
	
	for(i32 token_index = 0; token_index < amount; ++token_index)
	{
		i32 stack_top = stack_peek(operator_stack);
		if(stack_top == INT32_MIN)
		{
			stack_top = -1;
		}
		else stack_top = get_operator_precedence(stack_top);
		if(tokens[token_index] == tok_number)
		{
			arrput(output_queue, (ast_type)tok_number);
		}
		else
		{
			i32 prec = get_operator_precedence(tokens[token_index]);
			
			if (prec == 3)
			{
				i32 op;
				do
				{
					op = stack_pop(&operator_stack);
					if(op != '(')
						arrput(output_queue, op);
					
				} while(op != '(');
			}
			else if(prec <= stack_top)
			{
				if(stack_top != 2)
					arrput(output_queue, stack_pop(&operator_stack));
				
				stack_push(&operator_stack, tokens[token_index]);
			}
			else 
			{
				stack_push(&operator_stack, tokens[token_index]);
			}
		}
	}
	
	i32 op = 0;
	while(op != INT32_MIN)
	{
		op = stack_pop(&operator_stack);
		if(op != INT32_MIN)
			arrput(output_queue, op);
	}
	
	arrfree(operator_stack.array);
	arrfree(output_queue);
}