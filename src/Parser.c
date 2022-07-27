#include <Parser.h>
#include <Analyzer.h>
#include <Memory.h>

static b32 reached_eof;
static Token_Iden last_read_token;
static const char *expected;

#define parse_expect(func, str) \
	func();                     \
	expected = str
#define tok_expect(token_id, exp_tok, expect)                 \
	{                                                         \
		if (token_id.type != exp_tok)                         \
		{                                                     \
			raise_parsing_unexpected_token(expect, token_id); \
		}                                                     \
	}
#define tok_not_expect(token_id, nexp_tok, expect)           \
	{                                                        \
		if (token_id.type == nexp_tok)                       \
		{                                                    \
			raise_parsing_unexpected_token(expect, token_id) \
		}                                                    \
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
	result->identifier.name = token.identifier;
	return result; 
}

Ast_Identifier
pure_identifier(Token_Iden token)
{
	Ast_Identifier result = {
		.token = token,
		.name = token.identifier,
	};
	return result;
}

Ast_Node *
ast_variable(Type_Info type, Ast_Identifier identifier, b32 is_const)
{
	Ast_Node *result = alloc_node();
	result->type = type_var;
	result->variable.type = type;
	result->variable.identifier = identifier;
	result->variable.is_const = is_const;
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
	result->assignment.token = result->assignment.variable.identifier.token;
	return result;
}

Ast_Node *
ast_assignment(Token_Iden identifier_token, Ast_Node *expression)
{
	Ast_Node *result = alloc_node();
	//Var_Type unknown = {.is_const = false, .is_primitive = true, .pointer_count = 0, .prim_repr = invalid_type};
	Type_Info unknown_type = {.type = T_DETECT };
	
	result->type = type_assignment;
	result->assignment.is_declaration = false;
	result->assignment.expression = expression;
	result->assignment.token = identifier_token;
	result->assignment.variable.identifier = pure_identifier(identifier_token);
	result->assignment.variable.type = unknown_type;
	return result;
}

Ast_Node *
ast_struct(Ast_Identifier id, Ast_Variable *members, int  member_count)
{
	Ast_Node *result = alloc_node();
	result->type = type_struct;
	result->structure.struct_id = id;
	result->structure.member_count = member_count;
	memcpy(result->structure.members, members, sizeof(Ast_Variable) * REASONABLE_MAXIMUM);
	
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

Ast_Node *
parse()
{
	Ast_Node *root = alloc_node();
	root->type = type_root;
	// NOTE(Vasko): nothing special about root, it doesn't contain data

	Token_Iden info_tok = peek_next_token();
	Scope_Info scope_info = {.file = info_tok.file, .start_line = info_tok.line};
	push_scope(scope_info);
	root = parse_file_level_statement();
	if(!reached_eof)
	{
		raise_parsing_unexpected_token("end of file", last_read_token);
	}
	pop_scope((Token_Iden){.file = info_tok.file, .column = 1, .line = get_line_tracker()});
	if(!is_scope_stack_empty())
		raise_semantic_error("not all scopes closed by eof", (Token_Iden){.file = info_tok.file, .column = 1, .line = get_line_tracker()});
	return root;
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
parse_body(Token_Iden scope_tok, b32 is_func)
{
	Ast_Node *result = alloc_node();
	result->type = type_scope_start;
	result->scope_desc.token = scope_tok;
	Scope_Info new_scope = {.file = scope_tok.file, .start_line = scope_tok.line};
	push_scope(new_scope);
	result->right = parse_statement();
	if(is_func)
		result->left = parse_file_level_statement();
	else
		result->left = parse_statement();
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
		return parse_body(starting_token, false);
	} break;
	case tok_if:
	{
		result->type = type_if;
		result->condition = parse_expression('{');
		result->left = parse_body(starting_token, false);
	} break;
	case tok_for:
	{
		result->type = type_for;
		result->condition = parse_expression('{');
		result->left= parse_body(starting_token, false);
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
		result->holder.token = starting_token;
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
		pop_scope(starting_token);
		result->type = type_scope_end;
		result->scope_desc.token = starting_token;
		return result;
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


// @NOTE: parser should check for errors
// SDArray
Ast_Node **
delimited(char start, char stop, char seperator, Ast_Node *(*parser)())
{
	Ast_Node **result = SDCreate(Ast_Node *);
	
	Token_Iden start_chr = get_next_token();
	b32 has_args = false;
	
	if (start_chr.type != start)
	{
		raise_parsing_unexpected_token((const char *)token_to_str(start_chr.type), start_chr);
	}
	
	int ahead = 0;
	while (true)
	{
		Token_Iden this_token = peek_ahead(ahead++);
		if(this_token.type == seperator)
		{
			has_args = true;
			Ast_Node *parsed = parser();
			SDPush(result, parsed);
			parser_eat(seperator);
			ahead = 0;
		}
		else if(this_token.type == stop)
		{
			if(has_args && ahead == 1)
			{
				raise_parsing_unexpected_token("expression", this_token);
			}
			else if (ahead == 1)
				break;
			Ast_Node *parsed = parser();
			SDPush(result, parsed);
			break;
		}
	}
	parser_eat(stop);
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
parse_var(Token_Iden name_token)
{
	Token_Iden colon = peek_next_token();
	if(colon.type != ':')
		return NULL;
	
	get_next_token();
	Type_Info type_info = {};
	
	Token_Iden type_tok = peek_next_token();
	if(type_tok.type == '=')
	{
		get_next_token();
		type_info.type = T_DETECT;
		type_info.token = type_tok;
	}
	else if(type_tok.type == tok_identifier || type_tok.type == tok_star)
	{
		type_info = parse_type();
	}
	else
	{
		raise_parsing_unexpected_token("Type after ':'." 
									   "In the case of a declaration you can alse use '='", type_tok);
	}
	
	Assert(type_info.token.file != NULL);
	Ast_Node *result = ast_variable(type_info, pure_identifier(name_token), false);
	return result;
}

Ast_Node *
parse_identifier(Token_Iden name_token)
{
	Ast_Node *var_parsed = parse_var(name_token);
	Token_Iden decider = peek_next_token();
	if(var_parsed == NULL)
	{
		get_next_token();
		if(decider.type == tok_const)
		{
			Type_Info detect_info = {T_DETECT};
			Ast_Node *const_var = ast_variable(detect_info, pure_identifier(name_token), true);
			return ast_assignment_from_decl(const_var->variable, parse_expression(';'));
		}
		else
		{
			char error_text[4096] = {};
			vstd_sprintf(error_text, "Correctly formated statement, like one of the following:"
						 "\n%s := 0\n%s :: 0\n%s = 0", 
						 name_token.identifier, name_token.identifier, name_token.identifier);
			raise_parsing_unexpected_token(error_text, decider);
			
			// @NOTE: unreachable
			return NULL;
		}
	}
	else
	{
		if(decider.type == ';')
		{
			get_next_token();
			if(var_parsed->variable.type.type != T_DETECT)
			{
				raise_parsing_unexpected_token("expression", decider);
			}
			return var_parsed;
		}
		else if(decider.type == '=')
		{
			get_next_token();
PARSE_ASSIGN_EXPRESSION:;
			Ast_Node *expression = parse_expression(';');
			if(expression == NULL)
				raise_parsing_unexpected_token("expression", decider);
			return ast_assignment_from_decl(var_parsed->variable, expression);
		}
		else
		{
			goto PARSE_ASSIGN_EXPRESSION;
		}
	}
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

b32
is_indexing(Token_Iden token, int check_ahead)
{
	if(token.type == tok_identifier && peek_ahead(check_ahead).type == '[')
		return true;
	return false;
}

Ast_Node *
parse_indexing(Token_Iden identifier)
{
	parser_eat('[');

	Ast_Node *result = alloc_node();
	result->type = type_index;
	result->index.expression = parse_expression(']');
	result->index.identifier = pure_identifier(identifier);
	return result;
}

Ast_Node *
parse_func_call(Token_Iden name_token)
{
	Ast_Node *result = alloc_node();
	result->type = type_func_call;
	result->func_call.identifier = pure_identifier(name_token);
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
				{
					parser_eat(')');
					break;
				}
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
parse_struct_initialize(Token_Iden id_token)
{
	Ast_Node *result = alloc_node();
	result->type = type_struct_init;
	result->struct_init.id_token = id_token;
	result->struct_init.expressions = SDCreate(Ast_Node *);

	int ahead = 0;
	b32 has_multiple_args = false;
	while (true)
	{
		Token_Iden ahead_token = peek_ahead(ahead);
		
		// TODO(Vasko): THIS IS A HACK, CHANGE IT!!!
		if(is_struct_init(ahead_token, 1))
		{
			Ast_Node *arg_expression = parse_expression('\x18');
			SDPush(result->struct_init.expressions, arg_expression);
			ahead = 0;
			if(peek_next_token().type == '}')
			{
				parser_eat('}');
				break;
			}
			else if(peek_next_token().type == ',')
			{
				parser_eat(',');
			}
			else
				Assert(false);
		}
		else if (ahead_token.type == '}')
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
parse_accesor(Ast_Node *selected)
{
	Ast_Node *result = alloc_node();
	result->type = type_selector;
	result->selector.selected = selected;
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
		result->right = parse_atom_expression();
	}
	else if(is_struct_init(next, 1))
	{
		get_next_token();
		parser_eat('{');
		result = parse_struct_initialize(next);
		result->right = parse_atom_expression();
	}
	else if(is_indexing(next, 1))
	{
		get_next_token();
		result = parse_indexing(next);
		result->right = parse_atom_expression();
	}
	else if(next.type == tok_identifier)
	{
		get_next_token();
		result = ast_identifier(next);
		result->right = parse_atom_expression();
	}
	else if (next.type == tok_number)
	{
		get_next_token();
		result = alloc_node();
		result->type = type_literal;
		result->atom.identifier = pure_identifier(next);
	}
	else if(next.type == tok_const_str)
	{
		get_next_token();
		result = alloc_node();
		result->type = type_const_str;
		result->atom.identifier = pure_identifier(next);
		result->right = parse_atom_expression();
	}
	else if(next.type == '(')
	{
		get_next_token();
		result = parse_expression(')');
	}
	else if(next.type == '.')
	{
		parser_eat('.');
		//next = get_next_expecting(tok_identifier, "identifier after '.'");
		result = parse_accesor(parse_atom_expression());
	}
	else if(next.type == tok_plusplus)
	{
		get_next_token();
		result->type = type_postfix;
		result->postfix.type = tok_plusplus;
	}
	else if(next.type == tok_minusminus)
	{
		get_next_token();
		result->type = type_postfix;
		result->postfix.type = tok_minusminus;
	}

	// NOTE(Vasko): probably not needed anymore
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
	if(result == NULL)
		raise_parsing_unexpected_token("opperand", last_read_token);
	
	return result;
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
		node->binary_expr.token = current;
		node->right = right;
		node->left = result;
		result = node;
	}
	return result;
}

b32
type_is_invalid(Type_Info type)
{
	if(type.type == T_INVALID)
		return true;
	return false;
}

Ast_Node *
parse_expression(Token stop_at)
{
	if(peek_next_token().type == stop_at)
	{
		get_next_token();
		return NULL;
	}
	Ast_Node *result = parse_binary_expression(stop_at, 1);
	if(stop_at != '\x18')
	{
		parser_eat(stop_at);
	}
	return result;
}

u8 *
ptr_to_identifier(Type_Info ptr)
{
	if(ptr.type == T_POINTER)
	{
		u8 *result = ptr_to_identifier(*ptr.pointer.type);
		vstd_strcat((char *)result, "*");
		return result;
	}
	else
	{
		Assert(ptr.identifier);
		size_t len = vstd_strlen((char *)ptr.identifier);
		u8 *result = AllocateCompileMemory(len + 64);
		memcpy(result, ptr.identifier, len);
		return result;
	}
}

Type_Info
parse_type()
{
	Type_Info result = {};
	Token_Iden pointer_or_type = peek_next_token();
	result.token = pointer_or_type;
	
	if (pointer_or_type.type == '*')
	{
		get_next_token();
		result.type = T_POINTER;
		Type_Info pointed = parse_type();
		result.pointer.type = AllocateCompileMemory(sizeof(Type_Info));
		memcpy(result.pointer.type, &pointed, sizeof(Type_Info));
		result.identifier = ptr_to_identifier(result);
	}
	else if(pointer_or_type.type == tok_identifier)
	{
		// @Note: Invalid types are checked in analyzer
		result = get_type(pointer_or_type.identifier);
		if(!type_is_invalid(result))
			get_next_token();
	}
	else
	{
		result = (Type_Info){.type = T_INVALID};
	}
	result.token = pointer_or_type;
	return result;
}

Ast_Node *
parse_struct()
{
	parser_eat(tok_struct);
	Token_Iden struct_id = get_next_expecting(tok_identifier, "struct name");
	parser_eat('{');
	Token_Iden curr_tok;
	Ast_Variable members[REASONABLE_MAXIMUM] = {};
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
		if(curr_tok.type != tok_identifier)
		{
			raise_parsing_unexpected_token("struct member or end of structer '}'", curr_tok);
		}
		parser_eat(':');
		Type_Info type = parse_type();
		Ast_Variable member = ast_variable(type, ast_identifier(curr_tok)->identifier, false)->variable;
		members[member_count++] = member;
	}
	if(member_count == 0)
	{
		raise_parsing_unexpected_token("struct members", curr_tok);
	}

	Ast_Node *result = ast_struct(ast_identifier(struct_id)->identifier, members, member_count);
	add_type(result);
	return result;
}

Ast_Node *
parse_func_arg()
{
	// @TODO: fix
	Token_Iden identifier_token = get_next_token();
	if(identifier_token.type == tok_var_args)
	{
		return ast_variable((Type_Info){.type = T_DETECT}, pure_identifier(identifier_token), true);
	}
	Ast_Node *result = parse_var(identifier_token);
	if(result == NULL)
		raise_parsing_unexpected_token("correctly formated argument", identifier_token);
	return result;
}

Ast_Node *
parse_func()
{
	parser_eat(tok_func);

	Ast_Func this_func = {0};
	Token_Iden func_identifier = get_variable();
	this_func.identifier = pure_identifier(func_identifier);
	this_func.arguments = delimited('(', ')', ',', parse_func_arg);
	parser_eat(tok_arrow);

	Type_Info func_type = {};
	if (peek_next_token().type != '{')
	{
		func_type = parse_type();
		if(type_is_invalid(func_type))
		{
			if(peek_next_token().type != ';')
			{
				raise_parsing_unexpected_token("valid type", peek_next_token());
			}
			func_type = (Type_Info){.type = T_VOID, .identifier = (u8 *)"void", .primitive.size = empty};
		}
	}
	else
	{
		func_type.type = T_VOID;
		func_type.identifier = (u8 *)"void";
	}
	this_func.type = func_type;

	Token_Iden body = get_next_token();

	Ast_Node *result = alloc_node();
	result->type = type_func;
	result->function = this_func;

	{
		Symbol this_symbol = {.token = func_identifier, .node = result, 
			.identifier = this_func.identifier.name, .type = func_type, .tag = S_FUNCTION};
		add_symbol(this_symbol, &result->function.identifier);
	}

	if(body.type == '{')
	{
		// TODO(Vasko): move this to analyzer to add symbols on scope stack
		for(size_t i = 0; i < SDCount(result->function.arguments); ++i)
		{
			Ast_Variable arg = result->function.arguments[i]->variable;
			Symbol arg_symbol = {.token = func_identifier, .node = result->function.arguments[i],
				.identifier = arg.identifier.name, .type = arg.type, .tag = S_FUNC_ARG};
			add_symbol(arg_symbol, &result->function.identifier);
		}
		result->left = parse_body(func_identifier, true);
	}
	else if(body.type == ';')
		result->left = parse_file_level_statement();
	else
		raise_parsing_unexpected_token("'{' or ';'", body);

	return result;
}

void parser_eat(Token expected_token)
{
	Token_Iden got_token = get_next_token();
	if (got_token.type != expected_token)
	{
		raise_parsing_unexpected_token((const char *)token_to_str(expected_token), got_token);
	}
}
