#include <Parser.h>
#include <Analyzer.h>
#include <Memory.h>

static b32 reached_eof;
static Token_Iden last_read_token;
static const char *expected;
static const Token_Iden invalid_token = {};

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
	Ast_Node *result = (Ast_Node *)AllocateCompileMemory(sizeof(Ast_Node));
	memset(result, 0, sizeof(Ast_Node));
	return result;
}

Ast_Node *
ast_array_list(Token_Iden start_tok, Ast_Node **list)
{
	Ast_Node *result = alloc_node();
	result->type = type_array_list;
	result->array_list.token = start_tok;
	result->array_list.list = list;
	return result;
}

Ast_Node *
ast_cast(Token_Iden token, Type_Info type, Ast_Node *expression)
{
	Ast_Node *result = alloc_node();
	result->type = type_cast;
	result->cast.token = token;
	result->cast.type = type;
	result->cast.expression = expression;
	return result;
}

Ast_Node *
ast_unary_expr(Token_Iden token, Ast_Node *expr)
{
	Ast_Node *result = alloc_node();
	result->type = type_unary_expr;
	result->unary_expr.op = token;
   	result->unary_expr.expression = expr;
	return result;
}

Ast_Node *
ast_identifier(File_Contents *f, Token_Iden identifier_token)
{
	if(identifier_token.type != tok_identifier)
		raise_parsing_unexpected_token("identifier", f);
	
	Ast_Node *result = alloc_node();
	result->type = type_identifier;
	result->identifier.token = identifier_token;
	result->identifier.name = identifier_token.identifier;
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
ast_assignment_from_decl(Ast_Node *lhs, Ast_Node *rhs, Type_Info decl_type, Token_Iden *error_token, b32 is_const)
{
	Ast_Node *result = alloc_node();
	result->type = type_assignment;
	result->assignment.is_declaration = true;
	result->assignment.lhs = lhs;
	result->assignment.rhs = rhs;
	result->assignment.token = *error_token;
	result->assignment.assign_type = (Token)'=';
	result->assignment.is_const = is_const;
	result->assignment.decl_type = decl_type;
	return result;
}

Ast_Node *
ast_indexing(Token_Iden token, Ast_Node *operand, Ast_Node *expression)
{
	Ast_Node *result = alloc_node();
	result->type = type_index;
	result->index.expression = expression;
	result->index.token = token;
	result->index.operand = operand;
	return result;
}

Ast_Node *
ast_run(Token_Iden token, Ast_Node *to_run)
{
	Ast_Node *result = alloc_node();
	result->type = type_run;
	result->run.to_run = to_run;
	result->run.token = token;
	return result;
}

Ast_Node *
ast_assignment(Ast_Node *lhs, Ast_Node *rhs, Token op, Token_Iden *error_token)
{
	Ast_Node *result = alloc_node();
	
	result->type = type_assignment;
	result->assignment.is_declaration = false;
	result->assignment.lhs = lhs;
	result->assignment.rhs = rhs;
	result->assignment.token = *error_token;
	result->assignment.assign_type = op;
	// @Note: only here if is_declaration is true
	result->assignment.decl_type = (Type_Info){.type = T_INVALID};
	return result;
}

Ast_Node *
ast_enum(Ast_Identifier id, Ast_Node **members, Type_Info type, Token_Iden error_token)
{
	Ast_Node *result = alloc_node();
	result->type = type_enum;
	result->enumerator.id = id;
	result->enumerator.type = type;
	result->enumerator.members = members;
	result->enumerator.token = error_token;
	return result;
}

Ast_Node *
ast_struct(Ast_Identifier id, Ast_Variable *members, int member_count, b32 is_union)
{
	Ast_Node *result = alloc_node();
	result->type = type_struct;
	result->structure.struct_id = id;
	result->structure.members = members;
	result->structure.member_count = member_count;
	result->structure.is_union = is_union;
	
	return result;
}

Ast_Node *
ast_selector(Token_Iden dot_token, Ast_Node *operand, Ast_Node *identifier)
{
	Assert(identifier->type == type_identifier);
	Ast_Node *result = alloc_node();
	result->type = type_selector;
	result->selector.dot_token = dot_token;
	result->selector.operand = operand;
	result->selector.identifier = identifier;
	return result;
}

Ast_Node *
ast_postfix(Token_Iden postfix, Ast_Node *operand)
{
	Ast_Node *result = alloc_node();
	result->type = type_postfix;
	result->postfix.operand = operand;
	result->postfix.token = postfix;
	return result;
}

Ast_Node *
ast_statements()
{
	Ast_Node *result = alloc_node();
	result->type = type_statements;
	result->statements.list = SDCreate(Ast_Node *);
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
parse(File_Contents *f)
{
	Ast_Node *root = alloc_node();
	root->type = type_root;
	// NOTE(Vasko): nothing special about root, it doesn't contain data
	f->overloads = SDCreate(Ast_Node *);

	Token_Iden *info_tok = f->curr_token;

	Scope_Info scope_info = {false, (unsigned int)info_tok->line, 0, info_tok->file, NULL};
	push_scope(f, scope_info);
	root = parse_file_level_statement_list(f);
	if(!reached_eof)
	{
		raise_parsing_unexpected_token("end of file", f);
	}
	pop_scope(f, *f->prev_token);
	if(!is_scope_stack_empty(f))
		raise_semantic_error(f, "not all scopes closed by eof", *f->prev_token);
	return root;
}

Ast_Node *
parse_file_level_statement(File_Contents *f)
{
	Ast_Node *result = alloc_node();
	switch ((int)f->curr_token->type)
	{
		case tok_struct:
		{
			result = parse_struct(f);
		} break;
		case tok_enum:
		{
			result = parse_enum(f);
		} break;
		case tok_overload:
		{
			result = parse_overload(f);
			SDPush(f->overloads, result);
		} break;
		case tok_func:
		{
			result = parse_func(f);
			if (result == NULL)
			{
				raise_parsing_unexpected_token(expected, f);
			}
		} break;
		case tok_identifier:
		{
			result = parse_identifier_statement(f, (Token)';');
		} break;
		case tok_eof:
		{
			reached_eof = true;
			return NULL;
		} break;
		case tok_run:
		{
			result = ast_run(advance_token(f), parse_expression(f, NO_EXPECT, false));
		} break;
		default:
		{
			advance_token(f);
			raise_parsing_unexpected_token("top level statement", f);
		} break;
	}
	return result;
}

Ast_Node *
parse_file_level_statement_list(File_Contents *f)
{
	Ast_Node *result = ast_statements();
	while(true)
	{
		Ast_Node *statement = parse_file_level_statement(f);
		if(statement == NULL)
			break;
		SDPush(result->statements.list, statement);
	}
	return result;
}

Call_Conv
parse_call_conv(File_Contents *f)
{
	if(f->curr_token->type != tok_identifier)
	{
		advance_token(f);
		raise_parsing_unexpected_token("calling convention (ex. $call c_decl)", f);
	}
	char *convention = (char *)f->curr_token->identifier;
	if(vstd_strcmp(convention, (char *)"apoc"))
		return CALL_APOC;
	else if(vstd_strcmp(convention, (char *)"c_decl"))
		return CALL_C_DECL;
	else
		raise_parsing_unexpected_token("calling convention", f);
	Assert(false);
	return CALL_APOC;
}

Ast_Node *
parse_enum_value(File_Contents *f)
{
	Token_Iden id = get_next_expecting(f, tok_identifier, "identifier of enum member");
	Ast_Node *rhs = NULL;
	if(f->curr_token->type == '=')
	{
		advance_token(f);
		rhs = parse_expression(f, NO_EXPECT, false);
	}
	Ast_Node *identifier = ast_identifier(f, id);

	// @NOTE: Why does this want a pointer to a token when it's derefrenced anyway?
	return ast_assignment(identifier, rhs, tok_equals, &id);
}

Ast_Node *
parse_enum(File_Contents *f)
{
	Token_Iden tok = advance_token(f);
	Token_Iden identifier_token = advance_token(f);
	if(identifier_token.type != tok_identifier)
		raise_parsing_unexpected_token("identifier", f);

	Type_Info type = {T_UNTYPED_INTEGER};
	type.primitive.size = byte8;
	if(f->curr_token->type == (Token)':')
	{
		advance_token(f);
		type = parse_type(f);
	}

	Ast_Identifier id = pure_identifier(identifier_token);
	Ast_Node **members = delimited(f, '{', '}', ';', parse_enum_value);
	type = add_primitive_type(f, (char *)id.name, type.primitive.size);
	auto result = ast_enum(id, members, type, tok);
	return result;
}

Ast_Node *
parse_body(File_Contents *f, b32 is_func, Token_Iden opt_tok)
{
	Ast_Node *result = alloc_node();
	result->type = type_scope_start;
	
	if(opt_tok.file == NULL) {
		result->scope_desc.token = *f->curr_token;
		parser_eat(f, (Token)'{');
	} else {
		result->scope_desc.token = opt_tok;
	}
	Scope_Info new_scope = {false, (unsigned int)f->curr_token->line, 0, (char *)f->path, NULL};
	push_scope(f, new_scope);
	result->scope_desc.body = parse_statement_list(f);
	return result;
}

Token_Iden *
find_identifier(Ast_Node *expr)
{
	switch(expr->type)
	{
		case type_identifier:
		{
			return &expr->identifier.token;
		} break;
		case type_unary_expr:
		{
			return find_identifier(expr->unary_expr.expression);
		} break;
		case type_index:
		{
			return find_identifier(expr->index.operand);
		} break;
		case type_selector:
		{
			return find_identifier(expr->selector.operand);
		} break;
		case type_func_call:
		{
			return find_identifier(expr->func_call.operand);
		} break;
		default:
		{
			return NULL;
		} break;
	}
	return NULL;
}

Ast_Node *
parse_identifier_statement(File_Contents *f, Token ends_with)
{
	Ast_Node *lhs = parse_expression(f, NO_EXPECT, true);
	Token_Iden *identifier_token = find_identifier(lhs);
	if(!identifier_token)
	{
		raise_parsing_unexpected_token("identifier", f);
	}
	b32 is_const = false;
	switch((int)f->curr_token->type)
	{
		case tok_equals:
		case tok_plus_equals:
		case tok_minus_equals:
		case tok_mult_equals:
		case tok_div_equals:
		case tok_mod_equals:
		case tok_and_equals:
		case tok_or_equals:
		case tok_xor_equals:
		case tok_lshift_equals:
		case tok_rshift_equals:
		{
			Token_Iden assign_type = advance_token(f);
			Ast_Node *rhs = parse_expression(f, ends_with, false);
			return ast_assignment(lhs, rhs, assign_type.type, identifier_token);
		} break;
		case tok_const:
		is_const = true;
		// fallthrough
		case ':':
		{
			advance_token(f);
			Type_Info assign_type = {};
			if (f->curr_token->type == tok_equals || is_const)
				assign_type.type = T_DETECT;	
			else
				assign_type = parse_type(f);
			if(f->curr_token->type == ';')
			{
				advance_token(f);
				return ast_assignment_from_decl(lhs, NULL, assign_type, identifier_token, is_const);
			}
			if(!is_const)
			{
				if(f->curr_token->type == ':')
				{
					is_const = true;
					advance_token(f);
				}
				else
					parser_eat(f, (Token)'=');
			}
			Ast_Node *rhs = parse_expression(f, ends_with, false);
			assign_type.is_const = is_const;
			return ast_assignment_from_decl(lhs, rhs, assign_type, identifier_token, is_const);
		} break;
		default:
		{
			parser_eat(f, ends_with);
			return lhs;
		} break;
	}
	return NULL;
}

Ast_Node *
parse_for_statement(File_Contents *f)
{
	Token_Iden token = *f->curr_token;
	parser_eat(f, tok_for);

	Ast_Node *result = alloc_node();
	result->type = type_for;
	if(f->curr_token->type != ';')
		result->for_loop.expr1 = parse_identifier_statement(f, (Token)';');
	else
		advance_token(f);
	
	// @TODO: Make optional
	result->for_loop.expr2 = parse_expression(f, (Token)';', false);

	f->expression_level = -1;
	if(f->curr_token->type != '{')
		result->for_loop.expr3 = parse_expression(f, (Token)NO_EXPECT, false);
	else
		advance_token(f);

	f->expression_level = 0;

	result->for_loop.token = token;
	return result;
}

Ast_Node *
parse_statement(File_Contents *f)
{
	Ast_Node *result = NULL;
	
	switch((int)f->curr_token->type)
	{
		case '{':
		{
			return parse_body(f, false, advance_token(f));
		} break;
		case tok_if:
		{
			result = alloc_node();
			result->type = type_if;
			f->expression_level = -1;
			result->condition.token = advance_token(f);
			result->condition.expr = parse_expression(f, NO_EXPECT, false);
			f->expression_level = 0;
		} break;
		case tok_else:
		{
			result = alloc_node();
			result->type = type_else;
			result->condition.token = advance_token(f);
		} break;
		case tok_for:
		{
			result = parse_for_statement(f);
		} break;
		case tok_star:
		case tok_identifier:
		{
			result = parse_identifier_statement(f, (Token)';');
		} break;
		case tok_arrow:
		{
			advance_token(f);
			result = alloc_node();
			result->type = type_return;
			result->ret.token = *f->curr_token;
			result->ret.expression = parse_expression(f, (Token)';', false);
		} break;
		case tok_break:
		{
			advance_token(f);
			result = alloc_node();
			result->type = type_break;
		} break;
		case '}':
		{
			result = alloc_node();
			result->type = type_scope_end;
			result->scope_desc.token = advance_token(f);
			pop_scope(f, result->scope_desc.token);
			return result;
		} break;
		default:
		{
			raise_parsing_unexpected_token("[ '}' ]", f);
		}
	}
	return result;
}

Ast_Node *
parse_statement_list(File_Contents *f)
{
	Ast_Node *result = ast_statements();
	b32 should_break = false;
	while(!should_break)
	{
		if(f->curr_token->type == '}')
			should_break = true;
		Ast_Node *statement = parse_statement(f);
		SDPush(result->statements.list, statement);
	}
	return result;
}

// @NOTE: parser should check for errors
// SDArray
Ast_Node **
delimited(File_Contents *f, char start, char stop, char seperator, Ast_Node *(*parser)(File_Contents *))
{
	Ast_Node **result = SDCreate(Ast_Node *);

	b32 has_args = false;
	parser_eat(f, (Token)start);

	while (true)
	{
		if(f->curr_token->type == stop)
		{
			if(has_args)
				raise_parsing_unexpected_token("expression", f);
			break;
		}
		Ast_Node *item = parser(f);
		if(item)
			SDPush(result, item);
		if(f->curr_token->type == stop)
			break;
		parser_eat(f, (Token)seperator);
	}
	parser_eat(f, (Token)stop);
	return result;
}

b32
is_op_equals(Token tok)
{
	switch((int)tok)
	{
		case tok_plus_equals:
		case tok_minus_equals:
		case tok_mult_equals:
		case tok_div_equals:
		case tok_mod_equals:
		case tok_lshift_equals:
		case tok_rshift_equals:
		case tok_and_equals:
		case tok_xor_equals:
		case tok_or_equals:
		return true; break;
		default:
		return false; break;
	}
}

int
get_precedence(Token op, b32 on_left, b32 is_lhs)
{
	switch ((int)op)
	{
	case tok_plusplus:
	case tok_minusminus:
	case '(':
	case '[':
		return on_left ? 35 : 34;

	case '*':
	case '/':
	case '%':
		return on_left ? 33 : 32;

	case '+':
	case '-':
		return on_left ? 31 : 30;

	case tok_bits_lshift:
	case tok_bits_rshift:
		return on_left ? 29 : 28;

	case '>':
	case '<':
	case tok_logical_gequal:
	case tok_logical_lequal:
		return on_left ? 27 : 26;

	case tok_logical_is:
	case tok_logical_isnot:
		return on_left ? 25 : 24;

	case tok_bits_and:
		return on_left ? 23 : 22;
	case tok_bits_xor:
		return on_left ? 21 : 20;
	case tok_bits_or:
		return on_left ? 19 : 18;
	case tok_logical_and:
		return on_left ? 17 : 16;
	case tok_logical_or:
		return on_left ? 15 : 14;

// @TODO: look more into if and how these should be handled here
	case tok_equals:
	case tok_plus_equals:
	case tok_minus_equals:
	case tok_mult_equals:
	case tok_div_equals:
	case tok_mod_equals:
	case tok_lshift_equals:
	case tok_rshift_equals:
	case tok_and_equals:
	case tok_xor_equals:
	case tok_or_equals:
		if(is_lhs)
			return 0;
		return on_left ? 10 : 11;

	}
	return 0;
}


Ast_Node *
parse_var(File_Contents *f, Token_Iden name_token)
{
	Token_Iden colon = *f->curr_token;
	if(colon.type != ':')
		return NULL;
	
	advance_token(f);
	Type_Info type_info = {};
	
	Token_Iden type_tok = *f->curr_token;
	if(type_tok.type == '=')
	{
		advance_token(f);
		type_info.type = T_DETECT;
		type_info.token = type_tok;
	}
	else if(type_tok.type == tok_identifier || type_tok.type == tok_star)
	{
		type_info = parse_type(f);
	}
	else
	{
		raise_parsing_unexpected_token("Type after ':'." 
									   "In the case of a declaration you can alse use '='", f);
	}
	
	Assert(type_info.token.file != NULL);
	Ast_Node *result = ast_variable(type_info, pure_identifier(name_token), false);
	return result;
}

b32
is_literal(Token_Iden token)
{
	if(token.type == tok_identifier || token.type == tok_const_str || token.type == tok_number)
		return true;
	return false;
}

Ast_Node *
parse_func_call(File_Contents *f, Ast_Node *operand)
{
	Ast_Node *result = alloc_node();
	result->type = type_func_call;
	result->func_call.operand = operand;
	result->func_call.arguments = SDCreate(Ast_Node *);
	result->func_call.token = advance_token(f);

	b32 has_multiple_args = false;
	
	while(true)
	{
		if(f->curr_token->type == ')')
		{
			advance_token(f);
			break;
		}
		Ast_Node *expression = parse_expression(f, NO_EXPECT, false);
		if(expression)
			SDPush(result->func_call.arguments, expression);

		Token_Iden next = advance_token(f);
		if(has_multiple_args && expression == NULL)
			raise_parsing_unexpected_token("expression after [ , ]", f);
		if(next.type == ')')
			break;
		if(next.type != ',')
			raise_parsing_unexpected_token("[ , ] or [ ) ] after expression", f);

		has_multiple_args = true;
	}
	return result;
}

Ast_Node *
parse_struct_initialize(File_Contents *f, Ast_Node *operand)
{
	if (!operand || operand->type != type_identifier)
	{
		raise_parsing_unexpected_token("identifier for struct initialization", f);
	}
	Ast_Node *result = alloc_node();
	result->type = type_struct_init;
	result->struct_init.operand = operand;
	result->struct_init.expressions = SDCreate(Ast_Node *);
	result->struct_init.token = *f->curr_token;

	while(true)
	{
		if(f->curr_token->type == '}')
		{
			advance_token(f);
			break;	
		}
		Ast_Node *expression = parse_expression(f, NO_EXPECT, false);
		if(expression)
			SDPush(result->struct_init.expressions, expression);

		Token_Iden next = advance_token(f);
		if(next.type == '}')
			break;
		if(next.type != ',')
			raise_parsing_unexpected_token("[ , ] or [ } ] after expression", f);

	}
	return result;
}


Ast_Node *
parse_atom_expression(File_Contents *f, Ast_Node *operand, char stop_at, b32 is_lhs)
{
	b32 loop = true;
	while(loop)
	{
		if(f->curr_token->type == stop_at)
			return operand;
		
		switch ((int)f->curr_token->type)
		{
			case '(':
			{
				operand = parse_func_call(f, operand);
			} break;
			case '{':
			{
				if(f->expression_level < 0)
					return operand;
				if(is_lhs)
				{
					raise_parsing_unexpected_token("left-hand side of statement "
												   ", not got struct initialization", f);
				}
				advance_token(f);
				operand = parse_struct_initialize(f, operand);
			} break;
			case '[':
			{
				Token_Iden index_token = advance_token(f);
				operand = ast_indexing(index_token, operand, parse_expression(f, (Token)']', false));
			} break;
			case '.':
			{
				Token_Iden dot_token = advance_token(f);
				Token_Iden identifier_token = advance_token(f);
				operand = ast_selector(dot_token, operand,
									   ast_identifier(f, identifier_token));
			} break;
			case tok_plusplus:
			case tok_minusminus:
			{
				operand = ast_postfix(advance_token(f), operand); 
			} break;
			default:
			{
				loop = false;
			} break;
		}
	}
	return operand;
}

Ast_Node *
expression_list_parser(File_Contents *f)
{
	return parse_expression(f, NO_EXPECT, false);
}

Ast_Node *
parse_operand(File_Contents *f, char stop_at, b32 is_lhs)
{
	Ast_Node *result = NULL;
	switch((int)f->curr_token->type)
	{
		case tok_identifier:
		{
			result = ast_identifier(f, advance_token(f));
		} break;
		case tok_run:
		{
			Token_Iden token = advance_token(f);
			Ast_Node *run_expr = parse_expression(f, NO_EXPECT, false);
			result = ast_run(token, run_expr);
		} break;
		case tok_char:
		{
			if(is_lhs)
			{
				advance_token(f);
				raise_parsing_unexpected_token("left-handside of statement", f);
			}
			result = alloc_node();
			result->type = type_literal;
			Token_Iden char_tok = advance_token(f);
			int as_num = char_tok.identifier[0];
			char *num_str = (char *)AllocateCompileMemory(8);
			_vstd_IntToStr(as_num, num_str);
			Ast_Identifier ast_id = {char_tok, (u8 *)num_str, NULL};
			result->atom.identifier = ast_id;
		} break;
		case tok_number:
		{
			if(is_lhs)
			{
				advance_token(f);
				raise_parsing_unexpected_token("left-handside of statement", f);
			}
			result = alloc_node();
			result->type = type_literal;
			result->atom.identifier = pure_identifier(advance_token(f));
		} break;
		case tok_const_str:
		{
			if(is_lhs)
			{
				advance_token(f);
				raise_parsing_unexpected_token("left-handside of statement", f);
			}
			result = alloc_node();
			result->type = type_const_str;
			result->atom.identifier = pure_identifier(advance_token(f));
		} break;
		case '(':
		{
			advance_token(f);
			if(is_lhs)
			{
				raise_parsing_unexpected_token("left-handside of statement", f);
			}
			result = parse_expression(f, (Token)')', false);
		} break;
		case '{':
		{
			Token_Iden start_tok = *f->curr_token;
			if(stop_at == (Token)'}')
			{
				raise_parsing_unexpected_token("operand for an expression", f);
			}
			result = ast_array_list(start_tok, delimited(f, '{', '}', ',', expression_list_parser));
		}
	}
	return result;
}

Ast_Node *
parse_unary_expression(File_Contents *f, char stop_at, b32 is_lhs)
{
	Ast_Node *result = NULL;
	b32 lhs_unary = false;
	Token_Iden unary_token = *f->curr_token;
	switch((int)unary_token.type)
	{
		case tok_size:
		{
			Token_Iden token = advance_token(f);
			if(is_lhs)
			{
				raise_parsing_unexpected_token(
						"left-hand side of statement, not size expression", f);
			}
			result = alloc_node();
			result->type = type_size;
			result->size.token = token;
			result->size.operand = parse_unary_expression(f, stop_at, is_lhs);
			return result;
		} break;
		case '#':
		{
			Token_Iden token = advance_token(f);
			if(is_lhs)
			{
				raise_parsing_unexpected_token("left-hand side of statement, not cast", f);
			}
			Type_Info type = parse_type(f);
			result = ast_cast(token, type, parse_unary_expression(f, stop_at, false));
			return result;
		} break;
		case '*':
		lhs_unary = true;
		case '@':
		case tok_minus:
		case tok_not:
		case tok_plusplus:
		case tok_minusminus:
		{
			
			Token_Iden token = advance_token(f);
			if(is_lhs && !lhs_unary)
			{
				raise_parsing_unexpected_token("left-hand side of statement, not unary expression", f);
			}
			Ast_Node *expression = parse_unary_expression(f, stop_at, false);
			result = ast_unary_expr(token, expression);
			return result;
		} break;
		
	}

	result = parse_atom_expression(f, parse_operand(f, stop_at, is_lhs), stop_at, is_lhs);
	if (result == NULL)
		raise_parsing_unexpected_token("opperand", f);

	return result;
}



Ast_Node *
parse_binary_expression(File_Contents *f, Token stop_at, int min_bp, b32 is_lhs)
{
	Ast_Node *result = parse_unary_expression(f, stop_at, is_lhs);
	Token_Iden current;
	while(true)
	{
		current = *f->curr_token;
		
		int l_bp = get_precedence(current.type, true, is_lhs);
		int r_bp = get_precedence(current.type, false, is_lhs);

		if(current.type == stop_at || l_bp < min_bp)
			break;		
		advance_token(f);
		
		if(is_lhs)
			raise_parsing_unexpected_token("left-handside of statement, not binary operation", f);
		
		Ast_Node *right = parse_binary_expression(f, stop_at, r_bp, is_lhs);
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

Ast_Node *
parse_expression(File_Contents *f, Token stop_at, b32 is_lhs)
{
	if(f->curr_token->type == stop_at)
	{
		advance_token(f);
		return NULL;
	}
	Ast_Node *result = parse_binary_expression(f, stop_at, 1, is_lhs);
	if(stop_at != '\x18')
	{
		parser_eat(f, stop_at);
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
		u8 *result = (u8 *)AllocateCompileMemory(len + 64);
		memcpy(result, ptr.identifier, len);
		return result;
	}
}

Ast_Node *
parse_type_ast(File_Contents *f)
{
	Ast_Node *result = alloc_node();
	result->type = type_only_type;
	result->only_type.type = parse_type(f);
	return result;
}

Type_Info
parse_type(File_Contents *f)
{
	Type_Info result = {};
	Token_Iden pointer_or_type = *f->curr_token;
	result.token = pointer_or_type;
	
	if (pointer_or_type.type == '*')
	{
		advance_token(f);
		result.type = T_POINTER;
		Type_Info pointed = parse_type(f);
		result.pointer.type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
		memcpy(result.pointer.type, &pointed, sizeof(Type_Info));
	}
	else if(pointer_or_type.type == tok_identifier)
	{
		// @Note: Invalid types are checked in analyzer
		result = get_type(f, pointer_or_type.identifier);
		if(!result.identifier)
			result.identifier = pointer_or_type.identifier;
		advance_token(f);
	}
	else if(pointer_or_type.type == '[')
	{
		advance_token(f);
		result.type = T_ARRAY;
		result.identifier = (u8 *)"array_list";

		// @NOTE: not implemented, should it even be implemented?
		if(f->curr_token->type == ']')
		{
			result.array.array_type = ARR_DYNAMIC;
			result.array.optional_expression = NULL;
			Assert(false);
		}
		else
		{
			result.array.array_type = ARR_STATIC;
			result.array.optional_expression = parse_expression(f, (Token)']', false);
			b32 failed = false;
			Interp_Val count = interpret_expression(result.array.optional_expression, &failed);
			if(failed || !is_integer(count.type))
				raise_parsing_unexpected_token("constant integer expression", f);
			
			if(is_signed(count.type))
				result.array.elem_count = count.ti64;
			else
				result.array.elem_count = count.tu64;
		}
		Type_Info arr_type = parse_type(f);
		result.array.type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
		memcpy(result.array.type, &arr_type, sizeof(Type_Info));
	}
	else if(pointer_or_type.type == tok_func)
	{
		advance_token(f);
		if(f->curr_token->type == tok_call_conv)
		{
			advance_token(f);
			result.func.calling_convention = parse_call_conv(f);
			advance_token(f);
		}
		else
			result.func.calling_convention = CALL_APOC;
		result.type = T_FUNC;
		result.func.param_types = SDCreate(Type_Info);
		Ast_Node **types = delimited(f, '(', ')', ',', parse_type_ast);
		size_t type_count = SDCount(types);
		for(size_t i = 0; i < type_count; ++i)
		{
			SDPush(result.func.param_types, types[i]->only_type.type);
		}
		if(f->curr_token->type == tok_arrow)
		{
			advance_token(f);
			auto return_type = parse_type(f);
			auto allocated_ret_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			memcpy(allocated_ret_type, &return_type, sizeof(Type_Info));
			result.func.return_type = allocated_ret_type;
		}
		else
		{
			auto allocated_ret_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			allocated_ret_type->type = T_VOID;
			allocated_ret_type->identifier = (u8 *)"void";
			allocated_ret_type->token = *f->prev_token;
			allocated_ret_type->primitive.size = empty_void;
			result.func.return_type = allocated_ret_type;
		}
		result.identifier = var_type_to_name(result, false);
	}
	else
	{
		advance_token(f);
		raise_parsing_unexpected_token("type", f);
		//result = (Type_Info){.type = T_INVALID};
	}
	result.identifier = var_type_to_name(result, false);
	result.token = pointer_or_type;
	return result;
}

Ast_Node *
parse_struct(File_Contents *f)
{
	parser_eat(f, tok_struct);
	b32 is_union = false;
	if(f->curr_token->type == tok_union)
	{
		is_union = true;
		advance_token(f);
	}
	Token_Iden struct_id = get_next_expecting(f, tok_identifier, "struct name");
	parser_eat(f, (Token)'{');
	Token_Iden curr_tok;
	Ast_Variable *members = SDCreate(Ast_Variable);
	while(true)
	{
		curr_tok = advance_token(f);
		if(curr_tok.type == '}')
			break;
		if(curr_tok.type == ';')
		{
			curr_tok = advance_token(f);
			if(curr_tok.type == '}')
				break;
		}
		if(curr_tok.type != tok_identifier)
		{
			raise_parsing_unexpected_token("struct member or end of structer '}'", f);
		}
		parser_eat(f, (Token)':');
		Type_Info type = parse_type(f);
		Ast_Variable member = ast_variable(type, ast_identifier(f, curr_tok)->identifier, false)->variable;
		SDPush(members, member);
	}
	// @NOTE: this is dumb
	/*
	if(SDCount(members) == 0)
	{
		raise_parsing_unexpected_token("struct members", f);
	}
	*/

	Ast_Node *result = ast_struct(ast_identifier(f, struct_id)->identifier,
			members, SDCount(members), is_union);
	add_type(f, result);
	return result;
}

Ast_Node *
parse_func_arg(File_Contents *f)
{
	// @TODO: fix
	Token_Iden identifier_token = advance_token(f);
	if(identifier_token.type == tok_var_args)
	{
		return ast_variable((Type_Info){.type = T_DETECT}, pure_identifier(identifier_token), true);
	}
	Ast_Node *result = parse_var(f, identifier_token);
	if(result == NULL)
		raise_parsing_unexpected_token("correctly formated argument", f);
	return result;
}

Ast_Node *
parse_overload(File_Contents *f)
{
	Ast_Overload overload = {};
	overload.token = *f->curr_token;
	parser_eat(f, tok_overload);
	u8 *identifier = NULL;

	switch ((int)f->curr_token->type)
	{
		case '[':
		{
			overload.overloaded = O_INDEX;
			advance_token(f);
			parser_eat(f, (Token)']');
			identifier = (u8 *)"overload[]";
		} break;
		default:
		{
			if(is_op_equals(f->curr_token->type))
			{
				overload.overloaded = O_OP_EQUALS;
				overload.op = advance_token(f).type;
				identifier = (u8 *)"overload[x]=";
			}
			else
			{
				int prec = get_precedence(f->curr_token->type, true, false);
				if(prec == 0 || f->curr_token->type == '(')
					raise_parsing_unexpected_token("overloadable operand", f);
				overload.overloaded = O_OP;
				overload.op = advance_token(f).type;
				identifier = (u8 *)AllocatePermanentMemory(256);
				vstd_strcat((char *)identifier, "overload");
				if(overload.op > 32 && 127 > overload.op)
				{
					char to_cat[] = {(char)overload.op};
					vstd_strcat((char *)identifier, to_cat);
				}
			}
		} break;
	}

	Ast_Func this_func = {};
	this_func.identifier.token = overload.token;
	this_func.identifier.name = identifier;
	this_func.arguments = delimited(f, '(', ')', ',', parse_func_arg);
	size_t arg_count = SDCount(this_func.arguments);
	if(arg_count == 0)
		raise_parsing_unexpected_token("arguments", f);
	if(arg_count != 2 && arg_count != 1)
		raise_semantic_error(f, "operator overload must accepts either 1 or 2 arguments", 
				this_func.arguments[0]->variable.identifier.token);

	Type_Info func_type = {};
	if(f->curr_token->type == tok_arrow)
	{
		advance_token(f);
		Token_Iden maybe_type = *f->curr_token;
		if (maybe_type.type != '{' && maybe_type.type != ';')
		{
			func_type = parse_type(f);
		}
		else
		{
			advance_token(f);
			raise_parsing_unexpected_token("function return type", f);
		}
	}
	else
	{
		func_type.type = T_VOID;
		func_type.identifier = (u8 *)"void";
	}
	this_func.type = func_type;
	this_func.conv = CALL_APOC;
	this_func.body = parse_body(f, true, invalid_token);
	Ast_Node *function = alloc_node();
	function->type = type_func;
	function->function = this_func;
	overload.function = function;
	Ast_Node *overload_result = alloc_node();
	overload_result->type = type_overload;
	overload_result->overload = overload;
	return overload_result;
}

Ast_Node *
parse_func(File_Contents *f)
{
	parser_eat(f, tok_func);
	Ast_Func this_func = {};
	while(f->curr_token->type == tok_interp || f->curr_token->type == tok_intrinsic || f->curr_token->type == tok_call_conv)
	{
		switch((int)f->curr_token->type)
		{
			case tok_interp:
			{
				this_func.flags |= FF_IS_INTERP_ONLY;
			} break;
			case tok_intrinsic:
			{
				this_func.flags |= FF_IS_INTRINSIC;
			} break;
			case tok_call_conv:
			{
				advance_token(f);
				this_func.conv = parse_call_conv(f);
			} break;
		}
		advance_token(f);
	}

	if(this_func.conv == 0)
		this_func.conv = CALL_APOC;

	Ast_Node *func_id = ast_identifier(f, advance_token(f));
	this_func.identifier = func_id->identifier;
	this_func.arguments = delimited(f, '(', ')', ',', parse_func_arg);
	size_t arg_count = SDCount(this_func.arguments);
	for(size_t i = 0; i < arg_count; ++i)
	{
		if(this_func.arguments[i]->variable.type.type == T_DETECT)
			this_func.flags |= FF_HAS_VAR_ARGS;
	}
	
	
	Type_Info func_type = {};
	if(f->curr_token->type == tok_arrow)
	{
		advance_token(f);
		Token_Iden maybe_type = *f->curr_token;
		if (maybe_type.type != '{' && maybe_type.type != ';')
		{
			func_type = parse_type(f);
		}
		else
		{
			advance_token(f);
			raise_parsing_unexpected_token("function return type", f);
		}
	}
	else
	{
		func_type.type = T_VOID;
		func_type.identifier = (u8 *)"void";
	}
	this_func.type = func_type;


	Token_Iden body = *f->curr_token;

	Ast_Node *result = alloc_node();
	result->type = type_func;
	result->function = this_func;

	{
		Type_Info sym_type = {};
		sym_type.type = T_FUNC;
		sym_type.func.calling_convention = this_func.conv;

		Symbol this_symbol = {S_FUNCTION};
		this_symbol.token = func_id->identifier.token;
		this_symbol.node = result;
		this_symbol.identifier = this_func.identifier.name;
		this_symbol.type = sym_type;
		add_symbol(f, this_symbol);
		interpret_add_function(this_symbol);
	}

	if(body.type == '{')
	{
		result->function.body = parse_body(f, true, invalid_token);
	}
	else if(body.type == ';')
	{
		parser_eat(f, (Token)';');
	}
	else
		raise_parsing_unexpected_token("'{' or ';'", f);

	return result;
}

void parser_eat(File_Contents *f, Token expected_token)
{
	Token_Iden got_token = advance_token(f);
	if (got_token.type != expected_token)
	{
		raise_parsing_unexpected_token((const char *)token_to_str(expected_token), f);
	}
	last_read_token = got_token;
}
