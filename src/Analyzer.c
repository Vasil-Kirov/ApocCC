#include <Analyzer.h>
#include <Log.h>
#include <stdlib/std.h>
#include <Memory.h>

static Type_Table *type_table;
static Stack scope_stack;
static Scope_Info *scopes;


Type_Table *
get_type_table()
{
	return type_table;
}

void
initialize_analyzer()
{
	Type_Info invalid = {.type = T_INVALID};
	shdefault(type_table, invalid);
	scopes = SDCreate(Scope_Info);
	scope_stack = stack_allocate(Scope_Info);
}

void
add_primitive_type(const char *name, Var_Size size)
{
	Type type = T_INVALID;
	if(size < real32)
		type = T_INTEGER;
	else if(size < empty)
		type = T_FLOAT;
	else if(size == empty)
		type = T_VOID;
	
	Assert(type != T_INVALID);
	
	Type_Info type_info = {
		.type = type,
		.primitive.size = size,
	};

	if(shgeti(type_table, name) == -1)
	{
		shput(type_table, name, type_info);
	}
}

void
add_type(Ast_Node *structure)
{
	Assert(structure->type == type_struct);
	Type_Info type_info = {
		.type = T_STRUCT,
		.structure = structure
	};

	Ast_Struct s = structure->structure;
	for(int i = 0; i < s.member_count; ++i)
	{
		Symbol member_symbol = {.tag = S_STRUCT_MEMBER, .s_member.index = i,
			.identifier = s.members[i].identifier.name, .type = s.members[i].type,
			.node = structure};
		add_symbol(member_symbol, &s.members[i].identifier);
		
	}
	
	if(shgeti(type_table, structure->structure.struct_id.name) != -1)
	{
		raise_semantic_error("Redifinition of symbol", structure->structure.struct_id.token);
	}
	shput(type_table, structure->structure.struct_id.name, type_info);
}

Type_Info
get_type(u8 *name)
{
	Type_Info got = shget(type_table, name);
	got.identifier = name;
	return got;
}

void
push_scope(Scope_Info current_scope)
{
	current_scope.symbol_table = SDCreate(Symbol);
	stack_push(scope_stack, current_scope);
}

b32
is_scope_stack_empty() { return is_stack_empty(scope_stack); } 

void
pop_scope(Token_Iden closing_token)
{
	if(is_scope_stack_empty())
	{
		raise_semantic_error("Found a closing scope with no matching openning one", closing_token);
	}

	Scope_Info saved_scopes[4096] = {};
	size_t last_scope = 0;
	Scope_Info popped = stack_pop(scope_stack, Scope_Info);
	popped.end_line = get_line_tracker();
	Symbol *popped_table = popped.symbol_table;
	size_t symbol_table_size = SDCount(popped_table);
	while(!is_stack_empty(scope_stack))
	{
		Scope_Info to_scan = stack_pop(scope_stack, Scope_Info);
		size_t scan_size = SDCount(to_scan.symbol_table);
		Symbol *scanning_table = to_scan.symbol_table;

		saved_scopes[last_scope++] = to_scan;
		for(size_t i = 0; i < symbol_table_size; ++i)
		{
			Symbol a = popped_table[i];
			for(size_t j = 0; j < scan_size; ++j)
			{
				Symbol b = scanning_table[j];
				if(vstd_strcmp((char *)a.identifier, (char *)b.identifier))
				{
					char *error = AllocateCompileMemory(2048);
					vstd_sprintf(error, "Redifinition of symbol %s", a.identifier);
					raise_semantic_error(error, b.token);
				}
			}
		}
	}
	
	for(signed int i = last_scope - 1; i >= 0; --i)
	{
		stack_push(scope_stack, saved_scopes[i]);
	}

	SDPush(scopes, popped);
}

void
add_symbol(Symbol symbol, Ast_Identifier *identifier)
{
	Scope_Info stack_top = stack_peek(scope_stack, Scope_Info);
	Symbol *symbol_table = stack_top.symbol_table;
	SDPush(symbol_table, symbol);
	identifier->symbol_spot = &symbol_table[SDCount(symbol_table) - 1];
}


void
analyze(Ast_Node *ast_tree)
{
	/*
	for (size_t i = 0; i < SDCount(symbol_table); i++)
	{
		Symbol symbol = symbol_table[i];
		LG_INFO("Symbol: %s\n\n", symbol.identifier);
	}
	*/
	Scope_Info scope_info = {.file = (const char *)get_file_name(), .start_line = 1};
	push_scope(scope_info);
	analyze_file_level_statement(ast_tree);
	
}

void
analyze_file_level_statement(Ast_Node *node)
{
	if(node == NULL) return;
	switch(node->type)
	{
		case type_struct:
		{
			verify_struct(node);
			analyze_file_level_statement(node->left);
		}break;
		case type_func:
		{
			verify_func(node);
			Ast_Node *next_node = NULL;
			if(node->left->type == type_scope_start)
				next_node = node->left->left;
			else
				next_node = node->left;
			analyze_file_level_statement(next_node);
		}break;
		default:
		{
			LG_WARN("File level statement of type %s (id: %d) not analyzed",
					type_to_str(node->type), node->type);
			if(node->left != NULL)
				analyze_file_level_statement(node->left);
		}
	}
	return;
}

void
verify_func(Ast_Node *node)
{
	Assert(node->function.type.identifier);
	Token_Iden type_error_token = node->function.type.token;
	node->function.type = get_type(node->function.type.identifier);
	size_t arg_count = SDCount(node->function.arguments);
	for (size_t i = 0; i < arg_count; i++)
	{
		if(node->function.arguments[i]->variable.type.type == T_DETECT && i != arg_count - 1)
			raise_semantic_error("Variable length arguments must be last in the function signature", node->function.identifier.token);
	}
	
	if(node->function.type.type == T_INVALID)
	{
		char error_msg[1024] = {};
		vstd_sprintf(error_msg, "Undeclared type [%s]", node->function.type.identifier);
		raise_semantic_error(error_msg, type_error_token);
	}
	
	if(node->left->type == type_scope_start)
	{
		Token_Iden scope_tok = node->left->scope_desc.token;
		Scope_Info new_scope = {.file = scope_tok.file, .start_line = scope_tok.line};
		push_scope(new_scope);
		
		verify_func_level_statement(node->left->right, node);
	}	
}

void
verify_func_level_statement(Ast_Node *node, Ast_Node *func_node)
{
	if(node == NULL) return;
	switch(node->type)
	{
		case type_var:
		{
			Ast_Variable var = node->variable;
			Symbol symbol = {.identifier = var.identifier.name,
				.type =var.type, .node = node, .token = var.identifier.token, .tag = S_VARIABLE};
			add_symbol(symbol, &node->variable.identifier);
		}break;
		case type_assignment:
		{
			verify_assignment(node);
		} break;
		case type_scope_end:
		{
			Scope_Info this_scope = stack_pop(scope_stack, Scope_Info);
			if(scope_stack.top == 0)
			{
				if(!this_scope.has_return)
				{
					raise_semantic_error("Not all paths lead to a return statement", node->scope_desc.token);
				}
			}
			stack_push(scope_stack, this_scope);
			pop_scope(node->scope_desc.token);
			return;
		} break;
		case type_scope_start:
		{
			Token_Iden scope_tok = node->scope_desc.token;
			Scope_Info new_scope = {.file = scope_tok.file, .start_line = scope_tok.line};
			push_scope(new_scope);
			verify_func_level_statement(node->right, func_node);
		} break;
		case type_return:
		{
			Type_Info return_type = get_expression_type(node->right, node->holder.token, NULL);
		
			if(type_is_invalid(return_type))
				return_type = (Type_Info){.type = T_VOID, .identifier = (u8 *)"void"};
			if(!check_type_compatibility(func_node->function.type,
											return_type))
			{
				char error[4096 * 3] = {};
				vstd_sprintf(error, "return type of %s is incompatible with"
							 " function %s's return type %s",
							 var_type_to_name(return_type),
							 func_node->function.identifier.name,
							 var_type_to_name(func_node->function.type));
				raise_semantic_error(error, node->holder.token);
			}
			Scope_Info scope = stack_pop(scope_stack, Scope_Info);
			scope.has_return = true;
			stack_push(scope_stack, scope);

		} break;
		default:
		{
			LG_WARN("Func level statement of type %s (id: %d) not analyzed",
					type_to_str(node->type), node->type);
		}
	}
	verify_func_level_statement(node->left, func_node);
}


void
verify_assignment(Ast_Node *node)
{
	if(node->type != type_assignment)
	{
		LG_FATAL("Compiler bug in file %s at line %d, expected node type_assignment, got %s (id: %d)",
				 __FILE__, __LINE__, type_to_str(node->type), node->type);
	}
	Type_Info expression_type = get_expression_type(node->assignment.expression,
													node->assignment.token, NULL);
	if(!node->assignment.is_declaration)
	{
		node->assignment.variable.type = get_symbol_spot(node->assignment.token)->type;
	}
	if(type_is_invalid(expression_type))
	{
		raise_semantic_error("Invalid expression", node->assignment.token);
	}
	
	if(node->assignment.variable.type.type == T_DETECT)
	{
		if(is_untyped(expression_type))
		{
			expression_type = untyped_to_type(expression_type);
			expression_type.identifier = (u8 *)"i64";
		}
		node->assignment.variable.type = expression_type;
	}
	else if(!check_type_compatibility(node->assignment.variable.type, expression_type))
	{
		char *error = AllocateCompileMemory(2048);
		vstd_sprintf(error, "Tried to assign %s to variable of type %s",
					 var_type_to_name(expression_type),
					 var_type_to_name(node->assignment.variable.type));
		raise_semantic_error(error, node->assignment.token);
	}
	
	if(node->assignment.is_declaration)
	{
		Symbol this_symbol = {.token = node->assignment.token, .node = node,
			.identifier = node->assignment.variable.identifier.name,
			.type = node->assignment.variable.type, .tag = S_VARIABLE};
		add_symbol(this_symbol, &node->assignment.variable.identifier);
	}
}

Type_Info
verify_selector(Type_Info left_type, Ast_Node *selected, Token_Iden error_tok)
{
	if(!is_accessible(left_type))
	{
		raise_semantic_error("Primitive variable has no members to be accessed with '.'", error_tok);
	}
	
	Token_Iden selected_tok = {};
	if(selected->type == type_identifier)
	{
		selected_tok = selected->identifier.token;
	}
	else if (selected->type == type_func_call)
	{
		selected_tok = selected->func_call.identifier.token;
	}
	else
	{
		raise_semantic_error("Improper struct accessing", error_tok);
	}
	
	u8 *selected_id = selected_tok.identifier;
	
	Assert(left_type.identifier);
	Type_Info structure = left_type;
	size_t member_count = structure.structure->structure.member_count;
	for(size_t i = 0; i < member_count; ++i)
	{
		if(vstd_strcmp((char *)selected_id, 
					   (char *)structure.structure->structure.members[i].identifier.name))
		{
			/*if(structure.maybe_members[i].type.is_primitive == false)
			{
			}*/
			return structure.structure->structure.members[i].type;
		}
	}

	{
		char *error = AllocateCompileMemory(2048);
		vstd_sprintf(error, "Accessing non existant member of struct (Type %s, Member %s)",
					 structure.structure->structure.struct_id.name, selected_id);
		raise_semantic_error(error, selected_tok);
	}
	return (Type_Info){T_INVALID};
}

Type_Info
number_to_untyped_type(u8 *number)
{
	for(int i = 0; number[i] != 0; ++i)
	{
		if(number[i] == '.')
			return (Type_Info){T_UNTYPED_FLOAT};
	}
	return (Type_Info){T_UNTYPED_INTEGER};
}

Type_Info
untyped_to_type(Type_Info type)
{
	if(type.type == T_UNTYPED_INTEGER)
		return (Type_Info){.type = T_INTEGER, .primitive.size = byte8};
	if(type.type == T_UNTYPED_FLOAT)
		return (Type_Info){.type = T_FLOAT, .primitive.size = real64};
	Assert(false);
	return (Type_Info){};
}

Type_Info
get_expression_type(Ast_Node *expression, Token_Iden desc_token, Type_Info *previous)
{
	if(expression == NULL)
		return (Type_Info){.type = T_INVALID};

	Type_Info result = {.type = T_INVALID};
	if(expression->type == type_identifier)
	{
			if(expression->identifier.symbol_spot)
					result = expression->identifier.symbol_spot->type;
			else
			{
					result = get_symbol_spot(expression->identifier.token)->type;
			}
	}

	else if(expression->type == type_selector)
	{
			if(previous == NULL)
					raise_semantic_error("Used  [.] operator on an invalid expression", desc_token);
			*previous = verify_selector(*previous, expression->selector.selected, 
							expression->identifier.token);
	}
	else if(expression->type == type_func_call)
	{
		result = verify_func_call(expression, desc_token);
	}
	else if(expression->type == type_struct_init)
	{
		result = verify_struct_init(expression, desc_token);
	}
	else if(expression->type == type_literal)
	{
		result = number_to_untyped_type(expression->atom.identifier.name); 
	}
	else if(expression->type == type_const_str)
	{
		result.type = T_STRING;
		result.identifier = (u8 *)"string";
		result.v_string.content = &(expression->atom.identifier);
	}
	else if(expression->type == type_unary_expr)
	{
		result = get_expression_type(expression->unary_expr.expression, desc_token, &result);
	}
	else result = (Type_Info){T_INVALID};
	
	
	Type_Info left_type = get_expression_type(expression->left, desc_token, &result);
	Type_Info right_type = get_expression_type(expression->right, desc_token, &result);
	
	
	
	if(!type_is_invalid(left_type))
	{
		if(type_is_invalid(result))
			result = left_type;
			
		if(!are_op_compatible(left_type, result))
		{
			char *error = AllocateCompileMemory(2048);
			vstd_sprintf(error, "You can't perform an operation with types %s and %s",
						 var_type_to_name(result), var_type_to_name(left_type));
			raise_semantic_error(error, desc_token);
		}
	}

	if(!type_is_invalid(right_type))
	{
		if(type_is_invalid(result))
			result = left_type;
		
		if(!type_is_invalid(result) && !are_op_compatible(right_type, result))
		{
			char *error = AllocateCompileMemory(2048);
			vstd_sprintf(error, "You can't perform an operation with types %s and %s",
						 var_type_to_name(result), var_type_to_name(right_type));
			raise_semantic_error(error, desc_token);
		}
	}
	return result;
}

Type_Info
verify_func_call(Ast_Node *func_call, Token_Iden expr_token)
{
	b32 has_va_args = false;
	Symbol *func_sym = get_symbol_spot(func_call->func_call.identifier.token);
	Ast_Node **func_args = func_sym->node->function.arguments;
	Ast_Node **passed_expr = func_call->func_call.arguments;
	size_t expr_count = SDCount(passed_expr);
	size_t args_count = SDCount(func_args);

	size_t j = 0;
	for(size_t i = 0; i < expr_count; ++i)
	{
		Type_Info expr_type = get_expression_type(passed_expr[i], expr_token, NULL);
		Type_Info arg_type = func_args[j]->variable.type;
		if(arg_type.type == T_DETECT)
		{
			has_va_args = true;
		}
		else if(!check_type_compatibility(arg_type, expr_type))
		{
			char *error = AllocateCompileMemory(2048);
			vstd_sprintf(error, "Expression #%d in function call is of type %s,"
						 " argument #%d is of incompatible type %s",
						 i + 1,
						 var_type_to_name(expr_type),
						 j + 1,
						 var_type_to_name(arg_type));
			raise_semantic_error(error, func_call->func_call.identifier.token);
		}
		if(!has_va_args)
			j++;
	}
	if(!has_va_args && args_count != expr_count)
	{
		char *error = AllocateCompileMemory(2048);
		vstd_sprintf(error, "Incorrect number of arguments, passed %d, function required %d", expr_count, args_count);
		raise_semantic_error(error, func_call->func_call.identifier.token);
	}	
	return func_sym->type;
}

Type_Info
verify_struct_init(Ast_Node *struct_init, Token_Iden error_token)
{
	if(struct_init->type != type_struct_init)
	{
		raise_semantic_error("Incorrect name of struct used for struct initialization", error_token);
	}
	
	Token_Iden init_token = struct_init->struct_init.id_token;
	u8 *struct_id = init_token.identifier;
	Ast_Node **expressions = struct_init->struct_init.expressions;
	Type_Info struct_type = get_type(struct_id);
	
	if(struct_type.type != T_STRUCT)
	{
		raise_semantic_error("Incorrect identifier used for struct initialization", init_token);
	}
	Ast_Variable *members = struct_type.structure->structure.members;
	int member_count = struct_type.structure->structure.member_count;
	
	if(type_is_invalid(struct_type))
	{
		char *error = AllocateCompileMemory(4 * (vstd_strlen((char *)struct_id) + 16));
		vstd_sprintf(error, "Struct %s doesn't exist, error in struct initializer", struct_id);
		raise_semantic_error(error, init_token);
	}
	if(SDCount(expressions) > member_count)
	{
		raise_semantic_error("Too many expressions in struct initialization", init_token);
	}
	
	for(size_t i = 0; i < SDCount(expressions); ++i)
	{
		Type_Info expr_type = get_expression_type(expressions[i], init_token, NULL);
		Type_Info member_type = members[i].type;
		if(!check_type_compatibility(member_type, expr_type))
		{
			char *error = AllocateCompileMemory(2048);
			vstd_sprintf(error, "Expression #%d in struct initialization is of type %s,"
						 " member #%d is of incompatible type %s",
						 i + 1,
						 var_type_to_name(expr_type),
						 i + 1,
						 var_type_to_name(member_type));
			raise_semantic_error(error, init_token);
		}
	}
	return struct_type;
}

Symbol *
get_symbol_spot(Token_Iden token)
{
	Symbol *result = NULL;
	u8 *identifier = token.identifier;


	Scope_Info saved_scopes[4096] = {};
	size_t last_scope = 0;

	while(!is_stack_empty(scope_stack))
	{
		Scope_Info to_scan = stack_pop(scope_stack, Scope_Info);
		size_t scan_size = SDCount(to_scan.symbol_table);
		Symbol *scanning_table = to_scan.symbol_table;

		saved_scopes[last_scope++] = to_scan;
		for(size_t i = 0; i < scan_size; ++i)
		{
			Symbol a = scanning_table[i];
			if(vstd_strcmp((char *)a.identifier, (char *)identifier))
			{
				result = scanning_table + i;
			}
		}
	}
	
	for(signed int i = last_scope - 1; i >= 0; --i)
	{
		stack_push(scope_stack, saved_scopes[i]);
	}

	// NOTE(Vasko): Loops to check for function definitions
	if(result == NULL)
	{
		size_t scan_size = SDCount(scopes);
		for(size_t i = 0; i < scan_size; ++i)
		{
			Scope_Info scope = scopes[i];
			size_t table_size = SDCount(scope.symbol_table);
			for(size_t j = 0; j < table_size; ++j)
			{
				if(vstd_strcmp((char *)(scope.symbol_table[j].identifier), (char *)identifier))
				{
					result = &scope.symbol_table[j];
					goto EXIT_FUNC_SEARCH;
				}
			}	
		}
	}
	EXIT_FUNC_SEARCH:

	if(result == NULL)
	{
		char *error = AllocateCompileMemory(1024 * 1024);
		memset(error, 0, 1024 * 1024);
		vstd_sprintf(error, "Use of undeclared symbol \"%s\"", identifier);
		raise_semantic_error(error, token);
	}

	return result;
}



// TODO: operator overloading
b32
are_op_compatible(Type_Info a, Type_Info b)
{
	if(a.type == T_POINTER && is_pointer_rhs_compatible(b))
		return true;
	if(b.type == T_POINTER && is_pointer_rhs_compatible(a))
		return true;
	
	if(!is_rhs_valid(a) || !is_rhs_valid(b))
		return false;
	
	return check_type_compatibility(a, b);
}

b32
check_type_compatibility(Type_Info a, Type_Info b)
{
	if(a.type == T_UNTYPED_INTEGER || a.type == T_UNTYPED_FLOAT)
	{
		a = untyped_to_type(a);
		if(a.type == b.type)
			return true;
	}	
	if(b.type == T_UNTYPED_INTEGER || b.type == T_UNTYPED_FLOAT)
	{
		b = untyped_to_type(b);
		if(a.type == b.type)
			return true;
	}
	if(a.type == T_STRING && is_string_pointer(b))
		return true;
	if(b.type == T_STRING && is_string_pointer(a))
		return true;
	if(a.type != b.type)
		return false;
	if(!vstd_strcmp((char *)a.identifier, (char *)b.identifier))
		return false;
	
	return true;
}

void
verify_struct(Ast_Node *struct_node)
{
	Ast_Variable *members = struct_node->structure.members;
	int member_count = struct_node->structure.member_count;

	Type_Info struct_type = get_type(struct_node->structure.struct_id.name);
	for(size_t i = 0; i < member_count; ++i)
	{
		if(struct_type.type == T_STRUCT && members[i].type.type == T_STRUCT && 
		   vstd_strcmp((char *)members[i].type.identifier, (char *)struct_type.identifier))
		{
			raise_semantic_error("You can't put a struct as it's own member variable, use a pointer",
								 members[i].identifier.token);
		}
	}
}


u8 *
var_type_to_name(Type_Info type)
{
	char *result = AllocatePermanentMemory(1024);
	vstd_strcat(result, "[");
	if(is_type_primitive(type))
	{
		if(type.type == T_VOID)
			type.primitive.size = empty;
		switch (type.primitive.size)
		{
			case byte1: vstd_strcat(result, "i8"); break;
			case byte2: vstd_strcat(result, "i16"); break;
			case byte4: vstd_strcat(result, "i32"); break;
			case byte8: vstd_strcat(result, "i64"); break;
			case ubyte1: vstd_strcat(result, "u8"); break;
			case ubyte2: vstd_strcat(result, "u16"); break;
			case ubyte4: vstd_strcat(result, "u32"); break;
			case ubyte8: vstd_strcat(result, "u64"); break;
			case real32: vstd_strcat(result, "r32"); break;
			case real64: vstd_strcat(result, "r64"); break;
			case detect: vstd_strcat(result, "detect"); break;
			case empty: vstd_strcat(result, "void"); break;
			default: vstd_strcat(result, "untyped number"); break;
		}
	}
	else if(type.type == T_STRUCT)
	{
		vstd_strcat(result, (const char *)type.structure->structure.struct_id.name);
	}
	else if(type.type == T_POINTER)
	{
		Type_Info *current = &type;
		
		while(current->type == T_POINTER)
		{
			vstd_strcat(result, "*");
			current = current->pointer.type;
		}
		vstd_strcat(result, " ");
		vstd_strcat(result, (const char *)var_type_to_name(*current));
		
		char *edited_copy = AllocatePermanentMemory(4096);
		int e_i = 0;
		
		for(int i = 0; result[i] != 0; ++i)
		{
			if((result[i] == '[' || result[i] == ']') && i > 0)
			{}
			else
				edited_copy[e_i++] = result[i];
		}
		strcpy_secure(result, 1024, edited_copy);
		
	}
	else if(type.type == T_STRING)
	{
		vstd_strcat(result, "string");
	}
	else
	{
		vstd_strcat(result, "[not implemented]");
	}
	
	vstd_strcat(result, "]");
	return (u8 *)result;
}
