#include <Analyzer.h>
#include <Log.h>
#include <stdlib/std.h>
#include <Memory.h>

static Type_Table *type_table;
static Stack scope_stack;
static Scope_Info *scopes;

void
initialize_analyzer()
{
	Var_Type default_type = {
		.is_const = false,
		.is_primitive = true,
		.pointer_count = 0,
		.prim_repr = invalid_type
	};
	shdefault(type_table, default_type);
	scopes = SDCreate(Scope_Info);
	scope_stack = stack_allocate(Scope_Info);
}

void
add_primitive_type(const char *name, Var_Size size)
{
	Var_Type type = {
		.is_primitive = true,
		.prim_repr = size, 
	};

	if(shgeti(type_table, name) == -1)
	{
		shput(type_table, name, type);
	}
}

void
add_type(Ast_Struct structure)
{
	Var_Type type = {
		.is_const = false,
		.is_primitive = false,
		.pointer_count = 0,
		.struct_id = structure.struct_id,
		.maybe_members = structure.members,
	};
	
	if(shgeti(type_table, structure.struct_id.name) != -1)
	{
		raise_semantic_error("Redifinition of symbol", structure.struct_id.token);
	}
	shput(type_table, structure.struct_id.name, type);
}

void
update_type(Ast_Struct structure)
{
	Var_Type type = {
		.is_const = false,
		.is_primitive = false,
		.pointer_count = 0,
		.struct_id = structure.struct_id,
	};
	
	if(shgeti(type_table, structure.struct_id.name) == -1)
	{
		raise_semantic_error("Updating non-existant symbol?", structure.struct_id.token);
	}
	shput(type_table, structure.struct_id.name, type);
}

Var_Type
get_type(u8 *name)
{
	Var_Type got = shget(type_table, name);
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
	if(is_stack_empty(scope_stack))
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
			analyze_file_level_statement(node->left);
		}
		default:
		{
			if(node->left != NULL)
				analyze_file_level_statement(node->left);
		}
	}
	return;
}

void
verify_symbols()
{

}

void
verify_func(Ast_Node *node)
{
	if(node->left->type == type_scope_start)
		verify_func_level_statement(node->left->right);
}

void
verify_func_level_statement(Ast_Node *node)
{
	if(node == NULL) return;
	switch(node->type)
	{
		case type_assignment:
		{
			verify_assignment(node);
		} break;
		case type_scope_end:
		{
			pop_scope(node->scope_desc.token);
			return;
		} break;
		case type_scope_start:
		{
			Token_Iden scope_tok = node->scope_desc.token;
			Scope_Info new_scope = {.file = scope_tok.file, .start_line = scope_tok.line};
			push_scope(new_scope);
		} break;
		default:
		{
			LG_WARN("Type not handled: %s (id: %d)", type_to_str(node->type), node->type);
		}
	}
	verify_func_level_statement(node->left);
}


void
verify_assignment(Ast_Node *node)
{
	if(node->type != type_assignment)
	{
		LG_FATAL("Compiler bug in file %s at line %d, expected node type_assignment, got %s (id: %d)", __FILE__, __LINE__, type_to_str(node->type), node->type);
	}
	Var_Type expression_type = get_expression_type(node->assignment.expression, node->assignment.token);
	if(node->assignment.variable.type.is_primitive && node->assignment.variable.type.prim_repr == detect)
	{
		node->assignment.variable.type = expression_type;
	}
	else if(!check_type_compatibility(node->assignment.variable.type, expression_type))
	{
		char *error = AllocateCompileMemory(2048);
		vstd_sprintf(error, "Tried to assign %s to variable of type %s", var_type_to_name(node->assignment.variable.type), var_type_to_name(expression_type));
		raise_semantic_error(error, node->assignment.token);
	}
	Symbol this_symbol = {.token = node->assignment.token, .node = node, .identifier = node->assignment.variable.identifier.name,
							.type = node->assignment.variable.type, .counter = 0};
	add_symbol(this_symbol, &node->assignment.variable.identifier);
}

b32
are_types_the_same(Var_Type a, Var_Type b)
{
	if(a.is_primitive != b.is_primitive)
		return false;
	if(a.is_primitive)
	{
		return a.prim_repr == b.prim_repr && a.pointer_count == b.pointer_count;
	}
	else
	{
		return vstd_strcmp((char *)a.struct_id.name, (char *)b.struct_id.name);
	}
}

void
verify_selector(Symbol *identifier, Ast_Node *selected, Token_Iden error_tok)
{
	if(identifier->type.is_primitive)
	{
		raise_semantic_error("Accessing members of a primitive variable", error_tok);
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
	
	Symbol *selected_sym = get_symbol_spot(selected_tok);
	Var_Type structure = get_type(identifier->type.struct_id.name);
	
	size_t member_count = SDCount(structure.maybe_members);
	for(size_t i = 0; i < member_count; ++i)
	{
		if(are_types_the_same(selected_sym->type, structure.maybe_members[i].type))
		{
			if(vstd_strcmp((char *)selected_sym->identifier, (char *)structure.maybe_members[i].identifier.name))
				return;
		}
	}

	{
		char *error = AllocateCompileMemory(2048);
		vstd_sprintf(error, "Accessing non existant member of struct (Type %s, Member %s)", structure.struct_id.name, selected_sym->identifier);
		raise_semantic_error(error, selected_tok);
	}
}

Var_Type
get_number_type(u8 *string)
{
	Var_Type integer = {.is_primitive = true, .prim_repr = byte4};
	for(size_t i = 0; string[i] != 0; ++i)
	{
		if(string[i] == '.') return (Var_Type){.is_primitive = true, .prim_repr = real64};
	}
	if(string[0] == '-')
	{
		i64 number = str_to_i64((const char *)string);
		if(number > -2147483647)
		{
			return integer;
		}
		else
		{
			return (Var_Type){.is_primitive = true, .prim_repr = byte8};
		}
	}
	else
	{
		u64 number = str_to_u64((const char *)string);
		if(number <= 2147483647)
		{
			return integer;
		}
		else if(number <= 9223372036854775807)
		{
			return (Var_Type){.is_primitive = true, .prim_repr = byte8};
		}
		else
		{
			return (Var_Type){.is_primitive = true, .prim_repr = ubyte8};
		}
	}

	Assert(false);
	
}


Var_Type
get_expression_type(Ast_Node *expression, Token_Iden desc_token)
{
	Token_Iden token;

	if(expression == NULL)
		return (Var_Type){.is_primitive = true, .prim_repr = invalid_type};

	Var_Type result = {};
	if(expression->type == type_identifier)
	{
		if(expression->right->type == type_selector)
		{
			Symbol *id_symbol = get_symbol_spot(expression->identifier.token);
			verify_selector(id_symbol, expression->selector.selected, expression->identifier.token);
			result = get_expression_type(expression->right, desc_token);
		}
		else
		{
			result = expression->identifier.symbol_spot->type;
			token = expression->identifier.token;
		}
	}
	else if(expression->type == type_selector)
	{
		if(expression->selector.selected->type == type_selector)
		{
			result = get_expression_type(expression->right, desc_token);
		}
		else if(expression->selector.selected->type == type_func_call)
		{
			result = verify_func_call(expression->right);
			token = expression->selector.selected->func_call.identifier.token;
		}
		else 
		{
			Assert(expression->selector.selected->type == type_identifier);
			result = get_symbol_spot(expression->selector.selected->identifier.token)->type;
			token = expression->selector.selected->identifier.token;
			// NOTE(Vasko): not a decleration, doesn't have a symbol spot
			//		result = expression->selector.selected->identifier.symbol_spot->type;
		}
	}
	else if(expression->type == type_func_call)
	{
		result = verify_func_call(expression);
		token = expression->func_call.identifier.token;
	}
	else if(expression->type == type_literal)
	{
		result = get_number_type(expression->atom.identifier.name); 
		token = expression->atom.identifier.token;
	}
	else if(expression->type == type_const_str)
	{
		result.is_primitive = true;
		result.pointer_count = 1;
		result.prim_repr = ubyte1;
		token = expression->atom.identifier.token;
	}

	if(result.is_primitive && result.prim_repr == invalid_type)
	{
		raise_semantic_error("Invalid type", token);
	}

	Var_Type left_type = get_expression_type(expression->left, desc_token);
	Var_Type right_type = get_expression_type(expression->right, desc_token);

	if(left_type.is_primitive && left_type.prim_repr == invalid_type)
	{}
	else
	{
		if(!are_op_compatible(left_type, result))
		{
			char *error = AllocateCompileMemory(2048);
			vstd_sprintf(error, "You can't perform an operation with types %s and %s", var_type_to_name(result), var_type_to_name(left_type));
			raise_semantic_error(error, desc_token);
		}
	}

	if(right_type.is_primitive && right_type.prim_repr == invalid_type)
	{}
	else
	{
		if(!are_op_compatible(right_type, result))
		{
			char *error = AllocateCompileMemory(2048);
			vstd_sprintf(error, "You can't perform an operation with types %s and %s", var_type_to_name(result), var_type_to_name(right_type));
			raise_semantic_error(error, desc_token);
		}
	}
	return result;
}

Var_Type
verify_func_call(Ast_Node *func_call)
{
	return get_symbol_spot(func_call->func_call.identifier.token)->type;
}

Symbol *
get_symbol_spot(Token_Iden token)
{
	Symbol *result = NULL;
	u8 *identifier = get_identifier(token.identifier_index);

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
			}
		}
		
	}
	
	if(result == NULL)
	{
		raise_semantic_error("Use of undeclared symbol", token);
	}

	return result;
}

b32
check_primitive_compatibility(Var_Size a, Var_Size b)
{
	if(a == b || a << 4 == b || a >> 4 == b)
		return true;
	return false;
}


// TODO: operator overloading
b32
are_op_compatible(Var_Type a, Var_Type b)
{
	return a.is_primitive && b.is_primitive;
}

b32
check_type_compatibility(Var_Type a, Var_Type b)
{
	if(a.is_primitive != b.is_primitive)
		return false;

	if(a.pointer_count > 0 && b.pointer_count > 0)
		return false;

	if(a.is_primitive)
	{
		if(a.pointer_count > 0)
		{
			if(b.prim_repr >= byte1 && b.prim_repr <= ubyte8)
				return true;
			return false;
		}
		if(b.pointer_count > 0)
			return true;

		return check_primitive_compatibility(a.prim_repr, b.prim_repr) || a.prim_repr == detect || b.prim_repr == detect;
	}
	else
	{
		return vstd_strcmp((char *)a.struct_id.name, (char *)b.struct_id.name) && a.pointer_count == b.pointer_count;
	}
	
}

void
verify_struct(Ast_Node *struct_node)
{
	Ast_Variable *members = struct_node->structure.members;
	Var_Type struct_type = get_type(struct_node->structure.struct_id.name);
	for(size_t i = 0; i < SDCount(members); ++i)
	{
		if(members[i].type.pointer_count == 0 && !members[i].type.is_primitive && vstd_strcmp((char *)members[i].type.struct_id.name, (char *)struct_type.struct_id.name))
		{
			raise_semantic_error("You can't put a struct as it's own member variable, use a pointer", members[i].identifier.token);
		}
	}
}


u8 *
var_type_to_name(Var_Type type)
{
	if(type.is_primitive)
	{
		switch (type.prim_repr)
		{
			case byte1: return (u8 *)"i8"; break;
			case byte2: return (u8 *)"i16"; break;
			case byte4: return (u8 *)"i32"; break;
			case byte8: return (u8 *)"i64"; break;
			case ubyte1: return (u8 *)"u8"; break;
			case ubyte2: return (u8 *)"u16"; break;
			case ubyte4: return (u8 *)"u32"; break;
			case ubyte8: return (u8 *)"u64"; break;
			case real32: return (u8 *)"r32"; break;
			case real64: return (u8 *)"r64"; break;
			case detect: return (u8 *)"detect"; break;
			case empty: return (u8 *)"void"; break;
			case invalid_type: return (u8 *)"invalid"; break;
		}
	}
	else return type.struct_id.name;
}