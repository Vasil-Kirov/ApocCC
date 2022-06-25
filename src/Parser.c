#include <Parser.h>

static b32 reached_eof;
static Token_Iden last_read_token;
static const char *expected;
static b32 is_top_level = true;

#define parse_expect(func, str)			\
	func();					\
	expected = str
#define tok_expect(token_id, exp_tok, expect)				  \
	{								  \
		if (token_id.type != exp_tok)				  \
		{							  \
			raise_parsing_unexpected_token(expect, token_id); \
		}							  \
	}
#define tok_not_expect(token_id, nexp_tok, expect)			 \
	{								 \
		if (token_id.type == nexp_tok)				 \
		{							 \
			raise_parsing_unexpected_token(expect, token_id) \
		}					                 \
	}

Ast_Node *
alloc_node()
{
	Ast_Node *result = AllocateCompileMemory(sizeof(Ast_Node));
	memset(result, 0, sizeof(Ast_Node));
	return result;
}

Ast_Node *
ast_unary_expr(Token_Iden token, Ast_Node *expr)
{
	Ast_Node *result = alloc_node();
	result->type = type_unary_expr;
	result->unary_expr.op = token.type;
   	result->unary_expr.expression = expr;
	return result;
}

Ast_Node *
ast_identifier(Token_Iden token)
{
	if(token.type != tok_identifier)
		raise_parsing_unexpected_token("identifier", token);
	
	Ast_Node *result = alloc_node();
	result->type = type_identifier;
	result->identifier.token = token;
	result->identifier.name = get_identifier(token.identifier_index);
	return result; 
}

Ast_Node *
ast_variable(Var_Type type, Ast_Identifier identifier)
{
	Ast_Node *result = alloc_node();
	result->type = type_var;
	result->variable.type = type;
	result->variable.identifier = identifier;
	return result;
}

Ast_Node *
ast_assignment_from_decl(Ast_Variable variable, Ast_Node *expression)
{
	Ast_Node *result = alloc_node();
	result->type = type_assignment;
	result->assignment.is_declaration = true;
	result->assignment.variable = variable;
	result->assignment.expression = expression;
	result->assignment.identifier = variable.identifier;
	return result;
}

Ast_Node *
ast_assignment(Token_Iden identifier_token, Ast_Node *expression)
{
	Ast_Node *result = alloc_node();
	result->type = type_assignment;
	result->assignment.is_declaration = false;
	result->assignment.identifier = ast_identifier(identifier_token)->identifier;
	result->assignment.expression = expression;
	return result;
}

Ast_Node *
ast_struct(Ast_Identifier id, Ast_Variable *members)
{
	Ast_Node *result = alloc_node();
	result->type = type_struct;
	result->structure.struct_id = id;
	result->structure.members = members;
	return result;
}

Ast_Node *
ast_selector(Ast_Node *identifier)
{
	Ast_Node *result = alloc_node();
	result->type = type_selector;
	result->selector.selected = identifier;
	return result;
}

Ast_Node *
node_to_ptr(Ast_Node node)
{
	Ast_Node *result = alloc_node();
	memcpy(result, &node, sizeof(Ast_Node));
	return result;
}

void parse()
{
	Ast_Node *root = alloc_node();
	root->type = type_root;
	// NOTE(Vasko): nothing special about root, it doesn't contain data

	root = parse_file_level_statement();
	if(!reached_eof)
	{
		raise_parsing_unexpected_token("end of file", last_read_token);
	}
	LG_WARN("WE DID IT!!!");
}

b32 test_and_advance(i16 token)
{
	return get_next_token().type == token;
}

Ast_Node *
parse_file_level_statement()
{
	Ast_Node *result = alloc_node();
	switch ((int)peek_next_token().type)
	{
	case (Token)'$':
	{
	} break;
	case tok_struct:
	{
		result = parse_struct();
		result->left = parse_file_level_statement();
	} break;
	case tok_func:
	{
		result = parse_func();
		if (result == NULL)
		{
			raise_parsing_unexpected_token(expected, last_read_token);
		}
	} break;
	case tok_eof:
	{
		reached_eof = true;
		return NULL;
	}break;
	default:
	{
		raise_parsing_unexpected_token("top level statement", peek_next_token());
	} break;
	}
	return result;
}

Ast_Node *
parse_statement()
{
	Ast_Node *result = alloc_node();
	
	Token_Iden starting_token = get_next_token();
	switch((int)starting_token.type)
	{
	case '$':
	{
		LG_FATAL("$ has not been implemented");
	}break;
	case '{':
	{
		// TODO(Vasko): this
	PARSE_BODY:
		result->right = parse_statement();
		result->left = parse_statement();
	} break;
	case tok_if:
	{
		result->type = type_if;
		result->condition = parse_expression('{');

		goto PARSE_BODY;
	} break;
	case tok_for:
	{
		result->type = type_for;
		result->condition = parse_expression('{');

		goto PARSE_BODY;
	} break;
	case tok_identifier:
	{
		if(is_func_call(starting_token, 0))
		{
			result = parse_func_call(starting_token);
			parser_eat(';');
		}
		else
		{
			// Note(Vasko): already eats ';'
			result = parse_identifier(starting_token);
		}
		if(result != NULL)
			result->left = parse_statement();
		else
			result = parse_statement();
	} break;
	case tok_arrow:
	{
		result->type = type_return;
		result->right = parse_expression(';');
		result->left = parse_statement();
	} break;
	case tok_break:
	{
		result->type = type_break;
		result->left = parse_statement();
	}
	case '}':
	{
		return NULL;
	} break;
	default:
	{
		raise_parsing_unexpected_token("}", starting_token);
	}
	}
	return result;
}

Token_Iden get_variable()
{
	Token_Iden var_token = get_next_token();
	if (var_token.type != tok_identifier)
	{
		raise_parsing_unexpected_token("variable name", var_token);
	}
	return var_token;
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

	if (start_chr.type != start)
	{
		raise_parsing_unexpected_token(a, start_chr);
	}

	for (int i = 0; i < 2048; ++i)
	{
		Token_Iden this_token = get_next_token();
		SDPush(tokens, this_token);

		if (this_token.type == seperator || this_token.type == stop)
		{
			if (SDCount(tokens) - last_seperated < 4)
			{
				raise_parsing_unexpected_token("declaration of type {name: type}",
							       tokens[last_seperated]);
			}
			Ast_Node *parsed = parser(tokens + last_seperated,
						  SDCount(tokens) - last_seperated);
			SDPush(result, parsed);

			last_seperated = SDCount(tokens);
		}

		if (this_token.type == stop)
			break;

		if (this_token.type == ';' || this_token.type == '{')
		{
			raise_parsing_unexpected_token(a, this_token);
		}
	}

	SDFree(tokens);
	return result;
}

Ast_Node *
parse_declaration_right()
{
	Token_Iden equal_sign = get_next_token();
	last_read_token = equal_sign;
	if (equal_sign.type == ';')
		return NULL;
	if (equal_sign.type != '=')
	{
		raise_parsing_unexpected_token("= after identifier", equal_sign);
	}

	Token_Iden expression[8192] = {0};
	int last_got_token = 0;

	Token_Iden expression_token;
	while ((expression_token = get_next_token()).type != ';')
	{
		expression[last_got_token++] = expression_token;
	}
	// Ast_Expression parsed = tokens_to_ast_expression(expression, last_got_token);

	return NULL;
}


Assoc
get_associativity(Token op)
{
	switch((int)op)
	{
	case tok_plus_equals:
	case tok_minus_equals:
	case tok_mult_equals:
	case tok_div_equals:
	case tok_mod_equals:
	case tok_and_equals:
	case tok_xor_equals:
	case tok_or_equals:
	case tok_lshift_equals:
	case tok_rshift_equals:
	case '=':
		return right_to_left;
		break;
	}

	return left_to_right;
}

int
get_precedence(Token op)
{
	switch((int)op)
	{
	case tok_plusplus:
	case tok_minusminus:
	case '(':
	case ')':
	case '[':
	case ']':
	case '.':
	{
		return 11;
	} break;
	case '*':
	case '/':
	case '%':
	{
		return 10;
	} break;
	case '+':
	case '-':
	{
		return 9;
	} break;
	case tok_bits_lshift:
	case tok_bits_rshift:
	{
		return 8;	
	} break;
	case '>':
	case '<':
	case tok_logical_gequal:
	case tok_logical_lequal:
	{
		return 7;
	} break;
	case tok_logical_is:
	case tok_logical_isnot:
	{
		return 6;
	} break;
	case tok_bits_and:
	{
		return 5;
	} break;
	case tok_bits_xor:
	{
		return 4;
	} break;
	case tok_bits_or:
	{
		return 3;
	} break;
	case tok_logical_and:
	{
		return 2;
	} break;
	case tok_logical_or:
	{
		return 1;
	} break;
	}
	return 0;
}


Ast_Node *
parse_identifier(Token_Iden name_token)
{
	Ast_Node *result = NULL;
	Token_Iden col_or_eq = get_next_token();
	b32 is_declaration = false;
	b32 has_expression = false;
	if(col_or_eq.type == ':')
	{
		is_declaration = true;
		b32 is_const = false;
		Var_Representation type_repr;
		int pointer_count = 0;

		Var_Type type = {};
			
		Token_Iden type_tok = peek_next_token();
		if(type_tok.type == '=')
		{
			get_next_token();
			type_repr = detect;
			has_expression = true;
		}
		else if(type_tok.type == tok_identifier || type_tok.type == tok_star)
		{
			type_repr = parse_type(&pointer_count);
			if(peek_next_token().type == ':')
			{
				is_const = true;
				has_expression = true;
			}
			col_or_eq = get_next_token();
			if(col_or_eq.type != '=')
			{
				// Note(Vasko): Cheap hack
				is_declaration = false;
			}
		}
		else
		{
			raise_parsing_unexpected_token("type, ':' or '=' after ':'", type_tok);

			// Note(Vasko): Unreachable
			return NULL;
		}
			
		type.representation = type_repr;
		type.pointer_count = pointer_count;
		type.is_const = is_const;
		if(type.representation == invalid_type)
		{
			raise_parsing_unexpected_token("valid type after ':'", type_tok);
		}
		result = ast_variable(type, ast_identifier(name_token)->identifier);
	}
	else if(col_or_eq.type == tok_const)
	{
		Var_Type type = {.representation = detect, .pointer_count = 0, .is_const = true};
		result = ast_variable(type, ast_identifier(name_token)->identifier);
		has_expression = true;
		is_declaration = true;
	}

	if(col_or_eq.type == '=' || has_expression)
	{
		has_expression = true;
		if(is_declaration)
		{
			result = ast_assignment_from_decl(result->variable, parse_expression(';'));
		}
		else
		{
			result = ast_assignment(name_token, parse_expression(';'));
		}
	}
	else if(col_or_eq.type != ';')
	{
		raise_parsing_unexpected_token("one of the following ':', '=', ';' after identifier", col_or_eq);
	}

	if(is_declaration && !has_expression)
	{
		parser_eat(';');
	}
	return result;
}

b32
is_literal(Token_Iden token)
{
	if(token.type == tok_identifier || token.type == tok_const_str || token.type == tok_number)
		return true;
	return false;
}

b32
is_func_call(Token_Iden token, int check_ahead)
{
	if(token.type == tok_identifier && peek_ahead(check_ahead).type == '(')
		return true;
	return false;
}

b32
is_struct_init(Token_Iden token, int check_ahead)
{
	if(token.type == tok_identifier && peek_ahead(check_ahead).type == '{')
		return true;
	return false;
}

Ast_Node *
parse_func_call(Token_Iden name_token)
{
	Ast_Node *result = alloc_node();
	result->type = type_func_call;
	result->func_call.identifier_index = name_token.identifier_index;
	result->func_call.arguments = SDCreate(Ast_Node *);

	parser_eat('(');
	int ahead = 0;
	b32 has_multiple_args = false;
	while(true)
	{
		Token_Iden ahead_token = peek_ahead(ahead);
		if(ahead_token.type == ')')
		{
			if(ahead == 0)
			{
				if(has_multiple_args)
					raise_parsing_unexpected_token("expression after ','", ahead_token);
				else
					break;
			}
			Ast_Node *arg_expression = parse_expression(')');
			SDPush(result->func_call.arguments, arg_expression);
			break;
		}
		else if(ahead_token.type == ',')
		{
			has_multiple_args = true;
			Ast_Node *arg_expression = parse_expression(',');
			SDPush(result->func_call.arguments, arg_expression);
			ahead = 0;
		}
		else
			ahead++;
	}
	return result;
}

Ast_Node *
parse_struct_initialize() 
{
	Ast_Node *result = alloc_node();
	result->type = type_struct_init;
	result->struct_init.expressions = SDCreate(Ast_Node *);

	int ahead = 0;
	b32 has_multiple_args = false;
	while (true)
	{
		Token_Iden ahead_token = peek_ahead(ahead);
		if (ahead_token.type == '}')
		{
			if (ahead == 0)
			{
				if (has_multiple_args)
					raise_parsing_unexpected_token("expression after ','", ahead_token);
				else
					break;
			}
			Ast_Node *arg_expression = parse_expression('}');
			SDPush(result->struct_init.expressions, arg_expression);
			break;
		}
		else if (ahead_token.type == ',')
		{
			has_multiple_args = true;
			Ast_Node *arg_expression = parse_expression(',');
			SDPush(result->struct_init.expressions, arg_expression);
			ahead = 0;
		}
		else
			ahead++;
	}
	return result;
}

Ast_Node *
parse_accesor()
{
	Ast_Node *result = alloc_node();
	result->type = type_selector;
	result->selector.selected = ast_identifier(get_next_token());
	return result;
}

Ast_Node *
parse_atom_expression()
{
	Ast_Node *result = NULL;
	Token_Iden next = peek_next_token();
	if(is_func_call(next, 1))
	{
		get_next_token();
		result = parse_func_call(next);
	}
	else if(is_struct_init(next, 1))
	{
		get_next_token();
		parser_eat('{');
		result = parse_struct_initialize();
	}
	else if(next.type == tok_identifier)
	{
		get_next_token();
		result = ast_identifier(next);
	}
	else if (next.type == tok_number)
	{
		get_next_token();
		result = alloc_node();
		result->type = type_literal;
		result->atom.identifier = get_identifier(next.identifier_index);
	}
	else if(next.type == '(')
	{
		get_next_token();
		if(last_read_token.type == tok_identifier)
		{
			result = parse_func_call(last_read_token);
		}
		else
		{
			result = parse_expression(')');
		}
	}
	else if(next.type == '{' && last_read_token.type == tok_identifier)
	{
		get_next_token();
		result = parse_struct_initialize();
	}
	else if(next.type == '.')
	{
		get_next_token();
		result = parse_accesor();
	}
	last_read_token = next;
	return result;
}

Ast_Node *
parse_unary_expression()
{
	Ast_Node *result;
	switch((int)peek_next_token().type)
	{
	case tok_plus:
	case tok_minus:
	case tok_bits_xor:
	case tok_bits_and:
	case tok_bits_not:
	case tok_not:
	case tok_plusplus:
	case tok_minusminus:
	{
		Token_Iden token = get_next_token();
		Ast_Node *expression = parse_unary_expression();
		result = ast_unary_expr(token, expression);
		return result;
	} break;

	/*
	  case '.':
	  {
	  get_next_token();
	  Ast_Node *ident = ast_identifier(get_next_token());
	  return ast_selector(ident);
	  }
	*/
	}

	result = parse_atom_expression();
	Ast_Node *top = result;
	if(top == NULL)
	{
		raise_parsing_unexpected_token("opperand", last_read_token);
	}
	while(result != NULL)
	{
		result->right = parse_atom_expression();
		result = result->right;
	}
	return top;
}



Ast_Node *
parse_binary_expression(Token stop_at, int min_prec)
{
	Ast_Node *result = parse_unary_expression();
	Token_Iden current;
	while(true)
	{
		current = peek_next_token();
		int prec = get_precedence(current.type);
		if(current.type == stop_at || prec < min_prec)
			break;

		get_next_token();
		Assoc assoc = get_associativity(current.type);
		int next_min_prec;
		if (assoc == left_to_right)
			next_min_prec = prec + 1;
		else
			next_min_prec = prec;
		
		Ast_Node *right = parse_binary_expression(stop_at, next_min_prec);
		Ast_Node *node = alloc_node();
		node->type = type_binary_expr;
		node->binary_expr.op = current.type;
		node->right = right;
		node->left = result;
		result = node;
	}
	return result;
}

Ast_Node *
parse_expression(Token stop_at)
{
	Ast_Node *result = parse_binary_expression(stop_at, 1);
	parser_eat(stop_at);
	return result;
}

Var_Representation
parse_type(int *pointer_count)
{
	Token_Iden pointer_or_type = get_next_token();
	if (pointer_or_type.type == '*')
	{
		*pointer_count = 1;
		Token_Iden type_tok;
		while ((type_tok = get_next_token()).type == '*')
		{
			(*pointer_count)++;
		}
		Var_Representation type = get_type_from_id(type_tok.identifier_index);
		if (type == 0)
		{
			raise_parsing_unexpected_token("valid type after *", type_tok);
		}
		return type;
	}
	else
	{
		*pointer_count = 0;
		Var_Representation type = get_type_from_id(pointer_or_type.identifier_index);
		if (type == 0)
		{
			raise_parsing_unexpected_token("valid type", pointer_or_type);
		}
		return type;
	}
}

Ast_Variable
parse_declaration_left(Token_Iden identifier)
{
	parser_eat(':');
	b32 is_const = false;
	if (peek_next_token().type == ':')
	{
		get_next_token();
		is_const = true;
	}

	int pointer = 0;
	Var_Representation representation = parse_type(&pointer);
	Ast_Node *result = alloc_node();
	result->variable.type.representation = representation;
	result->variable.type.pointer_count = pointer;
	result->variable.type.is_const = is_const;
	result->variable.identifier = ast_identifier(identifier)->identifier;
	return result->variable;
}

Ast_Node *
parse_declaration_left_from_array(Token_Iden *tokens, int count)
{
	int current_tok = 0;
	if (count < 3)
	{
		raise_parsing_unexpected_token("declaration of type {name: type}", tokens[0]);
	}
	if (tokens[current_tok++].type != tok_identifier)
	{
		raise_parsing_unexpected_token("identifier", tokens[current_tok - 1]);
	}

	if (tokens[current_tok++].type != ':')
	{
		raise_parsing_unexpected_token(":", tokens[current_tok - 1]);
	}

	b32 is_const = false;
	if (tokens[current_tok].type == ':')
	{
		current_tok++;
		is_const = true;
	}

	int pointer = 0;
	Var_Representation type_val = {0};
	Token_Iden pointer_or_type = tokens[current_tok];
	if (pointer_or_type.type == '*')
	{
		pointer = 1;
		while (tokens[++current_tok].type == '*')
		{
			pointer++;
		}
		Var_Representation type_val = get_type_from_id(tokens[current_tok].identifier_index);
		if (type_val == 0)
		{
			raise_parsing_unexpected_token("valid type after *", tokens[current_tok]);
		}
	}
	else
	{
		pointer = 0;
		Var_Representation type_val = get_type_from_id(pointer_or_type.identifier_index);
		if (type_val == 0)
		{
			raise_parsing_unexpected_token("valid type", pointer_or_type);
		}
	}

	return node_to_ptr((Ast_Node){
			.type = type_var,
			.variable = {
				.type = {
					.representation = type_val,
					.is_const = is_const,
					.pointer_count = pointer
				},
				.identifier = ast_identifier(tokens[0])->identifier,
			},
			.left = NULL,
			.right = NULL});
}

Ast_Node *
parse_struct()
{
	parser_eat(tok_struct);
	Token_Iden struct_id = get_next_expecting(tok_identifier, "struct name");
	parser_eat('{');
	Ast_Variable *members = SDCreate(Ast_Variable);
	Token_Iden curr_tok;
	int member_count = 0;
	while(true)
	{
		curr_tok = get_next_token();
		if(curr_tok.type == '}')
			break;
		if(curr_tok.type == ';')
		{
			curr_tok = get_next_token();
			if(curr_tok.type == '}')
				break;
		}
		member_count++;
		if(curr_tok.type != tok_identifier)
		{
			raise_parsing_unexpected_token("struct member or end of structer '}'", curr_tok);
		}
		parser_eat(':');
		int pointer_count = 0;
		Var_Representation type_repr = parse_type(&pointer_count);
		Var_Type type = {.representation = type_repr, .pointer_count = pointer_count, .is_const = false};
		Ast_Variable member = ast_variable(type, ast_identifier(curr_tok)->identifier)->variable;
		SDPush(members, member);
	}
	if(member_count == 0)
	{
		raise_parsing_unexpected_token("struct members", curr_tok);
	}
	return ast_struct(ast_identifier(struct_id)->identifier, members);
}

Ast_Node *
parse_func()
{
	parser_eat(tok_func);

	Ast_Func this_func = {0};
	this_func.identifier = ast_identifier(get_variable())->identifier;
	this_func.arguments = delimited('(', ')', ',', parse_declaration_left_from_array);
	parser_eat(tok_arrow);


	if (peek_next_token().type != '{')
	{
		int pointer_count = 0;

		this_func.type.representation = parse_type(&pointer_count);
		this_func.type.pointer_count = pointer_count;
		this_func.type.is_const = false;
		parser_eat('{');
	}
	else
	{
		this_func.type.representation = empty;
	}

	Ast_Node *result = AllocateCompileMemory(sizeof(Ast_Node));
	result->type = type_func;
	result->function = this_func;

	is_top_level = false;
	result->right = parse_statement();

	is_top_level = true;
	result->left = parse_file_level_statement();

	return result;
}
/*
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
*/

i32 get_operator_precedence(char op, Token_Iden token)
{
	switch (op)
	{
	case '+':
	case '-':
		return 50;
		break;
	case '*':
	case '/':
		return 51;
		break;
	case '(':
		return 52;
		break;
	case ')':
		return 53;
		break;

	default:
	{
		raise_parsing_unexpected_token("op", token);
			
		// doesn't reach
		return STACK_DEFAULT_VALUE;
	}
	break;
	}
}

// TODO(Vasko): REWRITE
/*
  Ast_Expression
  rpn_to_ast(Type_And_Token *rpn_output, u64 size)
  {

  Ast_Expression *node_stack;
  stack_allocate(node_stack, Ast_Expression);
  stack_set_default_value(node_stack, 0);
  for(u64 index = 0; index < size; index++)
  {
  if(rpn_output[index].type == tok_number)
  {
  next_identifier_number = vstd_str_to_double((char *)															 get_identifier(rpn_output[index].iden_index));

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
*/
/*
  Ast_Expression
  tokens_to_ast_expression(Token_Iden *tokens, i16 amount)
  {
  Type_And_Token *output_queue = NULL;

  i32 *operator_stack;
  stack_allocate(operator_stack, i32);

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
*/
void parser_eat(Token expected_token)
{
	Token_Iden got_token = get_next_token();
	if (got_token.type != expected_token)
	{
		char str[2] = {0};
		*(i16 *)str = expected_token;
		raise_parsing_unexpected_token(str, got_token);
	}
}
