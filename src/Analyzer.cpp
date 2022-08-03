#include <Analyzer.h>
#include <Log.h>
#include <stdlib/std.h>
#include <Memory.h>
#include <Type.h>
#include <Errors.h>

void
initialize_analyzer(File_Contents *f)
{
	Type_Info invalid = {.type = T_INVALID};
	shdefault(f->type_table, invalid);
	f->scopes = SDCreate(Scope_Info);
	f->scope_stack = stack_allocate(Scope_Info);
}

void
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
	
	Type_Info type_info = {
		.type = type,
		.primitive.size = size,
	};

	if(shgeti(f->type_table, name) == -1)
	{
		shput(f->type_table, name, type_info);
	}
}

void
add_type(File_Contents *f, Ast_Node *structure)
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
		add_symbol(f, member_symbol);
		
	}
	
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
	Scope_Info stack_top = stack_peek(f->scope_stack, Scope_Info);
	Symbol *symbol_table = stack_top.symbol_table;
	SDPush(symbol_table, symbol);
}

void
raise_formated_semantic_error(File_Contents *f, Token_Iden token, const char *format, ...)
{
	char *error = (char *)AllocateCompileMemory(4096);
	va_list args;
	va_start(args, format);
	vstd_vsnsprintf(error, strlen(format), format, args);
	va_end(args);
	raise_semantic_error(f, error, token);
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
	analyze_file_level_statement(f, ast_tree);
	// @Check: maybe pop_scope()?
}

void
analyze_file_level_statement(File_Contents *f, Ast_Node *node)
{
	if(node == NULL) return;
	switch(node->type)
	{
		case type_struct:
		{
			verify_struct(f, node);
			analyze_file_level_statement(f, node->left);
		}break;
		case type_func:
		{
			verify_func(f, node);
			Ast_Node *next_node = NULL;
			if(node->left->type == type_scope_start)
				next_node = node->left->left;
			else
				next_node = node->left;
			analyze_file_level_statement(f, next_node);
		}break;
		default:
		{
			LG_WARN("File level statement of type %s (id: %d) not analyzed",
					type_to_str(node->type), node->type);
			if(node->left != NULL)
				analyze_file_level_statement(f, node->left);
		}
	}
	return;
}

void
verify_func(File_Contents *f, Ast_Node *node)
{
	Assert(node->function.type.identifier);
	Token_Iden type_error_token = node->function.type.token;
	node->function.type = get_type(f, node->function.type.identifier);
	size_t arg_count = SDCount(node->function.arguments);
	for (size_t i = 0; i < arg_count; i++)
	{
		if(node->function.arguments[i]->variable.type.type == T_DETECT && i != arg_count - 1)
			raise_semantic_error(f, "Variable length arguments must be last in the function signature", node->function.identifier.token);
	}
	
	if(node->function.type.type == T_INVALID)
	{
		char error_msg[1024] = {};
		vstd_sprintf(error_msg, "Undeclared type [%s]", node->function.type.identifier);
		raise_semantic_error(f, error_msg, type_error_token);
	}
	
	if(node->left->type == type_scope_start)
	{
		Token_Iden scope_tok = node->left->scope_desc.token;
		Scope_Info new_scope = {};
		new_scope.file = scope_tok.file;
		new_scope.start_line = scope_tok.line;
		push_scope(f, new_scope);
		
		verify_func_level_statement(f, node->left->right, node);
	}	
}

void
verify_func_level_statement(File_Contents *f, Ast_Node *node, Ast_Node *func_node)
{
	if(node == NULL) return;
	switch(node->type)
	{
		case type_for:
		{
			if(node->for_loop.type == F_STANDARD)
			{
				Type_Info expression = get_expression_type(f, node->for_loop.expr2, node->for_loop.token, NULL);
				if(expression.type != T_BOOLEAN)
				{
					raise_formated_semantic_error(f, node->for_loop.token, "Expression type %s cannot automatically be converted to a boolean", var_type_to_name(expression));
				}
			}
			else
			{
				Type_Info expression = get_expression_type(f, node->for_loop.expr1, node->for_loop.token, NULL);
				if(expression.type != T_BOOLEAN)
				{
					raise_formated_semantic_error(f, node->for_loop.token, "Expression type %s cannot automatically be converted to a boolean", var_type_to_name(expression));
				}
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
			Type_Info if_type = get_expression_type(f, node->condition, node->left->scope_desc.token, NULL);
			if(if_type.type != T_BOOLEAN)
			{
				raise_formated_semantic_error(f, node->left->scope_desc.token, "Expression type %s cannot automatically be converted to a boolean", var_type_to_name(if_type));
			}
		} break;
		case type_assignment:
		{
			verify_assignment(f, node);
		} break;
		case type_func_call:
		{
			// @TODO: implement
			verify_func_call(f, node, node->func_call.token);
		} break;
		case type_scope_end:
		{
			Scope_Info this_scope = stack_pop(f->scope_stack, Scope_Info);
			if(f->scope_stack.top == 0)
			{
				if(!this_scope.has_return)
				{
					raise_semantic_error(f, "Not all paths lead to a return statement", node->scope_desc.token);
				}
			}
			stack_push(f->scope_stack, this_scope);
			pop_scope(f, node->scope_desc.token);
			return;
		} break;
		case type_scope_start:
		{
			Token_Iden scope_tok = node->scope_desc.token;

			Scope_Info new_scope = {};
			new_scope.file = scope_tok.file;
			new_scope.start_line = scope_tok.line;
			push_scope(f, new_scope);
			verify_func_level_statement(f, node->right, func_node);
		} break;
		case type_return:
		{
			Type_Info return_type = get_expression_type(f, node->right, node->holder.token, NULL);
		
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
				raise_semantic_error(f, error, node->holder.token);
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
	verify_func_level_statement(f, node->left, func_node);
}


void
verify_assignment(File_Contents *f, Ast_Node *node)
{
	if(node->type != type_assignment)
	{
		LG_FATAL("Compiler bug in file %s at line %d, expected node type_assignment, got %s (id: %d)",
				 __FILE__, __LINE__, type_to_str(node->type), node->type);
	}
	Type_Info expression_type = get_expression_type(f, node->assignment.rhs,
													node->assignment.token, NULL);
	if(!node->assignment.is_declaration)
	{
		node->assignment.decl_type = get_symbol_spot(f, node->assignment.token)->type;
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
	
	if(node->assignment.is_declaration)
	{
		Symbol this_sym = {};
		this_sym.token = node->assignment.token;
		this_sym.node = node;
		this_sym.identifier = node->assignment.token.identifier;
		this_sym.type = node->assignment.decl_type;
		this_sym.tag = S_VARIABLE;
		add_symbol(f, this_sym);
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
is_bits_op(Token op)
{
	return op == tok_bits_lshift || op == tok_bits_rshift ||
		op == tok_bits_or ||
		op == tok_bits_xor ||
		op == tok_bits_not ||
		op == tok_bits_and;
}

Type_Info
get_atom_expression_type(File_Contents *f, Ast_Node *expression)
{
	// @TODO: chaining
	switch ((int)expression->type)
	{
		case type_identifier:
		{
			Symbol *symbol = get_symbol_spot(f, expression->identifier.token);
			return symbol->type;
		} break;
		case type_struct_init:
		{
			return verify_struct_init(f, expression);
		} break;
		case type_index:
		{
			Type_Info operand_type = fix_type(f, get_expression_type(f,
				expression->index.operand, expression->index.token, NULL));
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
				return *operand_type.array.type;
			}
			else
			{
				return  *operand_type.pointer.type;
			}
		} break;
		case type_func_call:
		{
			return verify_func_call(f, expression, expression->func_call.token);
		} break;
		case type_selector:
		{
			Type_Info operand_type = fix_type(f, get_expression_type(f, expression->selector.operand, expression->selector.dot_token, NULL));
			if(!is_accessible(operand_type))
			{
				raise_formated_semantic_error(f, expression->selector.dot_token,
										"Expression of type %s is not selectable", var_type_to_name(operand_type));
			}
			
			Ast_Struct structure = operand_type.structure->structure;
			u8 *name = expression->selector.identifier->identifier.name;
			for(size_t i = 0; i < structure.member_count; ++i)
			{
				if(vstd_strcmp((char *)name, (char *)structure.members[i].identifier.name))
				{
					return structure.members[i].type;
				}
			}
			raise_formated_semantic_error(f, expression->selector.dot_token,
									 "Accessed member %s of structure %s doesn't exist",
									name, structure.struct_id.name);
			
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
			return (Type_Info) {.type = T_STRING, .v_string.content = &expression->atom.identifier};
		} break;
	}
	return (Type_Info){.type = T_INVALID};
}

Type_Info
get_unary_expression_type(File_Contents *f, Ast_Node *expression)
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
	else if(expression->type == type_cast)
	{
		Type_Info cast_type = fix_type(f, expression->cast.type);
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
		return get_atom_expression_type(f, expression);
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
get_expression_type(File_Contents *f, Ast_Node *expression, Token_Iden desc_token, Type_Info *previous)
{
	if(expression == NULL)
		return (Type_Info){.type = T_INVALID};

	if(expression->type != type_binary_expr)	
		return fix_type(f, get_unary_expression_type(f, expression));
	
	Type_Info left = get_expression_type(f, expression->left,  expression->binary_expr.token, NULL);
	Type_Info right = get_expression_type(f, expression->right, expression->binary_expr.token, NULL);
	
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

	return fix_type(f, left);
}

Type_Info
verify_func_call(File_Contents *f, Ast_Node *func_call, Token_Iden expr_token)
{

	b32 has_va_args = false;
	// @TODO: function pointers
	if (func_call->func_call.operand->type != type_identifier)
	{
		raise_semantic_error(f, "Function caller is not an identifier",
							 func_call->func_call.token);
	}
	Symbol *func_sym = get_symbol_spot(f, func_call->func_call.operand->identifier.token);
	
	Ast_Node **func_args = func_sym->node->function.arguments;
	Ast_Node **passed_expr = func_call->func_call.arguments;
	size_t expr_count = SDCount(passed_expr);
	size_t args_count = SDCount(func_args);

	size_t j = 0;
	for(size_t i = 0; i < expr_count; ++i)
	{
		Type_Info expr_type = fix_type(f, get_expression_type(f, passed_expr[i], expr_token, NULL));
		Type_Info arg_type = fix_type(f, func_args[j]->variable.type);
		if(arg_type.type == T_DETECT)
		{
			has_va_args = true;
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
		if(!has_va_args)
			j++;
	}
	if(!has_va_args && args_count != expr_count)
	{
		char *error = (char *)AllocateCompileMemory(2048);
		vstd_sprintf(error, "Incorrect number of arguments, passed %d, function required %d", expr_count, args_count);
		raise_semantic_error(f, error, func_call->func_call.token);
	}	
	return func_sym->type;
}

Type_Info
verify_struct_init(File_Contents *f, Ast_Node *struct_init)
{
	if(struct_init->struct_init.operand->type != type_identifier)
	{
		raise_semantic_error(f, "expected struct identifier", struct_init->struct_init.token);
	}
	Token_Iden error_token = struct_init->struct_init.token;	
	u8 *struct_id = struct_init->struct_init.operand->identifier.name;
	Ast_Node **expressions = struct_init->struct_init.expressions;
	Type_Info struct_type = get_type(f, struct_id);
	
	if(struct_type.type != T_STRUCT)
	{
		raise_semantic_error(f, "Incorrect identifier used for struct initialization", error_token);
	}
	Ast_Variable *members = struct_type.structure->structure.members;
	int member_count = struct_type.structure->structure.member_count;
	
	if(type_is_invalid(struct_type))
	{
		char *error = (char *)AllocateCompileMemory(4 * (vstd_strlen((char *)struct_id) + 16));
		vstd_sprintf(error, "Struct %s doesn't exist, error in struct initializer", struct_id);
		raise_semantic_error(f, error, error_token);
	}
	if(SDCount(expressions) > member_count)
	{
		raise_semantic_error(f, "Too many expressions in struct initialization", error_token);
	}
	
	for(size_t i = 0; i < SDCount(expressions); ++i)
	{
		members[i].type = fix_type(f, members[i].type);
		Type_Info expr_type = get_expression_type(f, expressions[i], error_token, NULL);
		Type_Info member_type = members[i].type;
		if(!check_type_compatibility(member_type, expr_type))
		{
			char *error = (char *)AllocateCompileMemory(2048);
			vstd_sprintf(error, "Expression #%d in struct initialization is of type %s,"
						 " member #%d is of incompatible type %s",
						 i + 1,
						 var_type_to_name(expr_type),
						 i + 1,
						 var_type_to_name(member_type));
			raise_semantic_error(f, error, error_token);
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
		if(a.type == T_UNTYPED_FLOAT && b.type == T_INTEGER)
			return false;

		if(is_integer(b) || is_float(b))
			return true;
		/*
		a = untyped_to_type(a);
		if(a.type == b.type)
			return true;
		*/
	}	
	if(b.type == T_UNTYPED_INTEGER || b.type == T_UNTYPED_FLOAT)
	{
		if(b.type == T_UNTYPED_FLOAT && a.type == T_INTEGER)
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
		if(struct_type.type == T_STRUCT && members[i].type.type == T_STRUCT && 
		   vstd_strcmp((char *)members[i].type.identifier, (char *)struct_type.identifier))
		{
			raise_semantic_error(f, "You can't put a struct as it's own member variable, use a pointer",
								 members[i].identifier.token);
		}
	}
}


u8 *
var_type_to_name(Type_Info type)
{
	char *result = (char *)AllocatePermanentMemory(1024);
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
