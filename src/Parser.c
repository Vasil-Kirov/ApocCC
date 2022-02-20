#include <Parser.h>

static ast_node ast_root;

void
ast_from_tokens()
{
	
}

double
evaluate_expression(ast_expression *tree)
{
	if(tree->right != 0)
	{
		tree->number = evaluate_expression(tree->right);
	}
	switch(tree->type)
	{
		case type_constant:
		{
			return tree->number;
		}break;
		case type_add:
		{
			tree->number = tree->number + evaluate_expression(tree->left);
		}break;
		case type_multiply:
		{
			tree->number = tree->number * evaluate_expression(tree->left);
		}break;
		case type_divide:
		{
			tree->number = tree->number / evaluate_expression(tree->left);
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
		return 50; break;
		case '*':
		case '/':
		return 51; break;
		case '(':
		return 52; break;
		case ')':
		return 53; break;
		
		default:
		{
			LG_FATAL("Unexpected token when parsing math expression %c", op);
			return INT32_MIN;
		}break;
	}
}


ast_expression
rpn_to_ast(type_and_identifier *rpn_output, u64 size)
{
	
	ast_expression *node_stack;
	stack_allocate(node_stack, PERM_INDEX, 4096);
	stack_set_default_value(node_stack, 0);
	for(u64 index = 0; index < size; index++)
	{
		if(rpn_output[index].type == tok_number)
		{
			double next_identifier_number = vstd_str_to_double((char *)get_identifier(rpn_output[index].iden_index));
			ast_expression node = { .type = type_constant, .number = next_identifier_number,
				.left = NULL, .right = NULL};
			
			stack_push(node_stack, node);
		}
		else
		{
			ast_expression *node1 = AllocatePermanentMemory(sizeof(ast_expression));
			ast_expression *node2 = AllocatePermanentMemory(sizeof(ast_expression));
			
			ast_expression tmp1 = stack_pop(node_stack);
			ast_expression tmp2 = stack_pop(node_stack);
			
			memcpy(node1, &tmp1, sizeof(ast_expression));
			memcpy(node2, &tmp2, sizeof(ast_expression));
			ast_expression new_node = { .type = rpn_output[index].type, .left = node1, .right = node2 };
			
			stack_push(node_stack, new_node);
		}
	}
	arrfree(rpn_output);
	return stack_pop(node_stack);
}


ast_expression
tokens_to_ast_expression(token_iden *tokens, i16 amount)
{
	// TODO(Vasko): THIS DOESN'T NEED TO BE DYNAMIC, or import DynamicArrays from MainDBG
	type_and_identifier *output_queue = NULL;
	
	i32 *operator_stack;
	stack_allocate(operator_stack, COMP_INDEX, 4096);
	
	for(i32 token_index = 0; token_index < amount; ++token_index)
	{
		i32 stack_top = stack_peek(operator_stack);
		if(stack_top == INT32_MIN)
		{
			stack_top = -1;
		}
		else stack_top = get_operator_precedence(stack_top);
		if(tokens[token_index].token == tok_number)
		{
			type_and_identifier to_put = {.type = (ast_type)tok_number, .iden_index = tokens[token_index].identifier_index};
			arrput(output_queue, to_put);
		}
		else
		{
			i32 prec = get_operator_precedence(tokens[token_index].token);
			
			if (tokens[token_index].token == ')')
			{
				i32 op;
				do
				{
					op = stack_pop(operator_stack);
					if(op != '(')
					{
						type_and_identifier to_put = {.type = op, .iden_index = 0};
						arrput(output_queue, to_put);
					}
				} while(op != '(');
			}
			else if(prec <= stack_top)
			{
				if(stack_top != 2)
				{
					type_and_identifier to_put = {.type = stack_pop(operator_stack), .iden_index = 0};
					arrput(output_queue, to_put);
				}
				
				stack_push(operator_stack, tokens[token_index].token);
			}
			else 
			{
				stack_push(operator_stack, tokens[token_index].token);
			}
		}
	}
	
	i32 op = 0;
	while(op != INT32_MIN)
	{
		op = stack_pop(operator_stack);
		if(op != INT32_MIN)
		{
			type_and_identifier to_put = {.type = op, .iden_index = 0};
			arrput(output_queue, to_put);
		}
	}
	
	return rpn_to_ast(output_queue, arrlen(output_queue));
}