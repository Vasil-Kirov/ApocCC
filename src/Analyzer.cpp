#include <Analyzer.h>
#include <Log.h>
#include <stdlib/std.h>
#include <Memory.h>
#include <Type.h>
#include <Errors.h>
#include <Interpret.h>

void
initialize_analyzer(File_Contents *f)
{
	Type_Info invalid = {.type = T_INVALID};
	shdefault(f->type_table, invalid);
	f->scopes = SDCreate(Scope_Info);
	f->scope_stack = stack_allocate(Scope_Info);
	f->to_add_next_scope = SDCreate(Symbol);
	f->modules = SDCreate(Import_Module);
}

b32
file_has_module_with_name(File_Contents *f, Import_Module *mod)
{
	size_t mod_count = SDCount(f->modules);
	for(int mod_idx = 0; mod_idx < mod_count; ++mod_idx)
	{
		if(vstd_strcmp((char *)f->modules[mod_idx].module_path, (char *)mod->module_path))
		{
			if(f->modules[mod_idx].identifier_nullable == mod->identifier_nullable)
				return true;

			if(!f->modules[mod_idx].identifier_nullable || !mod->identifier_nullable)
			{}
			else if(vstd_strcmp((char *)f->modules[mod_idx].identifier_nullable->identifier.name, (char *)mod->identifier_nullable->identifier.name))
			{
				return true;
			}
		}
	}
	return false;
}

b32
sync_mod_imports_with_file(File_Contents *f, Import_Module *mod)
{
	b32 did_add = false;
	int import_count = SDCount(mod->f->modules);
	for(int import_idx = 0; import_idx < import_count; ++import_idx)
	{
		if(!file_has_module_with_name(f, &mod->f->modules[import_idx]))
		{
			SDPush(f->modules, mod->f->modules[import_idx]);
			did_add = true;
		}
	}
	return did_add;
}

void
import_non_imported(File_Contents **files)
{
	// @NOTE: just removing this for now
	// I am not sure if importing one file should import all
	// files that it imports
	return;
	b32 did_change;
	do {
		did_change = false;
		size_t file_count = SDCount(files);
		for(size_t file_idx = 0; file_idx < file_count; ++file_idx)
		{
			File_Contents *f = files[file_idx];
			size_t mod_count = SDCount(f->modules);
			for(int mod_idx = 0; mod_idx < mod_count; ++mod_idx)
			{
				Import_Module *mod = &f->modules[mod_idx];
				if(sync_mod_imports_with_file(f, mod))
					did_change = true;
			}
		}
	} while(did_change);
}

Type_Info
add_primitive_type(File_Contents *f, const char *name, Var_Size size)
{
	Type_Type type = T_INVALID;
	if(size < real32 || size == byte128)
		type = T_INTEGER;
	else if(size < empty_void || size == real128)
		type = T_FLOAT;
	else if(size == empty_void)
		type = T_VOID;
	else if(size == logical_bit)
		type = T_BOOLEAN;
	
	Assert(type != T_INVALID);
	
	Type_Info type_info = { type };
	type_info.primitive.size = size;
	type_info.identifier = (u8 *)name;

	if(shgeti(f->type_table, name) == -1)
	{
		shput(f->type_table, name, type_info);
	}
	return type_info;
}

void
add_type(File_Contents *f, Ast_Node *structure)
{
	Assert(structure->type == type_struct);
	Type_Info type_info = { T_STRUCT };

	type_info.structure.member_count = structure->structure.member_count;
	type_info.structure.is_union     = structure->structure.is_union;
	type_info.structure.is_packed    = structure->structure.is_packed;
	type_info.structure.name         = structure->structure.struct_id.name;
	type_info.structure.member_names = (u8 **)AllocateCompileMemory(type_info.structure.member_count * sizeof(u8 *));
	type_info.structure.member_types = (Type_Info *)AllocateCompileMemory(type_info.structure.member_count * sizeof(Type_Info));

	for(size_t i = 0; i < structure->structure.member_count; ++i)
	{
		type_info.structure.member_names[i] = structure->structure.members[i].identifier.name;
		type_info.structure.member_types[i] = *structure->structure.members[i].type;
	}
	type_info.identifier = structure->structure.struct_id.name;
	type_info.token = structure->structure.struct_id.token;

	/*Ast_Struct s = structure->structure;
	
	for(int i = 0; i < s.member_count; ++i)
		{
			Symbol member_symbol = { .tag = S_STRUCT_MEMBER, .s_member.index = i,
				.identifier = s.members[i].identifier.name, .type = s.members[i].type,
				.node = structure, .token = structure->structure.struct_id.token };
			add_symbol(f, member_symbol);
			
		}
		*/
	if(shgeti(f->type_table, structure->structure.struct_id.name) != -1)
	{
		//raise_semantic_error(f, "Redifinition of symbol", *structure->structure.struct_id.token);
		auto got = shget(f->type_table, structure->structure.struct_id.name);
		raise_formated_semantic_error(f, *structure->structure.struct_id.token, "Redifinition of symbol, previously defined in %s(%d:%d)",
				got.token->file, got.token->line, got.token->column);
	}
	shput(f->type_table, structure->structure.struct_id.name, type_info);
}

Import_Module *
find_module(File_Contents *f, u8 *id)
{
	Assert(id);

	size_t imported_count = SDCount(f->modules);
	for(int i = 0; i < imported_count; ++i)
	{
		// Check if the module doesn't require a selector
		auto mod = &f->modules[i];
		if(mod->identifier_nullable)
		{
			if(vstd_strcmp((char *)mod->identifier_nullable->identifier.name, (char *)id))
				return mod;
		}
	}
	return NULL;
}

Type_Info *
get_type(File_Contents *f, u8 *name)
{
	auto got_idx = shgeti(f->type_table, name);
	if(got_idx == -1)
	{
		size_t imported_count = SDCount(f->modules);
		for(int i = 0; i < imported_count; ++i)
		{
			// Check if the module doesn't require a selector
			auto mod = f->modules[i];
			if(!mod.identifier_nullable)
			{
				auto got = shgeti(mod.f->type_table, name);
				if(got != -1)
				{
					Type_Info type = mod.f->type_table[got].value;
					type.f_nullable = mod.f;
					type.identifier = name;
					Type_Info *result = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
					memcpy(result, &type, sizeof(Type_Info));
					return result;

				}
			}
		}
		return NULL;
	}
	else
	{
		Type_Info got = f->type_table[got_idx].value;
		got.identifier = name;
		Type_Info *result = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
		memcpy(result, &got, sizeof(Type_Info));
		return result;
	}
}

void
update_type(File_Contents *f, Type_Info new_type, u8 *name)
{
	if(shgeti(f->type_table, name) == -1)
		Assert(false);
	shput(f->type_table, name, new_type);
}

void
push_scope(File_Contents *f, Scope_Info current_scope)
{
	Assert(current_scope.file && current_scope.file[0] != 0);
	current_scope.symbol_table = (Symbol *)AllocateCompileMemory(sizeof(Symbol) * 32000);
	stack_push(f->scope_stack, current_scope);
	size_t to_add_count = SDCount(f->to_add_next_scope);
	if(to_add_count != 0)
	{
		for(i64 i = to_add_count - 1; i >= 0; --i)
		{
			add_symbol(f, f->to_add_next_scope[i]);
			SDPop(f->to_add_next_scope);
		}
	}
}


void
raise_formated_semantic_error(File_Contents *f, Token_Iden token, const char *format, ...)
{
	char *error = (char *)AllocateCompileMemory(4096);
	va_list args;
	va_start(args, format);
	vstd_vsnsprintf(error, vstd_strlen((char *)format), format, args);
	va_end(args);
	raise_semantic_error(f, error, token);
}


b32
is_scope_stack_empty(File_Contents *f) { return is_stack_empty(f->scope_stack); } 

void
pop_scope(File_Contents *f, Token_Iden *scope_tok)
{
	if(is_scope_stack_empty(f))
	{
		raise_semantic_error(f, "Found a closing scope with no matching openning one", *scope_tok);
	}

	Scope_Info saved_scopes[4096] = {};
	size_t last_scope = 0;
	Scope_Info popped = stack_pop(f->scope_stack, Scope_Info);
	popped.end_line = scope_tok->line;
	Symbol *popped_table = popped.symbol_table;
	size_t symbol_table_size = popped.sym_count;
	if (symbol_table_size == 0)
		return;
	while(!is_scope_stack_empty(f))
	{
		Scope_Info to_scan = stack_pop(f->scope_stack, Scope_Info);
		size_t scan_size = to_scan.sym_count;
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
					u8 *previous_definition = get_error_segment(*a.token);
					raise_formated_semantic_error(f, *b.token,
							"Redifinition of symbol %s, previously declared at %s(%d:%d):\n%s",
										  a.identifier, a.token->file, a.token->line, a.token->column, previous_definition);
				}
			}
		}
	}
	
	for(signed int i = last_scope - 1; i >= 0; --i)
	{
		stack_push(f->scope_stack, saved_scopes[i]);
	}

	SDPush(f->scopes, popped);
}

void
add_symbol(File_Contents *f, Symbol symbol)
{
	// @Optimize: hash table
	Scope_Info *stack_top = stack_peek_ptr(f->scope_stack, Scope_Info);
	Symbol *symbol_table = stack_top->symbol_table;
	size_t symbol_count = stack_top->sym_count;
	u8 *identifier = symbol.identifier;
	for(size_t i = 0; i < symbol_count; ++i)
	{
		if(vstd_strcmp((char *)symbol_table[i].identifier, (char *)identifier))
		{
			Token_Iden *prev = symbol_table[i].token;
			u8 *previous_definition = get_error_segment(*prev);
			raise_formated_semantic_error(f, *symbol.token,
							"Redifinition of symbol %s, previously declared at %s(%d:%d):\n%s",
										  identifier, prev->file, prev->line, prev->column, previous_definition);
		}
	}

	stack_top->symbol_table[stack_top->sym_count++] = symbol;
	//SDPush(((Scope_Info *)((char *)f->scope_stack.array_ptr + (f->scope_stack.top * f->scope_stack.type_size)))->symbol_table, symbol);


	if(symbol.tag == S_FUNCTION)
	{
		symbol_table = stack_top->symbol_table;
		size_t sym_count = stack_top->sym_count;
		auto sym_ptr = &symbol_table[sym_count-1];
		SDPush(f->functions, sym_ptr);
	}
}

Ast_Node **
analyze(File_Contents *f, Ast_Node *ast_tree)
{
	/*
	for (size_t i = 0; i < SDCount(symbol_table); i++)
	{
		Symbol symbol = symbol_table[i];
		LG_INFO("Symbol: %s\n\n", symbol.identifier);
	}
	*/
	Scope_Info scope_info = {};
	scope_info.file = (const char *)f->path;
	scope_info.start_line = 1;
	push_scope(f, scope_info);
	Ast_Node **result = analyze_file_level_statement_list(f, ast_tree);
	return result;
}

u8 *
get_non_overloaded_name(u8 *overloaded_name)
{
	size_t i = 0;
	for(; overloaded_name[i] != '!'; ++i)
		if(overloaded_name[i] == '\0') return overloaded_name;

	auto non_overloaded = (u8 *)AllocateCompileMemory(i + 1);
	memcpy(non_overloaded, overloaded_name, i);

	return non_overloaded;
}


void
overload_fix_types(File_Contents *f, Ast_Node *overload) 
{
	Ast_Node *func = overload->overload.function;
	func->function.type = fix_type(f, func->function.type);
	if(overload->overload.overloaded == O_OP_EQUALS)
	{
		if(func->function.type->type != T_VOID)
			raise_semantic_error(f, "Overload of type [op]= cannot return a value", 
					*func->function.identifier.token);
	}
	else if(func->function.type->type == T_VOID)
		raise_semantic_error(f, "Overload must return a value unless it's of type [op]=",
				*func->function.identifier.token);
	if(type_is_invalid(func->function.type))
		raise_formated_semantic_error(f, *func->function.identifier.token,
				"Return type %s of function %s is not defined", func->function.type->identifier,
				func->function.identifier.name);

	Type_Info *return_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	memcpy(return_type, func->function.type, sizeof(Type_Info));
	func->function.type->type = T_FUNC;
	func->function.type->func.return_type = return_type;
	func->function.type->func.param_types = SDCreate(Type_Info);

	func->function.type->token = return_type->token;

	auto func_param_types = func->function.type->func.param_types;
	size_t arg_count = SDCount(func->function.arguments);
	
	for(size_t i = 0; i < arg_count; ++i)
	{
		Ast_Variable *arg = &func->function.arguments[i]->variable;
		if(arg->type->type == T_DETECT)
		{
			SDPush(func_param_types, *arg->type);
		}
		else
		{
			arg->type = fix_type(f, arg->type);
			SDPush(func_param_types, *arg->type);
		}
	}
	func->function.type->func.param_types = func_param_types;
	func->function.type->identifier = var_type_to_name(func->function.type, false);
}

void
verify_overload(File_Contents *f, Ast_Node *overload)
{
	overload->overload.f = f;
	Ast_Node *func = overload->overload.function;
	size_t arg_count = SDCount(func->function.arguments);
	for (size_t i = 0; i < arg_count; i++)
	{
		Ast_Variable *arg = &func->function.arguments[i]->variable;
		// @NOTE: add argument to symbol table
		Symbol arg_symbol = {S_FUNC_ARG};

		arg_symbol.token = func->function.identifier.token;
		arg_symbol.node = func->function.arguments[i];

		Assert(arg->type->type != T_DETECT);
		arg_symbol.identifier = arg->identifier.name;
		arg_symbol.type = fix_type(f, arg->type);
		arg_symbol.node->variable.type = arg_symbol.type;
		SDPush(f->to_add_next_scope, arg_symbol);
	}
	// @NOTE: don't, we keep em like that
	//func->function.type = func->function.type->func.return_type;
	if(overload->overload.overloaded == O_INDEX)
	{
		if(arg_count != 2)
			raise_semantic_error(f, "Index overload needs exactly 2 arguemnts", *overload->overload.token);
		auto left_arg = &func->function.arguments[0]->variable;
		if(left_arg->type->type == T_ARRAY || left_arg->type->type == T_POINTER)
			raise_semantic_error(f, "Cannot overload the index of an array or pointer type", *overload->overload.token);
	}
	else
	{
		auto left_arg = &func->function.arguments[0]->variable;
		if(is_type_primitive(left_arg->type))
			raise_semantic_error(f, "Cannot overload primitive type", *overload->overload.token);
	}
	check_func_type_doesnt_have_anonymous_structs(f, func->function.type, func->function.identifier.name);
	verify_func_level_statement_list(f, func->function.body, func);
}

Ast_Node **
analyze_file_level_statement_list(File_Contents *f, Ast_Node *node)
{
	Assert(node->type == type_statements);
	Ast_Node **statements = node->statements.list;
	size_t statement_count = SDCount(statements);
	Ast_Node **functions = SDCreate(Ast_Node *);
	for(size_t i = 0; i < statement_count; ++i)
	{
		Ast_Node *maybe_func = analyze_file_level_statement(f, statements[i]);
		if(maybe_func)
			SDPush(functions, maybe_func);
	}
	// @NOTE: we delay function verification so that all global symbols can be declared
	size_t func_count = SDCount(functions);
	for (size_t i = 0; i < func_count; ++i)
	{
		if(functions[i]->type == type_func)
			func_fix_types(f, functions[i]);
		else if(functions[i]->type == type_overload)
			overload_fix_types(f, functions[i]);
		else if(functions[i]->type == type_run)
		{
			get_expression_type(f, node->run.to_run, node->run.token, node, NULL);
			b32 failed = false;
			node->run.ran_val = interpret_expression(node->run.to_run, &failed);
			if(failed)
				raise_semantic_error(f, "Expression couldn't be run at compile time", *node->run.token);
		}
		else if(functions[i]->type == type_assignment)
		{
			functions[i]->assignment.decl_type = fix_type(f, functions[i]->assignment.decl_type);
			// @NOTE: we use the token as the variable name here which might not always be true
			if(functions[i]->assignment.rhs)
			{
				b32 failed = false;
				auto val = interpret_expression(functions[i]->assignment.rhs, &failed);
				if(failed)
					raise_semantic_error(f, "Global expression couldn't be interpreted at compile time", functions[i]->assignment.token);
				val.type = functions[i]->assignment.decl_type;
				interp_add_symbol(functions[i]->assignment.token.identifier, val);
			}
			else
				interp_add_symbol(functions[i]->assignment.token.identifier, {});
		}
		else
			Assert(false);
	}

	return functions;
}

void
analyze_functions_and_overloads(File_Contents *f, Ast_Node **functions)
{
	size_t func_count = SDCount(functions);

	for(size_t i = 0; i < func_count; ++i)
	{
		if(functions[i]->type == type_func)
			verify_func(f, functions[i]);
	}
	for(size_t i = 0; i < func_count; ++i)
	{
		if(functions[i]->type == type_overload)
			verify_overload(f, functions[i]);
	}
}

Ast_Node *
analyze_file_level_statement(File_Contents *f, Ast_Node *node)
{
	if(node == NULL) return NULL;
	switch(node->type)
	{
		case type_struct:
		{
			verify_struct(f, node);
		}break;
		case type_enum:
		{
			verify_enum(f, node);
		} break;
		case type_overload:
		{
			return node;
		} break;
		case type_func:
		{
			return node;
		} break;
		case type_assignment:
		{
			// @NOTE: should this be here?
			Assert(node->assignment.lhs);
			if(!node->assignment.is_declaration)
				raise_semantic_error(f, "Global assignment is not a declaration",
						node->assignment.token);
			verify_assignment(f, node, true);
			b32 failed = false;
			// @TODO: make it so we don't have to interpret the expression
			// multiple times, it will save some performance
			if(node->assignment.rhs)
			{
				auto expr = interpret_expression(node->assignment.rhs, &failed);
				if(failed)
					raise_semantic_error(f, "Expression for global declaration is not constant",
							node->assignment.token);
				interp_add_symbol(node->assignment.lhs->identifier.name, expr);
			}
			else
				interp_add_symbol(node->assignment.lhs->identifier.name, {});

			return node;
		} break;
		case type_run: 
		{
			return node;
		} break;
		default:
		{
			LG_WARN("File level statement of type %s (id: %d) not analyzed",
					type_to_str(node->type), node->type);
		} break;
	}
	return NULL;
}

b32
is_type_anonymous_struct(Type_Info *type)
{

	if(type->type == T_STRUCT && vstd_strcmp((char *)type->identifier, (char *)"anonymous struct"))
		return true;
	return false;
}

void
check_func_type_doesnt_have_anonymous_structs(File_Contents *f, Type_Info *func, u8 *func_name)
{
	if(is_type_anonymous_struct(func->func.return_type))
	{
		raise_formated_semantic_error(f, *func->token, "Function %s has an anonymous struct as a return type. That is not allowed", func_name);
	}
	auto param_count = SDCount(func->func.param_types);
	for(size_t i = 0; i < param_count; ++i)
	{
		if(is_type_anonymous_struct(&func->func.param_types[i]))
		{
			raise_formated_semantic_error(f, *func->func.param_types[i].token, "Paramater #%d of function %s is an anonymous struct. Anonymous structs are not allowed as parameters", i + 1, func_name);
		}

	}
}

void
verify_enum(File_Contents *f, Ast_Node *node)
{
	Ast_Enum *enumerator = &node->enumerator;
	size_t member_count = SDCount(enumerator->members);
	Ast_Node *first_rhs = NULL;
	Ast_Node *last_rhs = NULL;
	Token_Iden *first_token = NULL;
	Token_Iden *last_token = NULL;
	size_t n = 0;
	interp_push_scope();
	Scope_Info scope_info = {};
	scope_info.start_line = node->enumerator.token->line;
	scope_info.file = node->enumerator.token->file;
	push_scope(f, scope_info);

	size_t type_id_len = vstd_strlen((char *)enumerator->type.identifier);
	u8 *type_id = (u8 *)AllocatePermanentMemory(type_id_len + 1);

	memcpy(type_id, enumerator->type.identifier, type_id_len);

	// Set the id to NULL so it doesn't use it, when we add the symbols for the enum scope
	// we want to act like normal integers so that you can perform binary operations with
	// other integers, since the enum doesn't exist yet and you can't cast to it
	enumerator->type.identifier = NULL;
	enumerator->type.identifier = var_type_to_name(&enumerator->type, false);

	for(size_t i = 0; i < member_count; ++i)
	{
		Ast_Assignment *member = &enumerator->members[i]->assignment;
		if(member->rhs)
		{
			b32 failed = false;
			get_expression_type(f, member->rhs, &member->token, NULL, NULL);
			auto mem_val = interpret_expression(member->rhs, &failed);
			if(failed)
				raise_semantic_error(f, "Expression in enum is not constant", member->token);
			interp_add_symbol(member->lhs->identifier.name, mem_val);

			Type_Info *symbol_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			memcpy(symbol_type, &enumerator->type, sizeof(Type_Info));

			Symbol symbol;
			symbol.identifier = member->lhs->identifier.name;
			symbol.token = member->lhs->identifier.token;
			symbol.type  = symbol_type;
			symbol.tag   = S_GLOBAL_VAR;
			symbol.node  = enumerator->members[i];
			add_symbol(f, symbol);
			
			if(!first_rhs)
			{
				first_rhs = member->rhs;
				first_token = &member->token;
			}
			last_rhs = member->rhs;
			last_token = &member->token;
			n = i + 1;
		}
	}

	Interp_Val d = create_interp_val();
	d.type->type = T_INTEGER;
	d.type->primitive.size = byte8;
	d._i64 = 1;
	Interp_Val first_val = create_interp_val();
	first_val.type->type = T_INTEGER;
	first_val.type->primitive.size = byte8;
	first_val._i64 = 0;

	if(first_rhs && first_rhs != last_rhs)
	{
		b32 failed = false;
		get_expression_type(f, first_rhs, first_token, NULL, NULL);
		get_expression_type(f, last_rhs, last_token, NULL, NULL);
		Interp_Val first = interpret_expression(first_rhs, &failed);
		Interp_Val last = interpret_expression(last_rhs, &failed);

		first_val = first;
		// @TODO: better error message token
		if(failed)
			raise_semantic_error(f, "Non constant expression used for enum member value",
					*enumerator->token);
		if((!is_integer(*first.type) && !is_float(*first.type)) ||
				(!is_integer(*last.type) && !is_float(*last.type)))
			raise_semantic_error(f, "Enum contains a non primitive value",
					*enumerator->token);
		
		Interp_Val top = create_interp_val();
		Interp_Val bot = create_interp_val();
		DO_U_OP(top, -, first);
		DO_OP(top, +, top, last);
		if(is_float(*top.type))
		{
			bot.type->type = T_FLOAT;
			bot.type->primitive.size = real64;
			bot._f64 = n - 1;
		}
		else if(is_integer(*top.type))
		{
			bot.type->type = T_INTEGER;
			if(is_signed(*top.type))
			{
				bot.type->primitive.size = byte8;
				bot._i64 = n - 1;
			}
			else
			{
				bot.type->primitive.size = ubyte8;
				bot._u64 = n - 1;
			}
		}
		else
			Assert(false);

		DO_OP(d, /, top, bot);
	}

	for(size_t i = 0; i < member_count; ++i)
	{
		Ast_Assignment member = enumerator->members[i]->assignment;
		Assert(member.lhs->type == type_identifier);
		for(size_t j = i + 1; j < member_count; ++j)
		{
			Ast_Assignment comp_member = enumerator->members[j]->assignment;
			if(vstd_strcmp((char *)member.lhs->identifier.name, (char *)comp_member.lhs->identifier.name))
			{
				raise_formated_semantic_error(f, member.token, 
						"Members #%d and #%d have the same identifier",
						i + 1, j + 1);
			}
		}
		enumerator->members[i] = alloc_node();
		enumerator->members[i]->type = type_interp_val;
		enumerator->members[i]->interp_val.id = member.lhs->identifier;
		if(!member.rhs)
		{
			Interp_Val val = create_interp_val();
			DO_RINT_OP(val, *, d, i);
			enumerator->members[i]->interp_val.val.type = val.type;
			DO_OP(enumerator->members[i]->interp_val.val, +, first_val, val);
		}
		else
		{
			Type_Info mem_type = get_expression_type(f, member.rhs, &member.token, NULL, NULL);
			if(is_untyped(enumerator->type))
				enumerator->type = mem_type;
			else if(!check_type_compatibility(enumerator->type, mem_type))
				raise_formated_semantic_error(f, member.token, 
						"Member %s in enum is of type %s which is incompatible "
						"with the rest of the enum is of type %s",
						member.lhs->identifier.name, var_type_to_name(&mem_type),
						var_type_to_name(&enumerator->type));
			b32 failed = false;
			enumerator->members[i]->interp_val.val = interpret_expression(member.rhs, &failed);
			if(failed)
				raise_formated_semantic_error(f, member.token, "Member number #%d in enum %s "
						"contains an incorrect constant expression",
						i + 1, node->enumerator.id.name);
		}
	}

	enumerator->type.identifier = type_id;
	// @TODO: make it so it doesn't error out if you have a
	// global with the same name as enum member
	pop_scope(f, enumerator->members[member_count - 1]->interp_val.id.token);
	destroy_scope();
	
	Type_Info *enum_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	memcpy(enum_type, &node->enumerator.type, sizeof(Type_Info));


	Type_Info *sym_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	sym_type->type = T_ENUM;
	sym_type->token = node->enumerator.token;
	sym_type->enumerator.node = node;
	sym_type->enumerator.type = enum_type;

	Symbol enum_sym = {};
	enum_sym.tag        = S_ENUM;
	enum_sym.identifier = node->enumerator.id.name;
	enum_sym.node       = node;
	enum_sym.type       = sym_type;
	enum_sym.token      = node->enumerator.token;
	add_symbol(f, enum_sym);
}

void
func_fix_types(File_Contents *f, Ast_Node *node)
{
	Assert(node->function.identifier.token);

	auto func_sym = get_symbol_spot(f, *node->function.identifier.token);
	node->function.type = fix_type(f, node->function.type);
	if(type_is_invalid(node->function.type))
		raise_formated_semantic_error(f, *node->function.identifier.token,
				"Return type %s of function %s is not defined", node->function.type->identifier, node->function.identifier.name);
	if(func_sym->node->function.overloads)
	{
		auto overloads = func_sym->node->function.overloads;
		size_t overload_count = SDCount(overloads);
		for(size_t i = 0; i < overload_count; ++i)
		{
			Type_Info *ret_type = NULL;
			Type_Info *func_type = overloads[i]->function.type;
			if(func_type->type == T_FUNC)
				ret_type = func_type->func.return_type;
			else
				ret_type = func_type;
			if(!vstd_strcmp((char *)node->function.type->identifier, (char *)ret_type->identifier))
				raise_formated_semantic_error(f, *overloads[i]->function.identifier.token, "Function return type cannot be overloaded."
						"\n\tOriginal function is of type %s, overloads is of type %s",
						var_type_to_name(node->function.type), var_type_to_name(ret_type));
		}
		auto copy = alloc_node();
		memcpy(copy, node, sizeof(Ast_Node));
		u8 *overload_name = NULL;
		auto id_len = vstd_strlen((char *)copy->function.identifier.name);
		for(size_t i = 0; i < id_len; ++i)
		{
			if(copy->function.identifier.name[i] == '!')
			{
				overload_name = copy->function.identifier.name;
				break;
			}
		}
		if(!overload_name)
			overload_name = get_func_name(copy);
		auto fake_token = node->function.identifier.token;
		fake_token->identifier = overload_name;
		func_sym = get_symbol_spot(f, *fake_token);
	}

	Type_Info *return_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	memcpy(return_type, node->function.type, sizeof(Type_Info));
	func_sym->type->func.return_type = return_type;
	func_sym->type->func.param_types = SDCreate(Type_Info);
	func_sym->type->token = return_type->token;
	auto func_param_types = func_sym->type->func.param_types;
	size_t arg_count = SDCount(node->function.arguments);
	
	for(size_t i = 0; i < arg_count; ++i)
	{
		Ast_Variable *arg = &node->function.arguments[i]->variable;
		if(arg->type->type == T_DETECT)
		{
			SDPush(func_param_types, *arg->type);
		}
		else
		{
			arg->type = fix_type(f, arg->type);
			auto fixed_value_type = *arg->type;
			SDPush(func_param_types, fixed_value_type);
		}
	}
	func_sym->type->func.param_types = func_param_types;
	func_sym->type->identifier = var_type_to_name(func_sym->type, false);
	node->function.type = func_sym->type;
}

void
verify_func(File_Contents *f, Ast_Node *node)
{
	Assert(node->function.type->identifier);

	Token_Iden *type_error_token = node->function.type->token;
	node->function.type = fix_type(f, node->function.type);
	size_t arg_count = SDCount(node->function.arguments);
	b32 has_body = node->function.body != NULL;
	auto return_type = node->function.type->func.return_type;
	
	Assert(return_type->identifier);
	if(return_type->type == T_ARRAY && !(node->function.flags & FF_IS_INTERP_ONLY ? true : false))
	{
		raise_formated_semantic_error(f, *type_error_token,
				"Function [ %s ] returns an array which is illegal.\n\t"
				"This function can only be executed at compile time using $run\n\t"
				"and as such should be marked with $interp", node->function.identifier.name);
	}
	
	if(node->function.body)
	{
		if(node->function.flags & FF_WASM_IMPORT ? true : false)
		{
			raise_formated_semantic_error(f, *type_error_token,
					"Function specified as a wasm import cannot have a body");
		}
	}
	else
	{
		if(node->function.flags & FF_WASM_EXPORT ? true : false)
		{
			raise_formated_semantic_error(f, *type_error_token,
					"Function specified as a wasm export must have a body");
		}
	}
	
	for (size_t i = 0; i < arg_count; i++)
	{
		Ast_Variable *arg = &node->function.arguments[i]->variable;
		if(has_body)
		{
			// @NOTE: add argument to symbol table
			Symbol arg_symbol = {S_FUNC_ARG};
		
			arg_symbol.token = node->function.identifier.token;
			arg_symbol.node = node->function.arguments[i];
		
			if(arg->type->type == T_DETECT)
			{
				node->function.flags |= FF_HAS_VAR_ARGS;
				arg_symbol.identifier = (u8 *)"...";
			}
			else
			{
				arg_symbol.identifier = arg->identifier.name;
				arg_symbol.type = fix_type(f, arg->type);
				arg_symbol.node->variable.type = arg_symbol.type;
				if(has_body)
					SDPush(f->to_add_next_scope, arg_symbol);
			}
		}
		else if(arg->type->type != T_DETECT)
		{
			node->function.arguments[i]->variable.type = fix_type(f, arg->type);
		}
		if(arg->type->type == T_DETECT &&
		   i != arg_count - 1)
		{
			raise_semantic_error(f,"Variable length declarator must " 
								 "be last in the function signature", 
								 *node->function.identifier.token);
		}
	}
	
	if(type_is_invalid(return_type))
	{
		char error_msg[1024] = {};
		vstd_sprintf(error_msg, "Undeclared type [%s]", return_type->identifier);
		raise_semantic_error(f, error_msg, *type_error_token);
	}

	check_func_type_doesnt_have_anonymous_structs(f, node->function.type, node->function.identifier.name);
	if(has_body)
	{
		verify_func_level_statement_list(f, node->function.body, node);
	}	
}

b32
is_else_valid(Ast_Node **list, size_t idx)
{
	if(list[idx]->type == type_if)
		return true;
	else if(list[idx]->type == type_else)
	{
		Assert(list[idx+1]->type == type_scope_start);
		return is_else_valid(list[idx+1]->scope_desc.body->statements.list, 0);
	}
	return false;
}

void
verify_func_level_statement(File_Contents *f, Ast_Node *node, Ast_Node *func_node, 
		Ast_Node *current_list, size_t *idx)
{
	if(node == NULL) return;
	switch(node->type)
	{
		case type_identifier:
		{
			node->identifier.symbol_spot = get_symbol_spot(f, *node->identifier.token, true);
		} break;
		case type_for_in:
		{
			Assert(node->for_in.array && node->for_in.item);
			Token_Iden *scope_tok = node->for_in.token;
			Scope_Info new_scope = {};
			new_scope.file = scope_tok->file;
			new_scope.start_line = scope_tok->line;
			push_scope(f, new_scope);
			if(node->for_in.i_nullalbe)
			{
				Symbol i_sym = {};
				i_sym.tag = S_VARIABLE;
				i_sym.identifier = node->for_in.i_nullalbe->identifier.name;
				i_sym.node = node->for_in.i_nullalbe;
				i_sym.token = node->for_in.i_nullalbe->identifier.token;
				i_sym.type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
				i_sym.type->type = T_INTEGER;
				i_sym.type->primitive.size = byte8;
				add_symbol(f, i_sym);
			}
			auto array_sym = get_symbol_spot(f, *node->for_in.array->identifier.token);
			array_sym->type = fix_type(f, array_sym->type);
			node->for_in.array->identifier.symbol_spot = array_sym;
			if(array_sym->tag != S_VARIABLE && array_sym->tag != S_GLOBAL_VAR)
			{
				raise_formated_semantic_error(f, *node->for_in.array->identifier.token,
						"%s, used as an array in for in loop, is not a variable", node->for_in.array->identifier.name);
			}
			if(array_sym->type->type != T_ARRAY)
			{
				raise_formated_semantic_error(f, *node->for_in.array->identifier.token, 
						"Cannot iterate over %s as it is not array. %s is of type %s",
						node->for_in.array->identifier.name, node->for_in.array->identifier.name, var_type_to_name(array_sym->type));
			}
			Symbol item_sym = {};
			item_sym.tag = S_VARIABLE;
			item_sym.identifier = node->for_in.item->identifier.name;
			item_sym.node = node->for_in.item;
			item_sym.token = node->for_in.item->identifier.token;
			item_sym.type = array_sym->type->array.type;
			add_symbol(f, item_sym);
		} break;
		case type_for:
		{
			Token_Iden *scope_tok = node->for_loop.token;
			Scope_Info new_scope = {};
			new_scope.file = scope_tok->file;
			new_scope.start_line = scope_tok->line;
			push_scope(f, new_scope);
			Assert(scope_tok->file && scope_tok->file[0] != 0);
			if(node->for_loop.expr1)
			{
				verify_assignment(f, node->for_loop.expr1, false);
			}
			if(node->for_loop.expr3)
			{
				get_expression_type(f, node->for_loop.expr3, node->for_loop.token, NULL, NULL);
			}
			Type_Info expression = get_expression_type(f, node->for_loop.expr2, node->for_loop.token, NULL, NULL);
			if (expression.type != T_BOOLEAN)
			{
				raise_formated_semantic_error(f, *node->for_loop.token, "Expression type %s cannot automatically be converted to a boolean", var_type_to_name(&expression));
			}
			*idx += 1;
			auto next_node = current_list->statements.list[*idx];
			if(next_node->type == type_scope_start)
			{
				verify_func_level_statement_list(f, next_node->scope_desc.body, func_node);
			}
			else
			{
				verify_func_level_statement(f, next_node, func_node, current_list, idx);
				pop_scope(f, scope_tok);
			}
		} break;
		case type_var:
		{
			Ast_Variable *var = &node->variable;
			Symbol var_sym = {};
			var_sym.identifier = var->identifier.name;
			var_sym.type = var->type;
			var_sym.node = node;
			var_sym.token = var->identifier.token;
			var_sym.tag = S_VARIABLE;
			add_symbol(f, var_sym);
		}break;
		case type_if:
		{
			Token_Iden *scope_tok = node->condition.token;
			Scope_Info new_scope = {};
			new_scope.file = scope_tok->file;
			new_scope.start_line = scope_tok->line;
			push_scope(f, new_scope);

			Type_Info if_type = get_expression_type(f, node->condition.expr, 
					node->condition.token, NULL, NULL);
			if(if_type.type != T_BOOLEAN)
			{
				raise_formated_semantic_error(f, *node->condition.token,
						"Expression type %s cannot automatically be converted to a boolean",
						var_type_to_name(&if_type));
			}
			*idx += 1;
			auto next_node = current_list->statements.list[*idx];
			Assert(next_node->type == type_scope_start)
			verify_func_level_statement_list(f, next_node->scope_desc.body, func_node);
		} break;
		case type_else:
		{
			if(!is_else_valid(current_list->statements.list, *idx - 2))
			{
				raise_semantic_error(f, "else statement doesn't have a matching if",
						*node->condition.token);
			}
		} break;
		case type_assignment:
		{
			verify_assignment(f, node, false);
		} break;
		case type_func_call:
		{
			verify_func_call(f, node, node->func_call.token, node);
		} break;
		case type_scope_end:
		{
			Scope_Info this_scope = stack_pop(f->scope_stack, Scope_Info);
			auto token = node->scope_desc.token;
			if(f->scope_stack.top == 0)
			{
				if(!this_scope.has_return)
				{
					if(func_node->function.type->func.return_type->type == T_VOID)
					{
						Ast_Node *ret_node = alloc_node();
						ret_node->type = type_return;
						ret_node->ret.expression = NULL;
						ret_node->ret.func_type.type = T_VOID;
						Ast_Node *to_replace = func_node->function.body->scope_desc.body;
						size_t i = 0;
						for(; to_replace->statements.list[i]->type != type_scope_end;
								++i) {}

						ret_node->ret.token = *to_replace->statements.list[i]->scope_desc.token;
						to_replace->statements.list[i] = ret_node;
						SDPush(to_replace->statements.list, node);
					}
					else
						raise_semantic_error(f, "Not all paths lead to a return statement", *node->scope_desc.token);
				}
			}
			stack_push(f->scope_stack, this_scope);
			pop_scope(f, token);
			return;
		} break;
		case type_scope_start:
		{
			Token_Iden *scope_tok = node->scope_desc.token;

			Scope_Info new_scope = {};
			new_scope.file = scope_tok->file;
			new_scope.start_line = scope_tok->line;
			push_scope(f, new_scope);
			verify_func_level_statement_list(f, node->scope_desc.body, func_node);
		} break;
		case type_return:
		{
			Expression_Context expr_info = {};
			expr_info.opt_info = &node->ret.expression_type;
			expr_info.flags = CAN_INIT_STRUCT;
			expr_info.kind  = EXPRT_EVAL;
			Type_Info return_type = get_expression_type(f, node->ret.expression, &node->ret.token, NULL, &expr_info);
			node->ret.expression_type = return_type;
			node->ret.func_type = *func_node->function.type->func.return_type;

			if(type_is_invalid(&return_type))
				return_type = (Type_Info){.type = T_VOID, .identifier = (u8 *)"void"};
			if(!check_type_compatibility(*func_node->function.type->func.return_type,
						return_type))
			{
				char error[4096 * 3] = {};
				vstd_sprintf(error, "return type of %s is incompatible with"
							 " function %s's return type %s",
							 var_type_to_name(&return_type),
							 func_node->function.identifier.name,
							 var_type_to_name(func_node->function.type->func.return_type));
				raise_semantic_error(f, error, node->ret.token);
			}
			Scope_Info scope = stack_pop(f->scope_stack, Scope_Info);
			scope.has_return = true;
			stack_push(f->scope_stack, scope);

		} break;
		// @TODO: check them here instead of in the backend
		// @TODO: check them here instead of in the backend
		// @TODO: check them here instead of in the backend
		// @TODO: check them here instead of in the backend
		// @TODO: check them here instead of in the backend
		// @TODO: check them here instead of in the backend
		// @TODO: check them here instead of in the backend
		// @TODO: check them here instead of in the backend
		// @TODO: check them here instead of in the backend
		// @TODO: check them here instead of in the backend
		// @TODO: check them here instead of in the backend
		case type_continue:
		case type_break:
		{

		} break;
		default:
		{
			LG_WARN("Func level statement of type %s (id: %d) not analyzed",
					type_to_str(node->type), node->type);
		}
	}
}

void
verify_func_level_statement_list(File_Contents *f, Ast_Node *list_node, Ast_Node *func_node)
{
	if(list_node->type == type_scope_start)
	{
		Token_Iden *scope_tok = list_node->scope_desc.token;

		Scope_Info new_scope = {};
		new_scope.file = scope_tok->file;
		new_scope.start_line = scope_tok->line;
		push_scope(f, new_scope);
		list_node = list_node->scope_desc.body;
	}
	size_t count = SDCount(list_node->statements.list);
	for(size_t i = 0; i < count; ++i)
		verify_func_level_statement(f, list_node->statements.list[i], func_node, list_node, &i);
}

Ast_Node *
get_assign_type_expression(File_Contents *f, Ast_Node *node)
{
	Ast_Node *result = alloc_node();
	result->type = type_binary_expr;
	result->right = node->assignment.rhs;
	result->left = node->assignment.lhs;
	result->binary_expr.token = node->assignment.token;
	switch((int)node->assignment.assign_type)
	{
		case tok_plus_equals:
		{
			result->binary_expr.op = tok_plus;
		} break;
		case tok_minus_equals:
		{
			result->binary_expr.op = tok_minus;
		} break;
		case tok_mult_equals:
		{
			result->binary_expr.op = tok_star;
		} break;
		case tok_div_equals:
		{
			result->binary_expr.op = (Token)'/';
		} break;
		case tok_mod_equals:
		{
			result->binary_expr.op = (Token)'%';
		} break;
		case tok_and_equals:
		{
			result->binary_expr.op = tok_bits_and;
		} break;
		case tok_xor_equals:
		{
			result->binary_expr.op = tok_bits_xor;
		} break;
		case tok_or_equals:
		{
			result->binary_expr.op = tok_bits_or;
		} break;
		case tok_lshift_equals:
		{
			result->binary_expr.op = tok_bits_lshift;
		} break;
		case tok_rshift_equals:
		{
			result->binary_expr.op = tok_bits_rshift;
		} break;
	}
	return result;
}

void
verify_assignment(File_Contents *f, Ast_Node *node, b32 is_global)
{

	Expression_Context *expr_info = (Expression_Context *)AllocateCompileMemory(sizeof(Expression_Context));
	expr_info->kind = node->assignment.is_declaration ? EXPRT_DECL : EXPRT_EVAL;
	expr_info->opt_info = node->assignment.decl_type;
	expr_info->flags = node->assignment.is_declaration ? CAN_INIT_STRUCT | CAN_INIT_ARRAY : 0;

	if(node->type != type_assignment)
	{
		LG_FATAL("Compiler bug in file %s at line %d, expected node type_assignment, got %s (id: %d)",
				 __FILE__, __LINE__, type_to_str(node->type), node->type);
	}

	if(node->assignment.is_declaration && node->assignment.decl_type->type != T_DETECT)
	{
		node->assignment.decl_type = fix_type(f, node->assignment.decl_type);
		if(type_is_invalid(node->assignment.decl_type))
			raise_formated_semantic_error(f, node->assignment.token, 
					"Type %s, used in declaration, is undefined", var_type_to_name(node->assignment.decl_type));
	}

	if(node->assignment.assign_type != '=')
	{
		Type_Info *lhs_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
		Type_Info *rhs_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
		Type_Info lhs_value = get_expression_type(f, node->assignment.lhs, &node->assignment.token, NULL, expr_info);
		Type_Info rhs_value = get_expression_type(f, node->assignment.rhs, &node->assignment.token, NULL, expr_info);
		memcpy(lhs_type, &lhs_value, sizeof(Type_Info));
		memcpy(rhs_type, &rhs_value, sizeof(Type_Info));
		Type_Info *left_ptr = fix_type(f, lhs_type);
		Type_Info *right_ptr = fix_type(f, rhs_type);
		Type_Info left = *left_ptr;
		Type_Info right = *right_ptr;
		i32 index = 0;
		auto overload = get_overload(f, &left, &right, node, &index);
		if(overload)
		{
			overload->overload.index = index;
			Token_Iden *at_tok = (Token_Iden *)AllocateCompileMemory(sizeof(Token_Iden));
			memcpy(at_tok, &node->assignment.token, sizeof(Token_Iden));
			at_tok->type = (Token)'@';

			Type_Info *left_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			left_type->type = T_POINTER;
			left_type->pointer.type = left_ptr;
			left_type->identifier = var_type_to_name(left_type, false);

			auto left_expr = alloc_node();
			left_expr->type = type_unary_expr;
			left_expr->unary_expr.expression = node->assignment.lhs;
			left_expr->unary_expr.expr_type = *left_type;
			left_expr->unary_expr.op = at_tok;
			overload_overwrite(&node->assignment.token, node, left_expr, node->assignment.rhs, left_type, right_ptr, overload);
			return;
		}
		else
			node->assignment.rhs = get_assign_type_expression(f, node);
	}
	if(node->assignment.is_declaration && node->assignment.rhs == NULL)
	{
		node->assignment.decl_type = fix_type(f, node->assignment.decl_type);
		if(node->assignment.decl_type->type == T_DETECT)
		{
			raise_semantic_error(f, "cannot automatically assign type without an expression", node->assignment.token);
		}
	}
	else
	{
		Type_Info expression_type = get_expression_type(f, node->assignment.rhs, &node->assignment.token, node, expr_info);
		if(!node->assignment.is_declaration)
		{
			// node->assignment.decl_type = get_symbol_spot(f, node->assignment.token)->type;
			Type_Info decl_type = get_expression_type(f, node->assignment.lhs, &node->assignment.token, node, expr_info);
			node->assignment.decl_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			memcpy(node->assignment.decl_type, &decl_type, sizeof(Type_Info));
			node->assignment.is_const = node->assignment.decl_type->is_const;
		}
		if(type_is_invalid(&expression_type))
		{
			raise_semantic_error(f, "Invalid expression", node->assignment.token);
		}


		if(node->assignment.decl_type->type == T_DETECT)
		{
			if(is_untyped(expression_type))
			{
				Type_Info decl_type = untyped_to_type(expression_type);
				memcpy(node->assignment.decl_type, &decl_type, sizeof(Type_Info));
			}
			else if(expression_type.type == T_ARRAY)
			{
				if(is_untyped(*expression_type.array.type))
				{
					Type_Info elem_type = untyped_to_type(*expression_type.array.type);
					memcpy(expression_type.array.type, &elem_type, sizeof(Type_Info));
				}
				memcpy(node->assignment.decl_type, &expression_type, sizeof(Type_Info));
			}
			else if(expression_type.type == T_FUNC)
			{
				Type_Info *func = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
				memcpy(func, &expression_type, sizeof(Type_Info));
				node->assignment.decl_type->type = T_POINTER;
				node->assignment.decl_type->pointer.type = func;
			}
			else
				memcpy(node->assignment.decl_type, &expression_type, sizeof(Type_Info));
		}
		else if(!check_type_compatibility(*node->assignment.decl_type, expression_type))
		{
			char *error = (char *)AllocateCompileMemory(2048);
			vstd_sprintf(error, "Tried to assign %s to variable of type %s",
						var_type_to_name(&expression_type),
						var_type_to_name(node->assignment.decl_type));
			raise_semantic_error(f, error, node->assignment.token);
		}
		node->assignment.rhs_type = expression_type;
	}
	// @TODO: remove "is_const" from the Type_Info struct and use a better way
	// to find if a lhs expression is constant
	if(node->assignment.is_const && !node->assignment.is_declaration)
		raise_semantic_error(f, "Trying to assign to a constant variable",
				node->assignment.token);


	if(node->assignment.is_declaration)
	{
		Token_Iden *sym_tok = (Token_Iden *)AllocateCompileMemory(sizeof(Token_Iden));
		memcpy(sym_tok, &node->assignment.token, sizeof(Token_Iden));
		Type_Info *sym_type = (Type_Info *) AllocateCompileMemory(sizeof(Type_Info) );
		memcpy(sym_type, node->assignment.decl_type, sizeof(Type_Info));
		Symbol this_sym = {};
		this_sym.token = sym_tok;
		this_sym.node = node;
		this_sym.identifier = node->assignment.token.identifier;
		this_sym.type = sym_type;
		this_sym.type->is_const = node->assignment.is_const;
		if(is_global)
			this_sym.tag = S_GLOBAL_VAR;
		else
			this_sym.tag = S_VARIABLE;
		add_symbol(f, this_sym);
	


		if(node->assignment.decl_type->type == T_ARRAY)
		{
			auto count_expr = node->assignment.decl_type->array.optional_expression;
			auto elem_count = node->assignment.decl_type->array.elem_count;
			auto type_token = node->assignment.decl_type->token;
			if(count_expr)
			{
				Type_Info array_size_type = get_expression_type(f, count_expr, type_token, NULL, NULL);
				if(!is_integer(array_size_type))
				{
					raise_semantic_error(f, "Expected an integer expression", *type_token);
				}
			}
			b32 failed = false;
			
			Interp_Val count_val = create_interp_val();
			if(count_expr)
				count_val = interpret_expression(count_expr, &failed);
			else
			{
				count_val.type->type = T_UNTYPED_INTEGER;
				count_val._u64 = elem_count;
			}
			Assert(is_integer(*count_val.type));
			if(failed)
			{
				raise_semantic_error(f, "Expected a constant expression", *type_token);
			}
			if(is_signed(*count_val.type))
			{
				if(count_val._i64 < 0)
					raise_semantic_error(f, "Expression must evaluate to a value higher than 0",
							*type_token);
				node->assignment.decl_type->array.elem_count = count_val._i64;
			}
			else
			{
				node->assignment.decl_type->array.elem_count = count_val._u64;
			}

			// @TODO: this is a hack
			Ast_Node *arr_expr = node->assignment.rhs;
			while(arr_expr)
			{
				if(arr_expr->type == type_array_list)
					arr_expr->array_list.type = *node->assignment.decl_type;
				arr_expr = arr_expr->right;
			}
		}
	}

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
	Type_Info result = {};
	if(type.type == T_UNTYPED_INTEGER)
	{
		result.type = T_INTEGER;
		result.primitive.size = byte8;
		result.identifier = (u8 *)"i64";
		result.token = type.token;
	}
	if(type.type == T_UNTYPED_FLOAT)
	{
		result.type = T_FLOAT;
		result.primitive.size = real64;
		result.identifier = (u8 *)"f64";
		result.token = type.token;
	}
	Assert(result.type != 0);
	return result;
}

Type_Info *
get_binary_expr_type(File_Contents *f, Ast_Node *expr, Type_Info *left, Type_Info *right)
{
	Assert(expr->type == type_binary_expr);
	if(!check_type_compatibility(*left, *right))
	{
		char *error = (char *)AllocateCompileMemory(4096);
		vstd_sprintf(error, "Types %s and %s are incompatible", var_type_to_name(left), var_type_to_name(right));
		raise_semantic_error(f, error, expr->binary_expr.token);
	}
	switch(expr->binary_expr.op)
	{
		case tok_logical_or:	  // ||
		case tok_logical_is:	  // ==
		case tok_logical_isnot:   // !=
		case tok_logical_and:	  // &&
		case tok_logical_lequal:  // <=
		case tok_logical_gequal:  // >=
		case tok_logical_greater: // >
		case tok_logical_lesser:  // <
		{
			Type_Info *boolean_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			boolean_type->type = T_BOOLEAN;
			boolean_type->primitive.size = logical_bit;
			boolean_type->identifier = (u8 *)"bool";
			return boolean_type;
		} break;
		default:
		{
			return left;
		} break;
	
	}
	return NULL;
}

b32
is_logical_op(Token op)
{
	return (op >= tok_logical_gequal && op <= tok_logical_or) || op == tok_logical_greater || op == tok_logical_lesser;	
}

b32
is_bits_op(Token op)
{
	return op == tok_bits_lshift || op == tok_bits_rshift ||
		op == tok_bits_or  ||
		op == tok_bits_xor ||
		op == tok_bits_not ||
		op == tok_bits_and;
}

Import_Module *
get_module(File_Contents *f, u8 *id)
{
	char *a0 = (char *)id;
	size_t module_count = SDCount(f->modules);
	for(size_t i = 0; i < module_count; ++i)
	{
		Import_Module *mod = &f->modules[i];
		if(mod->identifier_nullable)
		{
			Assert(mod->identifier_nullable->type == type_identifier);
			if(vstd_strcmp(a0, (char *)mod->identifier_nullable->identifier.name))
			{
				return mod;
			}
		}
	}
	return NULL;
}

Type_Info *
verify_array_list(File_Contents *f, Ast_Node *node)
{
	Assert(node->type == type_array_list);
	size_t list_count = SDCount(node->array_list.list);
	Type_Info *expr_types = (Type_Info *)AllocateCompileMemory(list_count * sizeof(Type_Info));
	Ast_Array_List list = node->array_list;

	Expression_Context expr_info = {};
	expr_info.kind  = EXPRT_A_INIT;
	expr_info.flags = CAN_INIT_STRUCT;
	expr_info.flags = CAN_INIT_ARRAY;
	for(size_t i = 0; i < list_count; ++i)
	{
		expr_types[i] = get_expression_type(f, list.list[i], &list.token, NULL, &expr_info);
	}

	for (size_t i = 0; i < list_count; ++i)
	{
		for(size_t j = i + 1; j < list_count; ++j)
		{
			if(!check_type_compatibility(expr_types[i], expr_types[j]))
			{
				raise_formated_semantic_error(f, list.token,
						"All expressions in an array list must be of compatible types, "
						"but expression #%d is of type %s "
						"which is incompatible with expression #%d of type %s", 
						i, var_type_to_name(&expr_types[i]),
						j, var_type_to_name(&expr_types[j]));
			}
		}
	}

	// @NOTE: idk lol
	return expr_types;
}

Type_Info
verify_selector(File_Contents *f, Ast_Node *expression)
{
	if(expression->selector.operand->type == type_identifier)
	{
		Import_Module *maybe_module = get_module(f, expression->selector.operand->identifier.name);
		if(maybe_module)
		{
			auto sym = get_symbol_spot(maybe_module->f, *expression->selector.identifier->identifier.token);
			expression->selector.identifier->type = type_identifier;
			expression->selector.identifier->identifier.name = sym->identifier;
			expression->selector.identifier->identifier.token = sym->token;
			expression->selector.identifier->identifier.symbol_spot = sym;
			expression->selector.flags |= SEL_MODULE;

			expression->selector.operand_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			expression->selector.operand_type->f_nullable = maybe_module->f;
			expression->selector.operand_type->type = T_MODULE;
			expression->selector.operand_type->mod.selector_id = expression->selector.operand;
			expression->selector.operand_type->mod.selected_id = expression->selector.identifier;
			return *sym->type;
		}
	}

	Type_Info *expr_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	Type_Info expr_type_value = get_expression_type(f, expression->selector.operand, expression->selector.dot_token, NULL, NULL);
	memcpy(expr_type, &expr_type_value, sizeof(Type_Info));

	Type_Info *operand_type = fix_type(f, expr_type);
	expression->selector.operand_type = operand_type;
	if(!is_accessible(*operand_type))
	{
		raise_formated_semantic_error(f, *expression->selector.dot_token,
				"Expression of type %s is not selectable", var_type_to_name(operand_type));
	}

	while(operand_type->type == T_POINTER)
		operand_type = operand_type->pointer.type;
	
	if(is_or_is_pointing_to(operand_type, T_STRUCT))
	{
		u8 *name = expression->selector.identifier->identifier.name;
		for(size_t i = 0; i < operand_type->structure.member_count; ++i)
		{
			if(vstd_strcmp((char *)name, (char *)operand_type->structure.member_names[i]))
			{
				expression->selector.selected_type = &operand_type->structure.member_types[i];
				expression->selector.selected_index = i;
				return operand_type->structure.member_types[i];
			}
		}
		raise_formated_semantic_error(f, *expression->selector.dot_token,
				"Accessed member [ %s ] of structure [ %s ] doesn't exist",
				name, operand_type->structure.name);
	}
	else if(operand_type->type == T_ENUM)
	{
		Ast_Enum enumerator = operand_type->enumerator.node->enumerator;
		u8 *name = expression->selector.identifier->identifier.name;
		size_t member_count = SDCount(enumerator.members);
		for(size_t i = 0; i < member_count; ++i)
		{
			u8 *mem_name = enumerator.members[i]->interp_val.id.name;
			if(vstd_strcmp((char *)name, (char *)mem_name))
			{
				expression->selector.selected_type = operand_type;
				expression->selector.selected_index = i;
				return enumerator.type;
			}
		}
		raise_formated_semantic_error(f, *expression->selector.dot_token, "%s is not a member of enumerator %s",
				name, enumerator.id.name);
	}
	else
		Assert(false);
	return (Type_Info){};
}

Type_Info *
check_if_can_use_initializer_list(File_Contents *f, Ast_Node *node, Expression_Context *info)
{
	if(node->type == type_struct_init)
	{
		if(!info || !info->opt_info || !(info->flags & CAN_INIT_STRUCT))
			raise_semantic_error(f, "You can only use struct initializer lists in declarations", node->struct_init.token);
		return info->opt_info;
	}
	if(node->type == type_array_list)
	{
		if(!info || !info->opt_info || !(info->flags & CAN_INIT_ARRAY))
			raise_semantic_error(f, "You can only use array initializer lists in declarations", node->array_list.token);
		return info->opt_info;
	}
	Assert(false);
}

Type_Info
verify_cast(File_Contents *f, Ast_Node *expression, Expression_Context *info)
{
	Type_Info cast_type = *fix_type(f, expression->cast.type);
	if (type_is_invalid(&cast_type))
	{
		raise_formated_semantic_error(f, *expression->cast.token,
			"Cast type %s is undefined", var_type_to_name(&cast_type));
	}
	Type_Info casted = get_expression_type(f, expression->cast.expression, expression->cast.token, NULL, info);
	expression->cast.expr_type = casted;
	if (!is_castable(casted, cast_type))
	{
		raise_formated_semantic_error(f, *expression->cast.token, "Cannot cast type %s to %s",
			var_type_to_name(&casted), var_type_to_name(&cast_type));
	}
	return cast_type;
}

Type_Info
get_atom_expression_type(File_Contents *f, Ast_Node *expression, Ast_Node *previous, Expression_Context *info)
{
	switch ((int)expression->type)
	{
		case type_identifier:
		{
			expression->identifier.symbol_spot = get_symbol_spot(f, *expression->identifier.token);
			if(expression->identifier.symbol_spot->tag == S_STRUCT_MEMBER)
			{
				raise_formated_semantic_error(f, *expression->identifier.token,
						"Unkown identifier %s",
						expression->identifier.name);
			}
			return *expression->identifier.symbol_spot->type;
		} break;
		case type_overload:
		{
			/***********************************************
			 *
			 * No need to verify since overload can only be
			 * written dirrectly by the compiler
			 *
			 * ********************************************/
			return *expression->overload.function->function.type;
		} break;
		case type_run:
		{
			b32 failed = false;

			// @NOTE: verify expression
			Type_Info result = get_expression_type(f, expression->run.to_run, expression->run.token, expression, info);
			expression->run.ran_val = interpret_expression(expression->run.to_run, &failed);
			if(failed)
			{
				raise_semantic_error(f, "Expression cannot be run at compile time",
						*expression->run.token);
			}
			return result;
		} break;
		case type_cast:
		{
			return verify_cast(f, expression, info);
		} break;
		case type_struct_init:
		{
			// @TODO: optimize by passing type when it's available? Remember to fix type
			check_if_can_use_initializer_list(f, expression, info);
			return verify_struct_init(f, expression);
		} break;
		case type_index:
		{
			Type_Info operand_type_value = get_expression_type(f,
						expression->index.operand, expression->index.token, NULL, NULL);
			Type_Info index_type_value = get_expression_type(f,
						expression->index.expression, expression->index.token, NULL, NULL);
			Type_Info *operand_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			Type_Info *index_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			memcpy(operand_type, &operand_type_value, sizeof(Type_Info));
			memcpy(index_type, &index_type_value, sizeof(Type_Info));
			operand_type = fix_type(f, operand_type);
			index_type = fix_type(f, index_type);

			if(type_is_invalid(operand_type))
			{
				raise_semantic_error(f, "Indexing expression is invalid", *expression->index.token);
			}
			expression->index.operand_type = *operand_type;
			if(operand_type->type != T_ARRAY && operand_type->type != T_POINTER && operand_type->type != T_STRING)
			{
				i32 index = 0;
				auto overload = get_overload(f, operand_type, index_type, expression, &index);
				if(overload)
				{
					overload->overload.index = index;
					auto left_expr = expression->index.operand;
					auto right_expr = expression->index.expression;
					Token_Iden *token = expression->index.token;
					overload_overwrite(token, expression, left_expr, right_expr,
							operand_type, index_type, overload);
					return *overload->overload.function->function.type->func.return_type;
				}
				else
					raise_formated_semantic_error(f, *expression->index.token,
							"Indexing of non-indexable type %s",
							var_type_to_name(operand_type));
			}
			if(!is_integer(*index_type))
			{
				raise_semantic_error(f, "Non integer used for indexing", *expression->index.token);
			}
			if(operand_type->type == T_ARRAY)
			{
				expression->index.idx_type = *operand_type->array.type;
				return *operand_type->array.type;
			}
			else if(operand_type->type == T_POINTER)
			{
				expression->index.idx_type = *operand_type->pointer.type;
				return  *operand_type->pointer.type;
			}
			else if(operand_type->type == T_STRING)
			{
				expression->index.idx_type = *get_type(f, (u8 *)"u8");
				return *get_type(f, (u8 *)"u8");
			}
			else Assert(false);
		} break;
		case type_func_call:
		{
			return verify_func_call(f, expression, expression->func_call.token, previous);
		} break;
		case type_selector:
		{
			return verify_selector(f, expression);
		} break;
		case type_postfix:
		{
			Type_Info expr_type_value = get_expression_type(f, expression->postfix.operand, expression->postfix.token, NULL, NULL);
			Type_Info *expr_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			memcpy(expr_type, &expr_type_value, sizeof(Type_Info));
			expr_type = fix_type(f, expr_type);

			if (!is_integer(*expr_type) && !is_float(*expr_type) && expr_type->type != T_POINTER)
			{
				raise_formated_semantic_error(f, *expression->postfix.token,
						"Cannot apply postfix operator to expression of type %s",
						var_type_to_name(expr_type));
			}
			expression->postfix.postfix_type = expr_type;
			return *expr_type;
		} break;
		case type_literal:
		{
			if(expression->atom.type == LIT_CHAR)
				return *get_type(f, (u8 *)"u8");
			else
				return number_to_untyped_type(expression->atom.identifier.name);
		} break;
		case type_const_str:
		{
			Type_Info str = {T_STRING};
			str.v_string.content = &expression->atom.identifier;
			return str;
		} break;
		case type_array_list:
		{
			Type_Info *array_type = fix_type(f, check_if_can_use_initializer_list(f, expression, info));
			Type_Info result = {};
			result.type = T_ARRAY;
			result.token = &expression->array_list.token;
			result.array.elem_count = SDCount(expression->array_list.list);
			result.array.type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			expression->array_list.expr_types = verify_array_list(f, expression);

			if(array_type->type == T_DETECT)
			{
				// @NOTE: try to find a non untyped type to assign to the entire array
				// if we don't have an assign type
				Type_Info *copy_type = &expression->array_list.expr_types[0];
				int expr_count = SDCount(expression->array_list.expr_types);
				for(int i = 0; i < expr_count; ++i)
				{
					if(!is_untyped(expression->array_list.expr_types[i]))
					{
						copy_type = &expression->array_list.expr_types[i];
						break;
					}
				}

				memcpy(result.array.type, copy_type, sizeof(Type_Info));
			}
			else 
				memcpy(&result, array_type, sizeof(Type_Info));
			result.identifier = var_type_to_name(&result, false);
			expression->array_list.type = result;
			return result;
		}
	}
	return (Type_Info){.type = T_INVALID};
}

Type_Info
get_unary_expression_type(File_Contents *f, Ast_Node *expression, Ast_Node *previous, Expression_Context *info)
{
	if(expression->type == type_unary_expr)
	{
		Ast_Unary_Expr unary_expr = expression->unary_expr;
		Type_Info expr_type = get_expression_type(f, unary_expr.expression, unary_expr.op, expression, info);
		expression->unary_expr.expr_type = expr_type;
		const char *postfix_name = "++";
		switch((int)unary_expr.op->type)
		{
			case tok_bits_xor:
			case tok_bits_and:
			case tok_bits_not:
			{
				if(!is_integer(expr_type))
				{
					raise_formated_semantic_error(f, *unary_expr.op,
							"Cannot use bitwise operator %c on expression of type %s",
							unary_expr.op->type, var_type_to_name(&expr_type));
				}
				return expr_type;
			} break;
			case '@':
			{
				if(unary_expr.expression->type != type_identifier && unary_expr.expression->type != type_index && unary_expr.expression->type != type_selector)
				{
					raise_semantic_error(f, "cannot take the address of this operand", 
							*unary_expr.op);
				}
				Type_Info *expr_ptr = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
				memcpy(expr_ptr, &expr_type, sizeof(Type_Info));
				Type_Info *result_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
				result_type->type = T_POINTER;
				result_type->pointer.type = expr_ptr;
				result_type->identifier = var_type_to_name(result_type, false);
				return *result_type;
			} break;
			case '*':
			{
				if(expr_type.type != T_POINTER)
				{
					raise_semantic_error(f, "Cannot derefrence something that isn't a pointer", *unary_expr.op);
				}
				return *expr_type.pointer.type;
			} break;
			case tok_not:
			{
				if(expr_type.type != T_BOOLEAN)
				{
					raise_semantic_error(f, "Cannot use ! operator on a non boolean expression", *unary_expr.op);
				}
				return expr_type;
			} break;
			case tok_minus:
			{
				if(!is_integer(expr_type) && !is_float(expr_type))
				{
					raise_formated_semantic_error(f, *unary_expr.op, "Cannot use - on operator of type %s", 
							var_type_to_name(&expr_type));
				}
				if(is_integer(expr_type) && !is_signed(expr_type))
				{
					raise_semantic_error(f, "Cannot use - operator on an unsigned integer", *unary_expr.op);
				}
				return expr_type;
			} break;
			case tok_minusminus:
			postfix_name = "--";
			case tok_plusplus:
			{
				if(!is_integer(expr_type) && !is_float(expr_type) && expr_type.type != T_POINTER)
				{
					raise_formated_semantic_error(f, *unary_expr.op,
							"Cannot apply %s operator to expression of type %s",
							postfix_name, var_type_to_name(&expr_type));
				}
				return expr_type;
			} break;
			default:
			{
				raise_semantic_error(f, "Unexpected unary exprsesion", *unary_expr.op);

				// @Unreachable
				return (Type_Info){.type = T_INVALID};
			} break;
		}
	}
	else if(expression->type == type_size)
	{
		Type_Info op_type = {};
		op_type.type = T_INVALID;
		if(expression->size.operand->type == type_identifier)
		{
			auto got = get_type(f, expression->size.operand->identifier.name);
			if(got)
			{
				op_type = *fix_type(f, got);
			}
		}
		else if(expression->size.operand->type == type_selector)
		{
			Import_Module *maybe_module = get_module(f, expression->size.operand->selector.operand->identifier.name);
			if(maybe_module)
			{
				// It might be asking for the size of a global of that module so we don't
				// error out if we don't find the type
				auto got = get_type(maybe_module->f, expression->size.operand->selector.identifier->identifier.name);
				if(got)
				{
					op_type = *fix_type(maybe_module->f, got);
				}
			}
		}
		if(type_is_invalid(&op_type))
			op_type = get_expression_type(f, expression->size.operand,
					expression->size.token, previous, info);

		expression->size.operand_type = op_type;
		Type_Info size_type = {T_UNTYPED_INTEGER};
		return size_type;
	}
	else if(expression->type == type_cast)
	{
		return verify_cast(f, expression, info);
	}
	else
		return get_atom_expression_type(f, expression, previous, info);
}


void
check_types_error(File_Contents *f, Token_Iden token, Type_Info a, Type_Info b)
{
	if(!check_type_compatibility(a, b))
	{
		raise_formated_semantic_error(f, token, "Types %s and %s are incompatible", 
				var_type_to_name(&a), var_type_to_name(&b));
	}
}

Ast_Node *
get_overload(File_Contents *f, Type_Info *left, Type_Info *right, Ast_Node *op, i32 *index, b32 searching_modules)
{
	auto overloads = f->overloads;
	size_t overload_count = SDCount(overloads);
	size_t arg_count = 2;
	if(!right)
		arg_count = 1;
	if(op->type == type_index)
	{
		for(size_t i = 0; i < overload_count; ++i)
		{
			*index = i;
			if(overloads[i]->overload.overloaded == O_INDEX)
			{
				u8 *left_id = overloads[i]->overload.function->function.type->func.param_types[0].identifier;
				Type_Info *right_type = &overloads[i]->overload.function->function.type->func.param_types[1];
				if(vstd_strcmp((char *)left->identifier, (char *)left_id) &&
						check_type_compatibility(*right_type, *right))
				{
					return overloads[i];
				}
			}
		}
	}
	else if(op->type == type_assignment)
	{
		Token used_op = op->assignment.assign_type;
		Type_Info *left_ptr = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
		left_ptr->type = T_POINTER;
		left_ptr->pointer.type = left;
		left_ptr->identifier = var_type_to_name(left_ptr, false);
		for(size_t i = 0; i < overload_count; ++i)
		{
			*index = i;
			if(overloads[i]->overload.op == used_op &&
					SDCount(overloads[i]->overload.function->function.arguments) == arg_count)
			{
				auto args      = overloads[i]->overload.function->function.type->func.param_types;
				auto left_arg  = &args[0];
				auto right_arg = &args[1];
				if(vstd_strcmp((char *)left_ptr->identifier, (char *)left_arg->identifier))
				{
					if(check_type_compatibility(*right_arg, *right))
						return overloads[i];
				}
			}
		}
	}
	else
	{
		Token used_op;
		if(op->type == type_unary_expr)
			used_op = op->unary_expr.op->type;
		else if(op->type == type_binary_expr)
			used_op = op->binary_expr.op;
		else
			Assert(false);
		for(size_t i = 0; i < overload_count; ++i)
		{
			*index = i;
			if(overloads[i]->overload.op == used_op &&
					SDCount(overloads[i]->overload.function->function.arguments) == arg_count)
			{
				auto args      = overloads[i]->overload.function->function.type->func.param_types;
				auto left_arg  = &args[0];
				auto right_arg = &args[1];
				if(vstd_strcmp((char *)left->identifier,
							(char *)left_arg->identifier))
				{
					if(arg_count == 1)
						return overloads[i];
					else
						if(check_type_compatibility(*right_arg,
									*right))
							return overloads[i];
				}
			}
		}
	}

	if(!searching_modules)
	{
		int module_count = SDCount(f->modules);
		Ast_Node *result = NULL;

		for(int i = 0; i < module_count; ++i)
		{
			result = get_overload(f->modules[i].f, left, right, op, index, true);
			if(result)
				return result;
		}
	}
	return NULL;
}

void
overload_overwrite(Token_Iden *token, Ast_Node *expression, Ast_Node *left_expr, Ast_Node *right_expr, Type_Info *left, Type_Info *right, Ast_Node *overload)
{
	expression->type = type_func_call;
	expression->func_call.token = token;
	expression->func_call.operand = overload;
	expression->func_call.operand_type = *overload->overload.function->function.type;
	expression->func_call.arguments = SDCreate(Ast_Node *);
	expression->func_call.arg_types = SDCreate(Type_Info);
	expression->func_call.expr_types = SDCreate(Type_Info);
	expression->func_call.overload_name = NULL;
	SDPush(expression->func_call.arguments, left_expr);
	if(right_expr)
		SDPush(expression->func_call.arguments, right_expr);
	SDPush(expression->func_call.arg_types, *left);
	if(right)
	SDPush(expression->func_call.arg_types, *overload->overload.function->function.arguments[1]->variable.type);
	SDPush(expression->func_call.expr_types, *left);
	if(right)
	SDPush(expression->func_call.expr_types, *right);
}

Type_Info
get_expression_type(File_Contents *f, Ast_Node *expression, Token_Iden *desc_token, Ast_Node *previous, Expression_Context *info)
{
	if(expression == NULL)
		return (Type_Info){.type = T_INVALID};

	if(expression->type != type_binary_expr)	
	{
		Type_Info *unary_expr_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
		Type_Info unary_expr_val = get_unary_expression_type(f, expression, previous, info);
		memcpy(unary_expr_type, &unary_expr_val, sizeof(Type_Info));
		return *fix_type(f, unary_expr_type);
	}

	Type_Info left = get_expression_type(f, expression->left,  &expression->binary_expr.token, expression, info);
	Type_Info right = get_expression_type(f, expression->right, &expression->binary_expr.token, expression, info);

	if(type_is_invalid(&left) || type_is_invalid(&right))
		raise_semantic_error(f, "invalid type in expression", *desc_token);

	if(!are_op_compatible(left, right))
	{
		i32 index = 0;
		Ast_Node *overload = get_overload(f, &left, &right, expression, &index);
		if(overload)
		{
			overload->overload.index = index;
			auto left_expr = expression->left;
			auto right_expr = expression->right;
			Token_Iden *token = &expression->binary_expr.token;
			overload_overwrite(token, expression, left_expr, right_expr, &left, &right, overload);
			return *overload->overload.function->function.type->func.return_type;
		}
		else
		{
			raise_formated_semantic_error(f, expression->binary_expr.token,
					"Cannot perform a binary operation with types %s and %s",
					var_type_to_name(&left), var_type_to_name(&right));
		}
	}
	check_types_error(f, *desc_token, left, right);
	expression->binary_expr.left = left;
	expression->binary_expr.right = right;

	if(is_bits_op(expression->binary_expr.op))
	{
		if((is_float(left) || is_float(right)) && left.primitive.size != real128)
		{
			raise_semantic_error(f, "Cannot use the bitwise operators with floating point numbers",
					expression->binary_expr.token);
		}
	}
	else if(is_logical_op(expression->binary_expr.op))
	{
		Type_Info boolean_type = {};
		boolean_type.type = T_BOOLEAN;
		return boolean_type;
	}

	return *fix_type(f, &left);
}

b32
does_overload_call_match(Ast_Node *call, Ast_Node *overload)
{
	auto args = overload->function.arguments;
	auto expr_types = call->func_call.expr_types;
	auto expr_count = SDCount(expr_types);
	auto arg_count  = SDCount(args);
	if( (expr_count != arg_count) && !(overload->function.flags & FF_HAS_VAR_ARGS) )
		return false;
	
	for (int i = 0; i < arg_count; ++i) {
		if (args[i]->variable.type->type == T_DETECT) {
			return true;
		}
		if (!check_type_compatibility(*args[i]->variable.type, expr_types[i]))
			return false;
	}
	return true;
}

Type_Info
verify_func_call(File_Contents *f, Ast_Node *func_call, Token_Iden *expr_token, Ast_Node *previous)
{
	func_call->func_call.operand_type = get_expression_type(f, func_call->func_call.operand, func_call->func_call.token, previous, NULL);
	Type_Info operand_type = func_call->func_call.operand_type;

	b32 is_func = false;
	if(operand_type.type == T_FUNC)
	{
		is_func = true;
	}
	else if(operand_type.type == T_POINTER && operand_type.pointer.type->type == T_FUNC)
	{
		is_func = true;
		operand_type = *operand_type.pointer.type;
		func_call->func_call.operand_type = operand_type;
	}


	if(!is_func)
	{
		raise_formated_semantic_error(f, *expr_token, "Operand of call is not a function. Tried to call %s", 
				var_type_to_name(&operand_type));
	}

	if(func_call->func_call.operand->type == type_identifier)
	{
		auto func_sym = get_symbol_spot(f, *func_call->func_call.operand->identifier.token);
		if(func_sym && func_sym->node->type == type_func)
		{
			if((func_sym->node->function.flags & FF_IS_INTERP_ONLY) && (!previous || previous->type != type_run))
			{
				raise_formated_semantic_error(f,
						*expr_token,
						"You're trying to call fucntion [ %s ] which is marked as interpret only,\n\t"
						"that function can only be run at compile time using $run", func_sym->node->function.identifier.name);
			}
		}
	}

	func_call->func_call.expr_types = SDCreate(Type_Info);
	Ast_Node **passed_expr = func_call->func_call.arguments;
	size_t expr_count = SDCount(passed_expr);


	Expression_Context expr_info = {};
	expr_info.kind = EXPRT_CALL;
	expr_info.flags = CAN_INIT_ARRAY | CAN_INIT_STRUCT;

	for (size_t i = 0; i < expr_count; ++i)
	{
		expr_info.opt_info = &func_call->func_call.arg_types[i];
		Type_Info expr_type = get_expression_type(f, passed_expr[i], expr_token, NULL, &expr_info);

		expr_type = *fix_type(f, &expr_type);
		SDPush(func_call->func_call.expr_types, expr_type);
	}

	File_Contents *saved_f = NULL;
	auto operand = func_call->func_call.operand;
	if(operand->type == type_selector && operand->selector.flags & SEL_MODULE)
	{
		f = operand->selector.operand_type->f_nullable;
		saved_f = f;
		operand = operand->selector.identifier;
	}
	if(operand->type == type_identifier)
	{
		auto func_sym = get_symbol_spot(f, *operand->identifier.token, false);
		if(func_sym && func_sym->tag == S_FUNCTION && func_sym->node->function.overloads)
		{
			auto overload_count = SDCount(func_sym->node->function.overloads);
			Ast_Node *found_overload = NULL;
			for(size_t i = 0; i < overload_count; ++i)
			{
				auto overload = func_sym->node->function.overloads[i];
				if(does_overload_call_match(func_call, overload))
				{
					found_overload = overload;
					break;
				}
			}
			if(!found_overload)
			{
				char *error = (char *)AllocatePermanentMemory(512 * overload_count);			
				Ast_Node **overloads = func_sym->node->function.overloads;
				for(size_t i = 0; i < overload_count; ++i)
				{
					vstd_strcat(error, (char *)overloads[i]->function.identifier.name);
					vstd_strcat(error, "\n\t");
				}
				if(saved_f)
					f = saved_f;
				raise_formated_semantic_error(f, *func_call->func_call.token, "No overload found for function call: \n\t%s", error);
			}
			Token_Iden *custom_token = func_call->func_call.token;
			custom_token->identifier = found_overload->function.identifier.name;
			auto overload_sym = get_symbol_spot(f, *custom_token);
			operand_type = *overload_sym->type;
			func_call->func_call.operand_type = operand_type;
			func_call->func_call.overload_name = found_overload->function.identifier.name;
		}
	}

	if(saved_f)
		f = saved_f;

	Type_Info *param_types = operand_type.func.param_types;
	size_t param_count = SDCount(param_types);
	b32 has_var_args = false;
	for(size_t i = 0; i < param_count; ++i)
	{
		if(param_types[i].type == T_DETECT)
			has_var_args = true;
	}
	func_call->func_call.arg_types = SDCreate(Type_Info);
	if(param_count != expr_count)
	{
		if((has_var_args) && (param_count == expr_count + 1 || expr_count > param_count))
		{}
		else
		{
			char *error = (char *)AllocateCompileMemory(2048);
			vstd_sprintf(error, "Incorrect number of arguments, passed %d, function required %d", expr_count, param_count);
			raise_semantic_error(f, error, *func_call->func_call.token);
		}
	}	

	b32 found_var_args = false;
	size_t j = 0;
	for(size_t i = 0; i < expr_count; ++i)
	{
		Type_Info arg_type = *fix_type(f, &param_types[j]);
		Type_Info expr_type = func_call->func_call.expr_types[i];
		
		SDPush(func_call->func_call.arg_types, arg_type);
		if(arg_type.type == T_DETECT)
		{
			found_var_args = true;
		}
		else if(!check_type_compatibility(arg_type, expr_type))
		{
			char *error = (char *)AllocateCompileMemory(2048);
			vstd_sprintf(error, "Expression #%d in function call is of type %s,"
						 " argument #%d is of incompatible type %s",
						 i + 1,
						 var_type_to_name(&expr_type),
						 j + 1,
						 var_type_to_name(&arg_type));
			raise_semantic_error(f, error, *func_call->func_call.token);
		}
		if(!found_var_args)
			j++;
	}

	return *operand_type.func.return_type;
}

Type_Info
verify_struct_init(File_Contents *f, Ast_Node *struct_init)
{
	Ast_Node *operand = NULL;
	u8 *struct_id = NULL;
	Type_Info *struct_type = NULL;
	if(struct_init->struct_init.operand->type == type_selector)
	{
		operand = struct_init->struct_init.operand;
		Import_Module *maybe_module = get_module(f, operand->selector.operand->identifier.name);
		if(maybe_module)
		{
			auto got_type = get_type(maybe_module->f, operand->selector.identifier->identifier.name);
			got_type->f_nullable = maybe_module->f;
			if(!got_type)
				raise_formated_semantic_error(f, *operand->selector.dot_token, "Use of undeclared type %s, imported by module %s",
						operand->selector.identifier->identifier.name, operand->selector.operand->identifier.name);
			struct_id   = operand->selector.identifier->identifier.name;
			struct_type = got_type;
		}
		else
		{
			raise_formated_semantic_error(f, *operand->selector.dot_token, "Use of undeclared module %s. Used to access type %s",
					operand->selector.operand->identifier.name, operand->selector.identifier->identifier.name);
		}
	}
	else
	{
		if(struct_init->struct_init.operand->type != type_identifier)
			raise_semantic_error(f, "expected struct identifier", 
							 struct_init->struct_init.token);

		struct_id = struct_init->struct_init.operand->identifier.name;
		struct_type = get_type(f, struct_id);
	}
	Token_Iden error_token = struct_init->struct_init.token;	
	Ast_Node **expressions = struct_init->struct_init.expressions;
	if(!struct_type)
	{
		raise_formated_semantic_error(f, error_token, "Struct name used for initialization is incorrect. Couldn't find %s", struct_id);
	}

	struct_init->struct_init.type = *struct_type;
	
	if(struct_type->type != T_STRUCT)
	{
		raise_semantic_error(f,"Incorrect identifier used for struct initialization", 
							 error_token);
	}
	auto *members = struct_type->structure.member_types;
	int member_count = struct_type->structure.member_count;
	
	if(type_is_invalid(struct_type))
	{
		char *error = (char *)AllocateCompileMemory(4 * (vstd_strlen((char *)struct_id) + 16));
		vstd_sprintf(error,
					 "Struct %s doesn't exist, error in struct initializer", struct_id);
		raise_semantic_error(f, error, error_token);
	}

	struct_init->struct_init.expr_types = SDCreate(Type_Info);
	if(SDCount(expressions) == 0)
	{
		struct_init->struct_init.is_empty_init = true;
		Type_Info untyped_int = {T_UNTYPED_INTEGER};
		Token_Iden *zero_tok = (Token_Iden *)AllocateCompileMemory(sizeof(Token_Iden));
		memcpy(zero_tok, &error_token, sizeof(Token_Iden));
		zero_tok->identifier = (u8 *)"0";
		for(size_t i = 0; i < member_count; ++i)
		{
			Ast_Node *result = alloc_node();
			result->type = type_literal;
			result->atom.identifier = pure_identifier(f, zero_tok);
			SDPush(struct_init->struct_init.expressions, result);
			SDPush(struct_init->struct_init.expr_types, untyped_int);
		}
	}
	else
	{
		
		if(SDCount(expressions) > member_count)
		{
			raise_semantic_error(f, "Too many expressions in struct initialization", 
								 error_token);
		}
		
		Expression_Context expr_info = {};
		expr_info.kind = EXPRT_S_INIT;
		expr_info.flags = CAN_INIT_STRUCT | CAN_INIT_ARRAY;
		for(size_t i = 0; i < SDCount(expressions); ++i)
		{
			members[i] = *fix_type(f, &members[i]);
			expr_info.opt_info = &members[i];

			Type_Info expr_type = get_expression_type(f, expressions[i], &error_token, struct_init, &expr_info);
			Type_Info member_type = members[i];
			SDPush(struct_init->struct_init.expr_types, expr_type);
			if(!check_type_compatibility(member_type, expr_type))
			{
				char *error = (char *)AllocateCompileMemory(2048);
				vstd_sprintf(error, "Expression #%d in struct initialization is of type %s,"
							 "\n\tmember #%d is of incompatible type %s. Try using a cast '#'",
							 i + 1,
							 var_type_to_name(&expr_type),
							 i + 1,
							 var_type_to_name(&member_type),
							 var_type_to_name(&member_type));
				raise_semantic_error(f, error, error_token);
			}
		}
		for(size_t i = SDCount(expressions); i < member_count; ++i)
		{
			Token_Iden *zero_tok = (Token_Iden *)AllocateCompileMemory(sizeof(Token_Iden));
			memcpy(zero_tok, &error_token, sizeof(Token_Iden));
			Type_Info untyped_int = {T_UNTYPED_INTEGER};
			zero_tok->identifier = (u8 *)"0";
			Ast_Node *result = alloc_node();
			result->type = type_literal;
			result->atom.identifier = pure_identifier(f, zero_tok);
			SDPush(struct_init->struct_init.expressions, result);
			SDPush(struct_init->struct_init.expr_types, untyped_int);
		}
	}
	return *struct_type;
}

Symbol *
get_symbol_spot(File_Contents *f, Token_Iden token, b32 error_out, b32 search_modules, b32 is_module_search)
{
	Symbol *result = NULL;
	u8 *identifier = token.identifier;


	Scope_Info saved_scopes[4096] = {};
	size_t last_scope = 0;

	while(!is_stack_empty(f->scope_stack))
	{
		Scope_Info to_scan = stack_pop(f->scope_stack, Scope_Info);
		size_t scan_size = to_scan.sym_count;
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
		stack_push(f->scope_stack, saved_scopes[i]);
	}

	// NOTE(Vasko): Loops to check for function definitions
	if(result == NULL)
	{
		size_t scan_size = SDCount(f->scopes);
		for(size_t i = 0; i < scan_size; ++i)
		{
			Scope_Info scope = f->scopes[i];
			size_t table_size = scope.sym_count;
			for(size_t j = 0; j < table_size; ++j)
			{
				if(vstd_strcmp((char *)(scope.symbol_table[j].identifier), (char *)identifier))
				{
					result = &scope.symbol_table[j];
					if(!is_module_search && result->tag != S_FUNCTION && result->tag != S_GLOBAL_VAR)
					{
						result = NULL;
					}
					goto EXIT_FUNC_SEARCH;
				}
			}	
		}
	}
	EXIT_FUNC_SEARCH:

	if(result == NULL && search_modules)
	{
		size_t module_count = SDCount(f->modules);
		for(size_t i = 0; i < module_count; ++i)
		{
			// Only check those that don't require a selectable
			Import_Module mod = f->modules[i];
			if(!mod.identifier_nullable)
			{
				// Don't search deeper
				result = get_symbol_spot(mod.f, token, false, false, true);
				if(result)
					break;
			}
		}
	}

	if(result == NULL && error_out)
	{
		char *error = (char *)AllocateCompileMemory(1024 * 1024);
		memset(error, 0, 1024 * 1024);
		vstd_sprintf(error, "Use of undeclared symbol \"%s\"", identifier);
		raise_semantic_error(f, error, token);
	}

	return result;
}



b32
are_op_compatible(Type_Info a, Type_Info b)
{
	// @NOTE: making pointers valid for all operations for the sake of comparrison, this might be a bad idea
	/*
	if(a.type == T_POINTER && is_pointer_rhs_compatible(b))
		return true;
	if(b.type == T_POINTER && is_pointer_rhs_compatible(a))
		return true;
	*/
	if(!is_rhs_valid(a) || !is_rhs_valid(b))
		return false;
	
	return check_type_compatibility(a, b);
}

b32
compare_structs_by_fields(Type_Info *a, Type_Info *b)
{
	if(a->type != T_STRUCT || b->type != T_STRUCT)
		return false;

	if(a->structure.member_count != b->structure.member_count)
		return false;

	int member_count = a->structure.member_count;
	for(int i = 0; i < member_count; ++i)
	{
		Type_Info a_mem = a->structure.member_types[i];
		Type_Info b_mem = b->structure.member_types[i];
		if(!check_type_compatibility(a_mem, b_mem))
			return false;
	}
	return true;
}

b32
check_type_compatibility(Type_Info a, Type_Info b)
{
	if(a.f_nullable && b.f_nullable)
	{
		if(is_user_defined(&a) && a.f_nullable != b.f_nullable)
			return false;
	}

	if(a.type == T_UNTYPED_INTEGER && b.type == T_POINTER)
		return true;
	if(a.type == T_UNTYPED_INTEGER || a.type == T_UNTYPED_FLOAT)
	{
		if(a.type == T_UNTYPED_FLOAT && b.type == T_INTEGER)
			return false;

		if(a.type == T_UNTYPED_INTEGER && b.type == T_UNTYPED_FLOAT)
			return false;

		if(is_integer(b) || is_float(b))
			return true;
	}	
	if(b.type == T_UNTYPED_INTEGER || b.type == T_UNTYPED_FLOAT)
	{
		if(b.type == T_UNTYPED_FLOAT && a.type == T_INTEGER)
			return false;
		
		if(b.type == T_UNTYPED_INTEGER && a.type == T_UNTYPED_FLOAT)
			return false;

		if(is_integer(a) || is_float(a))
			return true;
		/*
		b = untyped_to_type(b);
		if(a.type == b.type)
			return true;
		*/
	}
	if(a.type == T_STRING && is_string_pointer(b))
		return true;
	if(b.type == T_STRING && is_string_pointer(a))
		return true;
	if(a.type == T_POINTER)
	{
		if(b.type == T_POINTER)
		{
			if(a.pointer.type->type == T_VOID || b.pointer.type->type == T_VOID)
				return true;
		}
		else if(b.type == T_UNTYPED_INTEGER)
			return true;
		else if(b.type == T_INTEGER && (b.primitive.size == byte8 || b.primitive.size == ubyte8))
			return true;
		else if(b.type == T_FUNC)
		{
			if(a.pointer.type->type == T_FUNC)
				return true;
		}
	}
	if(a.type == T_BOOLEAN && b.type == T_BOOLEAN)
		return true;

	if(a.type != b.type)
		return false;
	if(a.type == T_STRUCT || b.type == T_STRUCT)
	{
		if(vstd_strcmp((char *)a.identifier, (char *)"anonymous struct") || vstd_strcmp((char *)a.identifier, (char *)"anonymous struct"))
		{
			return compare_structs_by_fields(&a, &b);
		}
	}
	if(!vstd_strcmp((char *)a.identifier, (char *)b.identifier))
		return false;
	
	return true;
}

void
verify_struct(File_Contents *f, Ast_Node *struct_node)
{
	Ast_Variable *members = struct_node->structure.members;
	int member_count = struct_node->structure.member_count;

	// @TODO: does this really need a lookup?
	Type_Info *struct_type = get_type(f, struct_node->structure.struct_id.name);
	for(size_t i = 0; i < member_count; ++i)
	{
		members[i].type = fix_type(f, members[i].type);
		struct_type->structure.member_types[i] = *members[i].type;
		if(struct_type->type == T_STRUCT && members[i].type->type == T_STRUCT && 
		   vstd_strcmp((char *)members[i].type->identifier, (char *)struct_type->identifier))
		{
			raise_semantic_error(f, "You can't put a struct as it's own member variable, use a pointer",
								 *members[i].identifier.token);
		}
		else if(type_is_invalid(members[i].type))
			raise_formated_semantic_error(f, *members[i].type->token, 
					"Type of member %s in struct %s is not declared",
					members[i].identifier.name, struct_node->structure.struct_id.name);
	}
	struct_type = fix_type(f, struct_type);
	update_type(f, *struct_type, struct_node->structure.struct_id.name);
}


u8 *
var_type_to_name(Type_Info *type, b32 bracket)
{	
	char *result = (char *)AllocatePermanentMemory(1024);
	if(type->identifier)
	{
		if(bracket)
			vstd_strcat(result, "[");
		vstd_strcat(result, (char *)type->identifier);
		if(bracket)
			vstd_strcat(result, "]");
		return (u8 *)result;
	}
	if(bracket)
		vstd_strcat(result, "[");

	if(is_type_primitive(type))
	{
		if(type->type == T_VOID)
			type->primitive.size = empty_void;
		switch (type->primitive.size)
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
			case byte128: vstd_strcat(result, "i128"); break;
			case real128: vstd_strcat(result, "r128"); break;
			case detect: vstd_strcat(result, "detect"); break;
			case empty_void: vstd_strcat(result, "void"); break;
			case logical_bit: vstd_strcat(result, "b32"); break;
			default:
			{
				if(type->type == T_UNTYPED_INTEGER)
					vstd_strcat(result, "untyped integer");
				else if(type->type == T_UNTYPED_FLOAT)
					vstd_strcat(result, "untyped float");
				else if(type->type == T_BOOLEAN)
					vstd_strcat(result, "boolean");
				else
					vstd_strcat(result, "unkown primitive type");
			} break;
		}
	}
	else if(type->type == T_FUNC)
	{
		size_t param_count = SDCount(type->func.param_types);
		vstd_strcat(result, "fn ");
		switch(type->func.calling_convention)
		{
			case CALL_APOC:
			{
				vstd_strcat(result, "apoc ");
			} break;
			case CALL_C_DECL:
			{
				vstd_strcat(result, "c_decl ");
			} break;
			default:
				Assert(false);
		}
		vstd_strcat(result, "(");
		for(size_t i = 0; i < param_count; ++i)
		{
			vstd_strcat(result, (char *)var_type_to_name(&type->func.param_types[i], false));
			if(i + 1 != param_count)
				vstd_strcat(result, ", ");
		}
		vstd_strcat(result, ")");
		if(type->func.return_type->type != T_VOID)
		{
			vstd_strcat(result, " -> ");
			vstd_strcat(result, (char *)var_type_to_name(type->func.return_type, false));
		}
	}
	else if(type->type == T_STRUCT)
	{
		if(!type->structure.name)
		{
			vstd_strcat(result, "anonymous struct");
		}
		else
			vstd_strcat(result, (const char *)type->structure.name);
	}
	else if(type->type == T_POINTER)
	{
		Type_Info *current = type;
		
		while(current->type == T_POINTER)
		{
			if(current->pointer.type->type != T_FUNC)
				vstd_strcat(result, "*");
			current = current->pointer.type;
		}
		if(current->type != T_FUNC)
			vstd_strcat(result, " ");
		vstd_strcat(result, (const char *)var_type_to_name(current, false));
	}
	else if(type->type == T_STRING)
	{
		vstd_strcat(result, "* u8");
	}
	else if(type->type == T_ARRAY)
	{
		vstd_strcat(result, "[");
		char num[256] = {};
		_vstd_U64ToStr(type->array.elem_count, num);
		vstd_strcat(result, num);
		vstd_strcat(result, "]");
		vstd_strcat(result, (const char *)var_type_to_name(type->array.type, false));
	}
	else
	{
		if(type->identifier)
			vstd_strcat(result, (char *)type->identifier);
		else
			vstd_strcat(result, " 'unkown' ");
	}
	
	if(bracket)
		vstd_strcat(result, "]");

	return (u8 *)result;
}

