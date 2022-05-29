#include <Parser.h>

static b32 reached_eof;
static Token_Iden last_read_token;
static const char *expected;
static b32 is_top_level = true;

#define parse_expect(func, str) func(); expected = str
#define check_tok(tok, to_expect, str) {if(tok.token != to_expect)\
{ raise_parsing_unexpected_token(str, tok); } }

Ast_Node *
alloc_node()
{
	Ast_Node *result = AllocateCompileMemory(sizeof(Ast_Node));
	memset(result, 0, sizeof(Ast_Node));
	return result;
}

Ast_Node *
node_to_ptr(Ast_Node node)
{
	Ast_Node *result = alloc_node();
	memcpy(result, &node, sizeof(Ast_Node));
	return result;
}

void
ast_from_tokens()
{
	Ast_Node *root = alloc_node();
	root->type = type_root;
	// NOTE(Vasko): nothing special about root, it doesn't contain data
	
	while(true)
	{
		root = parse_expect(parse_next_token, "end of file");
		if(!reached_eof) raise_parsing_unexpected_token(expected, last_read_token);
		
	}
}

b32 test_and_advance(i16 token)
{
	return get_next_token().token == token;
}

Ast_Node *
parse_next_token()
{
	Ast_Node *result = alloc_node();
	Token_Iden current_token = get_next_token();
	switch(current_token.token)
	{
		case '$':
		{
			//parse_compile_time_run();
		}break;
		case ';':
		{
			return parse_next_token();
		}
		case tok_func:
		{
			if(!is_top_level)
			{
				raise_parsing_unexpected_token("function declared at top level", current_token);
			}
			result = parse_func();
			if(result == NULL)
			{
				raise_parsing_unexpected_token(expected, last_read_token);
			}
		}break;
		case tok_identifier:
		{
			Token_Iden Expression = get_next_token();
			switch(Expression.token)
			{
				case ':':
				{
					int count = 0;
					Token_Iden to_pass[4] = {};
					
					Token_Iden pointer_or_type = get_next_token();
					if(pointer_or_type.token == '*')
					{
						count = 4;
						to_pass[0] = current_token;
						to_pass[1] = Expression;
						to_pass[2] = pointer_or_type;
						to_pass[3] = get_next_token();
					}
					else
					{
						count = 3;
						to_pass[0] = current_token;
						to_pass[1] = Expression;
						to_pass[2] = pointer_or_type;
					}
					Ast_Node *left_side = parse_declaration_left(to_pass, count);
					Ast_Node *right_side = parse_declaration_right(false);
					result->type = type_assignment;
					result->left = left_side;
					result->right = right_side;
				}break;
				case '=':
				{
					Ast_Node *assignment = parse_declaration_right(true);
					if(assignment == NULL)
						raise_parsing_unexpected_token("expression", last_read_token);
					
					return assignment;
				}break;
				case '(':
				{
					// function call
				}break;
			}
		}break;
		case '}':
		{
			return NULL;
		}break;
		case tok_eof:
		{
			reached_eof = true;
			last_read_token = current_token;
			
			return NULL;
		}break;
		default:
		{
			raise_parsing_unexpected_token("something else", current_token);
		}
	}
	return result;
}

u64
get_variable_name()
{
	Token_Iden var_token = get_next_token();
	if(var_token.token != tok_identifier)
	{
		raise_parsing_unexpected_token("variable name", var_token);
	}
	return var_token.identifier_index;
}

// SDArray
Ast_Node **
delimited(char start, char stop, char seperator, Ast_Node *(*parser)(Token_Iden *, int))
{
	Ast_Node **result = SDCreate(Ast_Node *);
	Token_Iden *tokens = SDCreate(Token_Iden);
	int last_seperated = 0;
	Token_Iden start_chr = get_next_token();
	char a[2] = {start, '\0'};
	
	if(start_chr.token != start)
	{
		raise_parsing_unexpected_token(a, start_chr);
	}
	
	for(int i = 0; i < 2048; ++i)
	{
		Token_Iden this_token = get_next_token();
		SDPush(tokens, this_token);
		
		if(this_token.token == seperator || this_token.token == stop)
		{
			if(SDCount(tokens) - last_seperated < 4)
			{
				raise_parsing_unexpected_token("declaration of type {name: type}",
											   tokens[last_seperated]);
			}
			Ast_Node *parsed = parser(tokens + last_seperated, 
									  SDCount(tokens) - last_seperated);
			SDPush(result, parsed);
			
			last_seperated = SDCount(tokens);
		}
		
		if(this_token.token == stop) break;
		
		if(this_token.token == ';' || this_token.token == '{')
		{
			raise_parsing_unexpected_token(a, this_token);
		}
	}
	
	free(tokens);
	return result;
}

Ast_Node *
parse_declaration_right(b32 equal_passed)
{
	if(!equal_passed)
	{
		Token_Iden equal_sign = get_next_token();
		last_read_token = equal_sign;
		if(equal_sign.token == ';')
			return NULL;
		check_tok(equal_sign, '=', "= after identifier");
	}
	Token_Iden expression[8192] = {};
	int last_got_token = 0;
	
	Token_Iden expression_token;
	while((expression_token = get_next_token()).token != ';')
	{
		expression[last_got_token++] = expression_token;
	}
	Ast_Expression parsed = tokens_to_ast_expression(expression, last_got_token);
	
	return NULL;
}

Ast_Node *
parse_declaration_left(Token_Iden *tokens, int count)
{
	if(count < 3)
	{
		raise_parsing_unexpected_token("declaration of type {name: type}", tokens[0]);
	}
	if(tokens[0].token != tok_identifier)
	{
		raise_parsing_unexpected_token("identifier", tokens[0]);
	}

	if(tokens[1].token != ':')
	{
		raise_parsing_unexpected_token(":", tokens[1]);
	}
	b32 is_pointer = false;
	Token_Iden type = {};
	if(count > 3)
	{
		is_pointer = true;
		if(tokens[2].token != '*')
		{
			raise_parsing_unexpected_token("type or *", tokens[2]);
		}
		type = tokens[3];
	}
	else
		type = tokens[2];
	
	if(type.token != tok_identifier)
	{
		raise_parsing_unexpected_token("type", type);
	}
	
	Var_Type type_val = look_up_identifier_for_type(get_identifier(type.identifier_index));
	if(type_val == 0)
	{
		raise_parsing_unexpected_token("valid type", type);
	}
	
	
	return node_to_ptr((Ast_Node){
						   .type = type_var,
						   .value.variable = {
							   .type = type_val,
							   .is_pointer = is_pointer,
							   .identifier_index = tokens[0].identifier_index
						   },
						   .left = NULL,
						   .right = NULL
					   });
}

Ast_Node *
parse_func()
{
	Ast_Func this_func = {};
	this_func.identifier_index = get_variable_name();
	this_func.arguments = delimited('(', ')', ',', parse_declaration_left);
	Token_Iden arrow = get_next_token();
	check_tok(arrow, tok_arrow, "->");
	
	Token_Iden func_type = get_next_token();
	
	if(func_type.token != '{')
	{
		check_tok(func_type, tok_identifier, "type or start of functino '{'");
		this_func.type = look_up_identifier_for_type(get_identifier(func_type.identifier_index));
		Token_Iden bracket = get_next_token();
		check_tok(bracket, '{', "Start of function body '{'");
	}
	else
	{
		this_func.type = empty;
	}
	
	Ast_Node *result = AllocateCompileMemory(sizeof(Ast_Node));
	result->type = type_func;
	result->value.function = this_func;
	
	is_top_level = false;
	result->right = parse_next_token();
	
	is_top_level = true;
	result->left = parse_next_token();
	
	return result;
}

double
evaluate_expression(Ast_Expression *tree)
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


Ast_Expression
rpn_to_ast(type_and_identifier *rpn_output, u64 size)
{
	
	Ast_Expression *node_stack;
	stack_allocate(node_stack, PERM_INDEX, 4096);
	stack_set_default_value(node_stack, 0);
	for(u64 index = 0; index < size; index++)
	{
		if(rpn_output[index].type == tok_number)
		{
			double next_identifier_number = vstd_str_to_double((char *)get_identifier(rpn_output[index].iden_index));
			Ast_Expression node = { .type = type_constant, .number = next_identifier_number,
				.left = NULL, .right = NULL};
			
			stack_push(node_stack, node);
		}
		else
		{
			Ast_Expression *node1 = AllocatePermanentMemory(sizeof(Ast_Expression));
			Ast_Expression *node2 = AllocatePermanentMemory(sizeof(Ast_Expression));
			
			Ast_Expression tmp1 = stack_pop(node_stack);
			Ast_Expression tmp2 = stack_pop(node_stack);
			
			memcpy(node1, &tmp1, sizeof(Ast_Expression));
			memcpy(node2, &tmp2, sizeof(Ast_Expression));
			Ast_Expression new_node = { .type = rpn_output[index].type, .left = node1, .right = node2 };
			
			stack_push(node_stack, new_node);
		}
	}
	arrfree(rpn_output);
	return stack_pop(node_stack);
}


Ast_Expression
tokens_to_ast_expression(Token_Iden *tokens, i16 amount)
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
			type_and_identifier to_put = {.type = (Ast_Type)tok_number, .iden_index = tokens[token_index].identifier_index};
			arrput(output_queue, to_put);
		}
		else if (tokens[token_index].token == tok_identifier)
		{
			if(peek_next_token().token == '(')
			{
				// function call in expression
			}
			else
			{
				// variable
			}
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