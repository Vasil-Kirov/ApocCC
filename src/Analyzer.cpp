#include "llvm/IR/Type.h"
#include <Analyzer.h>
#include <Log.h>
#include <stdlib/std.h>
#include <Memory.h>
#include <Type.h>
#include <Errors.h>
#include <Interpret.h>
#include <vcruntime.h>

void
initialize_analyzer(File_Contents *f)
{
	Type_Info invalid = {.type = T_INVALID};
	shdefault(f->type_table, invalid);
	f->scopes = SDCreate(Scope_Info);
	f->scope_stack = stack_allocate(Scope_Info);
	f->to_add_next_scope = SDCreate(Symbol);
}

Type_Info
add_primitive_type(File_Contents *f, const char *name, Var_Size size)
{
	Type_Type type = T_INVALID;
	if(size < real32)
		type = T_INTEGER;
	else if(size < empty_void)
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
	type_info.structure = structure;
	type_info.identifier = structure->structure.struct_id.name;

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
		raise_semantic_error(f, "Redifinition of symbol", structure->structure.struct_id.token);
	}
	shput(f->type_table, structure->structure.struct_id.name, type_info);
}

Type_Info
get_type(File_Contents *f, u8 *name)
{
	Type_Info got = shget(f->type_table, name);
	got.identifier = name;
	return got;
}

void
push_scope(File_Contents *f, Scope_Info current_scope)
{
	current_scope.symbol_table = SDCreate(Symbol);
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
pop_scope(File_Contents *f, Token_Iden scope_tok)
{
	if(is_scope_stack_empty(f))
	{
		raise_semantic_error(f, "Found a closing scope with no matching openning one", scope_tok);
	}

	Scope_Info saved_scopes[4096] = {};
	size_t last_scope = 0;
	Scope_Info popped = stack_pop(f->scope_stack, Scope_Info);
	popped.end_line = scope_tok.line;
	Symbol *popped_table = popped.symbol_table;
	size_t symbol_table_size = SDCount(popped_table);
	while(!is_scope_stack_empty(f))
	{
		Scope_Info to_scan = stack_pop(f->scope_stack, Scope_Info);
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
					char *error = (char *)AllocateCompileMemory(2048);
					vstd_sprintf(error, "Redifinition of symbol %s", a.identifier);
					raise_semantic_error(f, error, b.token);
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
	Scope_Info stack_top = stack_peek(f->scope_stack, Scope_Info);
	Symbol *symbol_table = stack_top.symbol_table;
	size_t symbol_count = SDCount(symbol_table);
	u8 *identifier = symbol.identifier;
	for(size_t i = 0; i < symbol_count; ++i)
	{
		if(vstd_strcmp((char *)symbol_table[i].identifier, (char *)identifier))
		{
			raise_formated_semantic_error(f, symbol.token,
										  "Redifinition of symbol %s",
										  identifier);
		}
	}
	SDPush(symbol_table, symbol);
}

void
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
	analyze_file_level_statement_list(f, ast_tree);
	// @Check: maybe pop_scope()?
}
void
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
		verify_func(f, functions[i]);
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
		case type_func:
		{
			return node;
		} break;
		case type_assignment:
		{
			verify_assignment(f, node, true);
		} break;
		default:
		{
			LG_WARN("File level statement of type %s (id: %d) not analyzed",
					type_to_str(node->type), node->type);
		} break;
	}
	return NULL;
}

void
verify_enum(File_Contents *f, Ast_Node *node)
{
	Ast_Enum *enumerator = &node->enumerator;
	size_t member_count = SDCount(enumerator->members);
	Ast_Node *first_rhs = NULL;
	Ast_Node *last_rhs = NULL;
	Token_Iden first_token = {};
	Token_Iden last_token = {};
	size_t n = 0;
	for(size_t i = 0; i < member_count; ++i)
	{
		Ast_Assignment member = enumerator->members[i]->assignment;
		if(member.rhs)
		{
			if(!first_rhs)
			{
				first_rhs = member.rhs;
				first_token = member.token;
			}
			last_rhs = member.rhs;
			last_token = member.token;
			n = i + 1;
		}
	}
	
	Interp_Val d = {};
	d.type.type = T_INTEGER;
	d.type.primitive.size = byte8;
	d.ti64 = 1;
	Interp_Val first_val = {};
	first_val.type.type = T_INTEGER;
	first_val.type.primitive.size = byte8;
	first_val.ti64 = 0;
	if(first_rhs && first_rhs != last_rhs)
	{
		b32 failed = false;
		get_expression_type(f, first_rhs, first_token, NULL);
		get_expression_type(f, last_rhs, last_token, NULL);
		Interp_Val first = interpret_expression(first_rhs, &failed);
		Interp_Val last = interpret_expression(last_rhs, &failed);

		first_val = first;
		// @TODO: better error message token
		if(failed)
			raise_semantic_error(f, "Non constant expression used for enum member value",
					enumerator->token);
		if((!is_integer(first.type) && !is_float(first.type)) ||
				(!is_integer(last.type) && !is_float(last.type)))
			raise_semantic_error(f, "Enum contains a non primitive value",
					enumerator->token);
		
		Interp_Val top = {};
		Interp_Val bot = {};
		DO_U_OP(top, -, first);
		DO_OP(top, +, top, last);
		if(is_float(top.type))
		{
			bot.type.type = T_FLOAT;
			bot.type.primitive.size = real64;
			bot.tf64 = n - 1;
		}
		else if(is_integer(top.type))
		{
			bot.type.type = T_INTEGER;
			if(is_signed(top.type))
			{
				bot.type.primitive.size = byte8;
				bot.ti64 = n - 1;
			}
			else
			{
				bot.type.primitive.size = ubyte8;
				bot.tu64 = n - 1;
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
		memset(enumerator->members[i], 0, sizeof(Ast_Node));
		enumerator->members[i]->type = type_interp_val;
		enumerator->members[i]->interp_val.id = member.lhs->identifier;
		if(!member.rhs)
		{
			Interp_Val val = {};
			DO_RINT_OP(val, *, d, i);
			DO_OP(enumerator->members[i]->interp_val.val, +, first_val, val);
		}
		else
		{
			Type_Info mem_type = get_expression_type(f, member.rhs, member.token, NULL);
			if(is_untyped(enumerator->type))
				enumerator->type = mem_type;
			else if(!check_type_compatibility(enumerator->type, mem_type))
				raise_formated_semantic_error(f, member.token, 
						"Member %s in enum is of type %s which is incompatible with the rest of the enum "
						"is of type %s",
						member.lhs->identifier.name, var_type_to_name(mem_type),
						var_type_to_name(enumerator->type));
			b32 failed = false;
			enumerator->members[i]->interp_val.val = interpret_expression(member.rhs, &failed);
			if(failed)
				raise_formated_semantic_error(f, member.token, "Member number #%d in enum %s "
						"contains an incorrect constant expression",
						i + 1, node->enumerator.id.name);
		}
	}
	
	Type_Info *enum_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	memcpy(enum_type, &node->enumerator.type, sizeof(Type_Info));
	Type_Info sym_type = {};
	sym_type.type = T_ENUM;
	sym_type.token = node->enumerator.token;
	sym_type.enumerator.node = node;
	sym_type.enumerator.type = enum_type;

	Symbol enum_sym = {};
	enum_sym.tag        = S_ENUM;
	enum_sym.identifier = node->enumerator.id.name;
	enum_sym.node       = node;
	enum_sym.type       = sym_type;
	enum_sym.token      = node->enumerator.token;
	add_symbol(f, enum_sym);
}

void
verify_func(File_Contents *f, Ast_Node *node)
{
	Assert(node->function.type.identifier);
	Token_Iden type_error_token = node->function.type.token;
	node->function.type = fix_type(f, node->function.type);
	size_t arg_count = SDCount(node->function.arguments);
	b32 has_body = node->function.body != NULL;
	
	if(node->function.type.type == T_ARRAY && !node->function.is_interpret_only)
	{
		raise_formated_semantic_error(f, type_error_token,
				"Function [ %s ] returns an array which is illegal.\n\t"
				"This function can only be executed at compile time using $run\n\t"
				"and as such should be marked with $interp", node->function.identifier.name);
	}
	
	for (size_t i = 0; i < arg_count; i++)
	{
		Ast_Variable arg = node->function.arguments[i]->variable;
		if(has_body)
		{
			// @NOTE: add argument to symbol table
			Symbol arg_symbol = {S_FUNC_ARG};
		
			arg_symbol.token = node->function.identifier.token;
			arg_symbol.node = node->function.arguments[i];
		
			if(arg.type.type == T_DETECT)
			{
				node->function.has_var_args = true;
				arg_symbol.identifier = (u8 *)"...";
			}
			else
			{
				arg_symbol.identifier = arg.identifier.name;
				arg_symbol.type = fix_type(f, arg.type);	
				arg_symbol.node->variable.type = arg_symbol.type;
				if(has_body)
					SDPush(f->to_add_next_scope, arg_symbol);
			}
		}
		else if(arg.type.type != T_DETECT)
		{
			node->function.arguments[i]->variable.type = fix_type(f, arg.type);
		}
		if(arg.type.type == T_DETECT &&
		   i != arg_count - 1)
		{
			raise_semantic_error(f,"Variable length declarator must " 
								 "be last in the function signature", 
								 node->function.identifier.token);
		}
	}
	
	if(node->function.type.type == T_INVALID)
	{
		char error_msg[1024] = {};
		vstd_sprintf(error_msg, "Undeclared type [%s]", node->function.type.identifier);
		raise_semantic_error(f, error_msg, type_error_token);
	}
	
	if(has_body)
	{
		verify_func_level_statement_list(f, node->function.body, node);
	}	
}

void
verify_func_level_statement(File_Contents *f, Ast_Node *node, Ast_Node *func_node, 
		Ast_Node *current_list, size_t *idx)
{
	if(node == NULL) return;
	switch(node->type)
	{
		case type_for:
		{
			Token_Iden scope_tok = node->for_loop.token;
			Scope_Info new_scope = {};
			new_scope.file = scope_tok.file;
			new_scope.start_line = scope_tok.line;
			push_scope(f, new_scope);
			if(node->for_loop.expr1)
			{
				verify_assignment(f, node->for_loop.expr1, false);
			}
			if(node->for_loop.expr3)
			{
				get_expression_type(f, node->for_loop.expr3, node->for_loop.token, NULL);
			}
			Type_Info expression = get_expression_type(f, node->for_loop.expr2, node->for_loop.token, NULL);
			if (expression.type != T_BOOLEAN)
			{
				raise_formated_semantic_error(f, node->for_loop.token, "Expression type %s cannot automatically be converted to a boolean", var_type_to_name(expression));
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
			Ast_Variable var = node->variable;
			Symbol var_sym = {};
			var_sym.identifier = var.identifier.name;
			var_sym.type = var.type;
			var_sym.node = node;
			var_sym.token = var.identifier.token;
			var_sym.tag = S_VARIABLE;
			add_symbol(f, var_sym);
		}break;
		case type_if:
		{
			Token_Iden scope_tok = node->for_loop.token;
			Scope_Info new_scope = {};
			new_scope.file = scope_tok.file;
			new_scope.start_line = scope_tok.line;
			push_scope(f, new_scope);

			Type_Info if_type = get_expression_type(f, node->condition.expr, 
					node->condition.token, NULL);
			if(if_type.type != T_BOOLEAN)
			{
				raise_formated_semantic_error(f, node->condition.token,
						"Expression type %s cannot automatically be converted to a boolean",
						var_type_to_name(if_type));
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
		case type_else:
		{
			if(current_list->statements.list[*idx - 2]->type != type_if)
			{
				raise_semantic_error(f, "else statement doesn't have a matching if",
						node->condition.token);
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
					if(func_node->function.type.type == T_VOID)
					{
						Ast_Node *ret_node = alloc_node();
						ret_node->type = type_return;
						ret_node->ret.expression = NULL;
						ret_node->ret.func_type.type = T_VOID;
						Ast_Node *to_replace = func_node->function.body->scope_desc.body;
						size_t i = 0;
						for(; to_replace->statements.list[i]->type != type_scope_end;
								++i) {}

						to_replace->statements.list[i] = ret_node;
						SDPush(to_replace->statements.list, node);
					}
					else
						raise_semantic_error(f, "Not all paths lead to a return statement", node->scope_desc.token);
				}
			}
			stack_push(f->scope_stack, this_scope);
			pop_scope(f, token);
			return;
		} break;
		case type_scope_start:
		{
			Token_Iden scope_tok = node->scope_desc.token;

			Scope_Info new_scope = {};
			new_scope.file = scope_tok.file;
			new_scope.start_line = scope_tok.line;
			push_scope(f, new_scope);
			verify_func_level_statement_list(f, node->scope_desc.body, func_node);
		} break;
		case type_return:
		{
			Type_Info return_type = get_expression_type(f, node->ret.expression, node->ret.token, NULL);
			node->ret.expression_type = return_type;
			node->ret.func_type = func_node->function.type;

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
				raise_semantic_error(f, error, node->ret.token);
			}
			Scope_Info scope = stack_pop(f->scope_stack, Scope_Info);
			scope.has_return = true;
			stack_push(f->scope_stack, scope);

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
		Token_Iden scope_tok = list_node->scope_desc.token;

		Scope_Info new_scope = {};
		new_scope.file = scope_tok.file;
		new_scope.start_line = scope_tok.line;
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
	if(node->type != type_assignment)
	{
		LG_FATAL("Compiler bug in file %s at line %d, expected node type_assignment, got %s (id: %d)",
				 __FILE__, __LINE__, type_to_str(node->type), node->type);
	}

	if(node->assignment.is_declaration && node->assignment.decl_type.type != T_DETECT)
	{
		node->assignment.decl_type = fix_type(f, node->assignment.decl_type);
		if(node->assignment.decl_type.type == T_INVALID)
			raise_formated_semantic_error(f, node->assignment.token, 
					"Type %s, used in declaration, is undefined", var_type_to_name(node->assignment.decl_type));
	}

	if(node->assignment.assign_type != '=')
	{
		node->assignment.rhs = get_assign_type_expression(f, node);
	}
	if(node->assignment.is_declaration && node->assignment.rhs == NULL)
	{
		node->assignment.decl_type = fix_type(f, node->assignment.decl_type);
		if(node->assignment.decl_type.type == T_DETECT)
		{
			raise_semantic_error(f, "cannot automatically assign type without an expression", node->assignment.token);
		}
	}
	else
	{
		Type_Info expression_type = get_expression_type(f, node->assignment.rhs,
														node->assignment.token, NULL);
		if(!node->assignment.is_declaration)
		{
			// node->assignment.decl_type = get_symbol_spot(f, node->assignment.token)->type;
			node->assignment.decl_type = get_expression_type(f, node->assignment.lhs, node->assignment.token, NULL);
			node->assignment.is_const = node->assignment.decl_type.is_const;
		}
		if(type_is_invalid(expression_type))
		{
			raise_semantic_error(f, "Invalid expression", node->assignment.token);
		}


		if(node->assignment.decl_type.type == T_DETECT)
		{
			if(is_untyped(expression_type))
			{
				expression_type = untyped_to_type(expression_type);
				expression_type.identifier = (u8 *)"i64";
			}
			else if(expression_type.type == T_ARRAY)
			{
				if(is_untyped(*expression_type.array.type))
				{
					Type_Info elem_type = untyped_to_type(*expression_type.array.type);
					memcpy(expression_type.array.type, &elem_type, sizeof(Type_Info));
				}
			}
			node->assignment.decl_type = expression_type;
		}
		else if(!check_type_compatibility(node->assignment.decl_type, expression_type))
		{
			char *error = (char *)AllocateCompileMemory(2048);
			vstd_sprintf(error, "Tried to assign %s to variable of type %s",
						var_type_to_name(expression_type),
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
		Symbol this_sym = {};
		this_sym.token = node->assignment.token;
		this_sym.node = node;
		this_sym.identifier = node->assignment.token.identifier;
		this_sym.type = node->assignment.decl_type;
		this_sym.type.is_const = node->assignment.is_const;
		if(is_global)
			this_sym.tag = S_GLOBAL_VAR;
		else
			this_sym.tag = S_VARIABLE;
		add_symbol(f, this_sym);
	


		if(node->assignment.decl_type.type == T_ARRAY)
		{
			auto count_expr = node->assignment.decl_type.array.optional_expression;
			auto elem_count = node->assignment.decl_type.array.elem_count;
			auto type_token = node->assignment.decl_type.token;
			if(count_expr)
			{
				Type_Info array_size_type = get_expression_type(f, count_expr, type_token, NULL);
				if(!is_integer(array_size_type))
				{
					raise_semantic_error(f, "Expected an integer expression", type_token);
				}
			}
			b32 failed = false;
			
			Interp_Val count_val = {};
			if(count_expr)
				count_val = interpret_expression(count_expr, &failed);
			else
			{
				count_val.type.type = T_UNTYPED_INTEGER;
				count_val.tu64 = elem_count;
			}
			Assert(is_integer(count_val.type));
			if(failed)
			{
				raise_semantic_error(f, "Expected a constant expression", type_token);
			}
			if(is_signed(count_val.type))
			{
				if(count_val.ti64 < 0)
					raise_semantic_error(f, "Expression must evaluate to a value higher than 0",
							type_token);
				node->assignment.decl_type.array.elem_count = count_val.ti64;
			}
			else
			{
				node->assignment.decl_type.array.elem_count = count_val.tu64;
			}

			// @TODO: this is a hack
			Ast_Node *arr_expr = node->assignment.rhs;
			while(arr_expr)
			{
				if(arr_expr->type == type_array_list)
					arr_expr->array_list.type = node->assignment.decl_type;
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
	if(type.type == T_UNTYPED_INTEGER)
		return (Type_Info){.type = T_INTEGER, .primitive.size = byte8};
	if(type.type == T_UNTYPED_FLOAT)
		return (Type_Info){.type = T_FLOAT, .primitive.size = real64};
	Assert(false);
	return (Type_Info){};
}

Type_Info
get_binary_expr_type(File_Contents *f, Ast_Node *expr, Type_Info left, Type_Info right)
{
	Assert(expr->type == type_binary_expr);
	if(!check_type_compatibility(left, right))
	{
		char *error = (char *)AllocateCompileMemory(4096);
		vstd_sprintf(error, "Types %s and %s are incompatible", var_type_to_name(left), var_type_to_name(right));
		raise_semantic_error(f, error, expr->binary_expr.token);
	}
	switch(expr->binary_expr.op)
	{
		case tok_logical_or:	 // ||
		case tok_logical_is:	 // ==
		case tok_logical_isnot: // !=
		case tok_logical_and:	 // &&
		case tok_logical_lequal:
		case tok_logical_gequal:
		case tok_logical_greater:
		case tok_logical_lesser:
		{
			return (Type_Info){.type = T_BOOLEAN, .primitive.size = logical_bit};
		} break;
		default:
		{
			return left;
		} break;
	
	}
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
		op == tok_bits_or ||
		op == tok_bits_xor ||
		op == tok_bits_not ||
		op == tok_bits_and;
}

Type_Info
verify_array_list(File_Contents *f, Ast_Node *node)
{
	Assert(node->type == type_array_list);
	size_t list_count = SDCount(node->array_list.list);
	Type_Info expr_types[list_count];
	memset(expr_types, 0, sizeof(Type_Info) * list_count);
	Ast_Array_List list = node->array_list;
	for(size_t i = 0; i < list_count; ++i)
	{
		expr_types[i] = get_expression_type(f, list.list[i], list.token, NULL);
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
						i, var_type_to_name(expr_types[i]),
						j, var_type_to_name(expr_types[j]));
			}
		}
	}

	// @NOTE: idk lol
	return expr_types[0];
}

Type_Info
verify_selector(File_Contents *f, Ast_Node *expression)
{
	Type_Info operand_type = fix_type(f, get_expression_type(f, expression->selector.operand, expression->selector.dot_token, NULL));
	expression->selector.operand_type = operand_type;
	if(!is_accessible(operand_type))
	{
		raise_formated_semantic_error(f, expression->selector.dot_token,
				"Expression of type %s is not selectable", var_type_to_name(operand_type));
	}

	while(operand_type.type == T_POINTER)
		operand_type = *operand_type.pointer.type;
	
	if(is_or_is_pointing_to(operand_type, T_STRUCT))
	{
		Ast_Struct structure = operand_type.structure->structure;
		u8 *name = expression->selector.identifier->identifier.name;
		for(size_t i = 0; i < structure.member_count; ++i)
		{
			if(vstd_strcmp((char *)name, (char *)structure.members[i].identifier.name))
			{
				expression->selector.selected_type = structure.members[i].type;
				expression->selector.selected_index = i;
				return structure.members[i].type;
			}
		}
		raise_formated_semantic_error(f, expression->selector.dot_token,
				"Accessed member [ %s ] of structure [ %s ] doesn't exist",
				name, structure.struct_id.name);
	}
	else if(operand_type.type == T_ENUM)
	{
		Ast_Enum enumerator = operand_type.enumerator.node->enumerator;
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
	}
	else
		Assert(false);
	return (Type_Info){};
}

Type_Info
get_atom_expression_type(File_Contents *f, Ast_Node *expression, Ast_Node *previous)
{
	switch ((int)expression->type)
	{
		case type_identifier:
		{
			Symbol *symbol = get_symbol_spot(f, expression->identifier.token);
			if(symbol->tag == S_STRUCT_MEMBER || symbol->tag == S_FUNCTION)
			{
				raise_formated_semantic_error(f, expression->identifier.token,
						"Unkown identifier %s",
						expression->identifier.name);
			}
			return symbol->type;
		} break;
		case type_run:
		{
			b32 failed = false;

			// @NOTE: verify expression
			Type_Info result = get_expression_type(f, expression->run.to_run, expression->run.token, expression);
			expression->run.ran_val = interpret_expression(expression->run.to_run, &failed);
			if(failed)
			{
				raise_semantic_error(f, "Expression cannot be run at compile time",
						expression->run.token);
			}
			return result;
		} break;
		case type_struct_init:
		{
			return verify_struct_init(f, expression);
		} break;
		case type_index:
		{
			Type_Info operand_type = fix_type(f, get_expression_type(f,
						expression->index.operand, expression->index.token, NULL));
			expression->index.operand_type = operand_type;
			if(operand_type.type != T_ARRAY && operand_type.type != T_POINTER)
			{
				raise_semantic_error(f, "Indexing of non-indexable type", expression->index.token);
			}
			Type_Info index_type = fix_type(f, get_expression_type(f,
						expression->index.expression, expression->index.token, NULL));
			if(!is_integer(index_type))
			{
				raise_semantic_error(f, "Non integer used for indexing", expression->index.token);
			}
			if(operand_type.type == T_ARRAY)
			{
				expression->index.idx_type = *operand_type.array.type;
				return *operand_type.array.type;
			}
			else
			{
				expression->index.idx_type = *operand_type.pointer.type;
				return  *operand_type.pointer.type;
			}
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
			Type_Info expr_type = fix_type(f, get_expression_type(f, expression->postfix.operand, expression->postfix.token, NULL));

			if (!is_integer(expr_type) && !is_float(expr_type) && expr_type.type != T_POINTER)
			{
				raise_formated_semantic_error(f, expression->postfix.token,
						"Cannot apply postfix operator to expression of type %s",
						var_type_to_name(expr_type));
			}
			return expr_type;
		} break;
		case type_literal:
		{
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
			Type_Info result = {};
			result.type = T_ARRAY;
			result.token = expression->array_list.token;
			result.array.elem_count = SDCount(expression->array_list.list);
			result.array.type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			result.identifier = (u8 *)"array_list";
			Type_Info array_type = verify_array_list(f, expression);
			memcpy(result.array.type, &array_type, sizeof(Type_Info));
			expression->array_list.type = result;
			return result;
		}
	}
	return (Type_Info){.type = T_INVALID};
}

Type_Info
get_unary_expression_type(File_Contents *f, Ast_Node *expression, Ast_Node *previous)
{
	if(expression->type == type_unary_expr)
	{
		Ast_Unary_Expr unary_expr = expression->unary_expr;
		Type_Info expr_type = get_expression_type(f, unary_expr.expression, unary_expr.op, NULL);
		expression->unary_expr.expr_type = expr_type;
		const char *postfix_name = "++";
		switch((int)unary_expr.op.type)
		{
			case tok_bits_xor:
			case tok_bits_and:
			case tok_bits_not:
			{
				if(!is_integer(expr_type))
				{
					raise_formated_semantic_error(f, unary_expr.op,
							"Cannot use bitwise operator %c on expression of type %s",
							unary_expr.op.type, var_type_to_name(expr_type));
				}
				return expr_type;
			} break;
			case '@':
			{
				if(unary_expr.expression->type != type_identifier)
				{
					raise_semantic_error(f, "@ of opperand needs to be used on an identifier", 
							unary_expr.op);
				}
				Type_Info *expr_ptr = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
				memcpy(expr_ptr, &expr_type, sizeof(Type_Info));
				Type_Info result_type = {
					.type = T_POINTER,
					.pointer.type = expr_ptr,
				};
				return result_type;
			} break;
			case '*':
			{
				if(expr_type.type != T_POINTER)
				{
					raise_semantic_error(f, "Cannot derefrence something that isn't a pointer", unary_expr.op);
				}
				return *expr_type.pointer.type;
			} break;
			case tok_not:
			{
				if(expr_type.type != T_BOOLEAN)
				{
					raise_semantic_error(f, "Cannot use ! operator on a non boolean expression", unary_expr.op);
				}
				return expr_type;
			} break;
			case tok_minus:
			{
				if(!is_integer(expr_type) && !is_float(expr_type))
				{
					raise_formated_semantic_error(f, unary_expr.op, "Cannot use - operator on an %s", 
							var_type_to_name(expr_type));
				}
				if(expr_type.primitive.size >= ubyte1 && expr_type.primitive.size <= ubyte8)
				{
					raise_semantic_error(f, "Cannot use - operator on an unsigned integer", unary_expr.op);
				}
				return expr_type;
			} break;
			case tok_minusminus:
			postfix_name = "--";
			case tok_plusplus:
			{
				if(!is_integer(expr_type) && !is_float(expr_type) && expr_type.type != T_POINTER)
				{
					raise_formated_semantic_error(f, unary_expr.op,
							"Cannot apply %s operator to expression of type %s",
							postfix_name, var_type_to_name(expr_type));
				}
				return expr_type;
			} break;
			default:
			{
				raise_semantic_error(f, "Unexpected unary exprsesion", unary_expr.op);

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
			op_type = get_type(f, expression->size.operand->identifier.name);
		}
		if(op_type.type == T_INVALID)
			op_type = get_expression_type(f, expression->size.operand,
					expression->size.token, previous);

		expression->size.operand_type = op_type;
		Type_Info size_type = {T_UNTYPED_INTEGER};
		return size_type;
	}
	else if(expression->type == type_cast)
	{
		Type_Info cast_type = fix_type(f, expression->cast.type);
		if(cast_type.type == T_INVALID)
		{
			raise_formated_semantic_error(f, expression->cast.token,
					"Cast type %s is undefined", var_type_to_name(cast_type));
		}
		Type_Info casted = get_expression_type(f, expression->cast.expression, expression->cast.token, NULL);
		expression->cast.expr_type = casted;
		if(!is_castable(casted, cast_type))
		{
			raise_formated_semantic_error(f, expression->cast.token, "Cannot cast type %s to %s",
					var_type_to_name(casted), var_type_to_name(cast_type));
		}
		return cast_type;
	}
	else
		return get_atom_expression_type(f, expression, previous);
}

void
check_types_error(File_Contents *f, Token_Iden token, Type_Info a, Type_Info b)
{
	if(!check_type_compatibility(a, b))
	{
		raise_formated_semantic_error(f, token, "Types %s and %s are incompatible", 
				var_type_to_name(a), var_type_to_name(b));
	}
}

Type_Info
get_expression_type(File_Contents *f, Ast_Node *expression, Token_Iden desc_token, Ast_Node *previous)
{
	if(expression == NULL)
		return (Type_Info){.type = T_INVALID};

	if(expression->type != type_binary_expr)	
		return fix_type(f, get_unary_expression_type(f, expression, previous));

	Type_Info left = get_expression_type(f, expression->left,  expression->binary_expr.token, expression);
	Type_Info right = get_expression_type(f, expression->right, expression->binary_expr.token, expression);

	if(type_is_invalid(left) || type_is_invalid(right))
		raise_semantic_error(f, "invalid type in expression", desc_token);

	check_types_error(f, desc_token, left, right);
	if(!are_op_compatible(left, right))
	{
		raise_formated_semantic_error(f, expression->binary_expr.token,
				"Cannot perform a binary operation with types %s and %s",
				var_type_to_name(left), var_type_to_name(right));
	}
	expression->binary_expr.left = left;
	expression->binary_expr.right = right;

	if(is_bits_op(expression->binary_expr.op))
	{
		if(is_float(left) || is_float(right))
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

	return fix_type(f, left);
}

Type_Info
verify_func_call(File_Contents *f, Ast_Node *func_call, Token_Iden expr_token, Ast_Node *previous)
{
	// @TODO: function pointers
	if (func_call->func_call.operand->type != type_identifier)
	{
		raise_semantic_error(f, "Function caller is not an identifier",
				func_call->func_call.token);
	}
	Symbol *func_sym = get_symbol_spot(f, func_call->func_call.operand->identifier.token);

	if(func_sym->node->function.is_interpret_only && (!previous || previous->type != type_run))
	{
		raise_formated_semantic_error(f,
				expr_token,
				"You're trying to call fucntion [ %s ] which is marked as interpret only,\n\t"
				"that function can only be run at compile time using $run", func_sym->node->function.identifier.name);
	}
	Ast_Node **func_args = func_sym->node->function.arguments;
	Ast_Node **passed_expr = func_call->func_call.arguments;
	size_t expr_count = SDCount(passed_expr);
	size_t args_count = SDCount(func_args);
	func_call->func_call.expr_types = SDCreate(Type_Info);
	func_call->func_call.arg_types = SDCreate(Type_Info);
	if(args_count != expr_count)
	{
		if(func_sym->node->function.has_var_args && (args_count == expr_count + 1 || expr_count > args_count))
		{}
		else
		{
			char *error = (char *)AllocateCompileMemory(2048);
			vstd_sprintf(error, "Incorrect number of arguments, passed %d, function required %d", expr_count, args_count);
			raise_semantic_error(f, error, func_call->func_call.token);
		}
	}	

	b32 found_var_args = false;
	size_t j = 0;
	for(size_t i = 0; i < expr_count; ++i)
	{
		Type_Info expr_type = fix_type(f, get_expression_type(f, passed_expr[i], expr_token, NULL));
		Type_Info arg_type = fix_type(f, func_args[j]->variable.type);
		
		SDPush(func_call->func_call.expr_types, expr_type);
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
						 var_type_to_name(expr_type),
						 j + 1,
						 var_type_to_name(arg_type));
			raise_semantic_error(f, error, func_call->func_call.token);
		}
		if(!found_var_args)
			j++;
	}
	return func_sym->type;
}

Type_Info
verify_struct_init(File_Contents *f, Ast_Node *struct_init)
{
	if(struct_init->struct_init.operand->type != type_identifier)
	{
		raise_semantic_error(f, "expected struct identifier", 
							 struct_init->struct_init.token);
	}
	Token_Iden error_token = struct_init->struct_init.token;	
	u8 *struct_id = struct_init->struct_init.operand->identifier.name;
	Ast_Node **expressions = struct_init->struct_init.expressions;
	Type_Info struct_type = get_type(f, struct_id);

	struct_init->struct_init.type = struct_type;
	
	if(struct_type.type != T_STRUCT)
	{
		raise_semantic_error(f,"Incorrect identifier used for struct initialization", 
							 error_token);
	}
	Ast_Variable *members = struct_type.structure->structure.members;
	int member_count = struct_type.structure->structure.member_count;
	
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
		Token_Iden zero_tok = error_token;
		zero_tok.identifier = (u8 *)"0";
		for(size_t i = 0; i < member_count; ++i)
		{
			Ast_Node *result = alloc_node();
			result->type = type_literal;
			result->atom.identifier = pure_identifier(zero_tok);
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
		
		for(size_t i = 0; i < SDCount(expressions); ++i)
		{
			members[i].type = fix_type(f, members[i].type);
			Type_Info expr_type = get_expression_type(f, expressions[i], error_token,
													  NULL);
			Type_Info member_type = members[i].type;
			SDPush(struct_init->struct_init.expr_types, expr_type);
			if(!check_type_compatibility(member_type, expr_type))
			{
				char *error = (char *)AllocateCompileMemory(2048);
				vstd_sprintf(error, "Expression #%d in struct initialization is of type %s,"
							 "\n\tmember #%d is of incompatible type %s. Try using a cast '#'",
							 i + 1,
							 var_type_to_name(expr_type),
							 i + 1,
							 var_type_to_name(member_type),
							 var_type_to_name(member_type));
				raise_semantic_error(f, error, error_token);
			}
		}
		for(size_t i = SDCount(expressions); i < member_count; ++i)
		{
			Token_Iden zero_tok = error_token;
			Type_Info untyped_int = {T_UNTYPED_INTEGER};
			zero_tok.identifier = (u8 *)"0";
			for(size_t i = 0; i < member_count; ++i)
			{
				Ast_Node *result = alloc_node();
				result->type = type_literal;
				result->atom.identifier = pure_identifier(zero_tok);
				SDPush(struct_init->struct_init.expressions, result);
				SDPush(struct_init->struct_init.expr_types, untyped_int);
			}
		}
	}
	return struct_type;
}

Symbol *
get_symbol_spot(File_Contents *f, Token_Iden token)
{
	Symbol *result = NULL;
	u8 *identifier = token.identifier;


	Scope_Info saved_scopes[4096] = {};
	size_t last_scope = 0;

	while(!is_stack_empty(f->scope_stack))
	{
		Scope_Info to_scan = stack_pop(f->scope_stack, Scope_Info);
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
		stack_push(f->scope_stack, saved_scopes[i]);
	}

	// NOTE(Vasko): Loops to check for function definitions
	if(result == NULL)
	{
		size_t scan_size = SDCount(f->scopes);
		for(size_t i = 0; i < scan_size; ++i)
		{
			Scope_Info scope = f->scopes[i];
			size_t table_size = SDCount(scope.symbol_table);
			for(size_t j = 0; j < table_size; ++j)
			{
				if(vstd_strcmp((char *)(scope.symbol_table[j].identifier), (char *)identifier))
				{
					result = &scope.symbol_table[j];
					if(result->tag != S_FUNCTION && result->tag != S_GLOBAL_VAR)
					{
						result = NULL;
					}
					goto EXIT_FUNC_SEARCH;
				}
			}	
		}
	}
	EXIT_FUNC_SEARCH:

	if(result == NULL)
	{
		char *error = (char *)AllocateCompileMemory(1024 * 1024);
		memset(error, 0, 1024 * 1024);
		vstd_sprintf(error, "Use of undeclared symbol \"%s\"", identifier);
		raise_semantic_error(f, error, token);
	}

	return result;
}



// TODO: operator overloading
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
check_type_compatibility(Type_Info a, Type_Info b)
{
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
	if(a.type != b.type)
		return false;
	if(a.type == T_POINTER)
		return check_type_compatibility(*a.pointer.type, *b.pointer.type);
	if(a.type == T_BOOLEAN && b.type == T_BOOLEAN)
		return true;
	if(!vstd_strcmp((char *)a.identifier, (char *)b.identifier))
		return false;
	
	return true;
}

void
verify_struct(File_Contents *f, Ast_Node *struct_node)
{
	Ast_Variable *members = struct_node->structure.members;
	int member_count = struct_node->structure.member_count;

	Type_Info struct_type = get_type(f, struct_node->structure.struct_id.name);
	for(size_t i = 0; i < member_count; ++i)
	{
		members[i].type = fix_type(f, members[i].type);
		if(struct_type.type == T_STRUCT && members[i].type.type == T_STRUCT && 
		   vstd_strcmp((char *)members[i].type.identifier, (char *)struct_type.identifier))
		{
			raise_semantic_error(f, "You can't put a struct as it's own member variable, use a pointer",
								 members[i].identifier.token);
		}
		else if(members[i].type.type == T_INVALID)
			raise_formated_semantic_error(f, members[i].type.token, 
					"Type of member %s in struct %s is not declared",
					members[i].identifier.name, struct_node->structure.struct_id.name);
	}
}


u8 *
var_type_to_name(Type_Info type)
{	
	char *result = (char *)AllocatePermanentMemory(1024);
	if(type.identifier)
	{
		vstd_strcat(result, "[");
		vstd_strcat(result, (char *)type.identifier);
		vstd_strcat(result, "]");
		return (u8 *)result;
	}
	vstd_strcat(result, "[");
	if(is_type_primitive(type))
	{
		if(type.type == T_VOID)
			type.primitive.size = empty_void;
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
			case empty_void: vstd_strcat(result, "void"); break;
			case logical_bit: vstd_strcat(result, "b32"); break;
			default:
			{
				if(type.type == T_UNTYPED_INTEGER)
					vstd_strcat(result, "untyped integer");
				else if(type.type == T_UNTYPED_FLOAT)
					vstd_strcat(result, "untyped float");
				else if(type.type == T_BOOLEAN)
					vstd_strcat(result, "boolean");
				else
					vstd_strcat(result, "unkown primitive type");
			} break;
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
		
		char *edited_copy = (char *)AllocatePermanentMemory(4096);
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
		if(type.identifier)
			vstd_strcat(result, (char *)type.identifier);
		else
			vstd_strcat(result, " 'unkown' ");
	}
	
	vstd_strcat(result, "]");
	return (u8 *)result;
}
