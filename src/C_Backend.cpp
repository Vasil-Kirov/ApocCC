#include <C_Backend.h>
#include <platform/platform.h>
#include <stdlib/std.h>

void
c_backend_generate(Ast_Node *ast_root, Type_Table *type_table, Scope_Info *scopes)
{
	string c_file;
	string *c_file_ptr = &c_file;
	write_types(c_file_ptr, type_table);
	write_func_signature(c_file_ptr, scopes);
	code_from_statement(ast_root, c_file_ptr);
	platform_write_file((void *)c_file.c_str(), c_file.length(), "c_out/out.c", true);
	platform_call("clang c_out/out.c --debug -Wno-everything");
}

void
_write_to_file(string *c_file, const char *str)
{
	// @TODO: Messure this and improve
	*c_file += str;
}

void
write_to_file(string *c_file, u8 *str)
{
	_write_to_file(c_file, (const char *)str);
}

void
write_to_file(string *c_file, const char *str)
{
	_write_to_file(c_file, str);
}

#define write_formated(c_file, format, ...) _write_formated(c_file, format, sizeof(format), __VA_ARGS__)

void
_write_formated(string *c_file, const char *format, size_t format_size, ...)
{
	u8 to_write[4096] = {};

	va_list args;
	va_start(args, format_size);
	vstd_vsnsprintf((char *)to_write, format_size, format, args);
	va_end(args);

	write_to_file(c_file, to_write);
}

void
write_func_signature(string *c_file, Scope_Info *scopes)
{
	size_t scope_count = SDCount(scopes);
	for (size_t i = 0; i < scope_count; i++)
	{
		Symbol *table = scopes[i].symbol_table;
		size_t entry_count = SDCount(table);
		for (size_t j = 0; j < entry_count; j++)
		{
			Symbol entry = table[j];
			if(entry.tag == S_FUNCTION)
			{
				Assert(entry.node->type == type_func);
				Ast_Func func = entry.node->function;
				write_formated(c_file, "%s %s(", func.type.identifier, func.identifier.name);
				if(func.arguments)
				{	
					size_t arg_count = SDCount(func.arguments);
					for (size_t k = 0; k < arg_count; k++)
					{
						if(func.arguments[k]->variable.type.type == T_DETECT)
							write_to_file(c_file, "...");
						else
							write_formated(c_file, "%s %s", func.arguments[k]->variable.type.identifier, func.arguments[k]->variable.identifier.name);
						if(k != arg_count - 1)
							write_to_file(c_file, ", ");
					}
				}
				write_to_file(c_file, ");\n");
			}
		}
		
	}
}

static const char *type_names[] = {
	"", "int8_t", "int16_t", "int32_t", "int64_t",
	"uint8_t", "uint16_t", "uint32_t", "uint64_t",
	"float", "double", "", "uint32_t"
};

void
write_types(string *c_file, Type_Table *type_table)
{
	write_to_file(c_file, "#include <stdint.h>\n");
	size_t type_count = shlen(type_table);
	for(size_t i = 0; i < type_count; ++i)
	{
		Type_Info type = type_table[i].value;
		u8 *name = type_table[i].key;
		if(type.type == T_STRUCT)
		{
			write_formated(c_file, "typedef struct {");
			Ast_Struct struct_type= type.structure->structure;
			int member_count = struct_type.member_count;
			for(int i = 0; i < member_count; ++i)
			{
				write_formated(c_file, "%s %s;", 
								struct_type.members[i].type.identifier,
								struct_type.members[i].identifier.name);
			}
			write_formated(c_file, "} %s;\n", name);
		}
		else if (type.type != T_VOID)
		{
			write_formated(c_file, "typedef %s %s;\n", type_names[type.primitive.size], name);
		}
	}
}

void
write_type(string *c_file, Type_Info type)
{
	Assert(type.type != T_INVALID);
	if(type.type == T_POINTER)
	{
		write_type(c_file, *type.pointer.type);
		write_to_file(c_file, "*");
		return;
	}
	Assert(type.identifier);
	write_to_file(c_file, type.identifier);
}

void
code_from_statement(Ast_Node *node, string *c_file)
{
	b32 loop = true;
	while(loop)
	{
		if(node == NULL)
			break;
		switch(node->type)
		{
			case type_struct: {} break;
			case type_for:
			{
				if(node->for_loop.type == F_STANDARD)
				{
					write_to_file(c_file, "for(");
					write_expression(c_file, node->for_loop.expr1);
					write_to_file(c_file, ";");
					write_expression(c_file, node->for_loop.expr2);
					write_to_file(c_file, ";");
					write_expression(c_file, node->for_loop.expr3);
					write_to_file(c_file, ")");
				}
				else
				{
					write_to_file(c_file, "while(");
					write_expression(c_file, node->for_loop.expr1);
					write_to_file(c_file, ")");
				}
			} break;
			case type_if:
			{
				write_to_file(c_file, "if(");
				write_expression(c_file, node->condition);
				write_to_file(c_file, ")");
			} break;
			case type_func:
			{
				write_formated(c_file, "%s %s(", node->function.type.identifier,
								node->function.identifier.name);
				int arg_count = SDCount(node->function.arguments);
				for(int i = 0; i < arg_count; ++i)
				{
					if(node->function.arguments[i]->variable.type.type == T_DETECT)
						write_to_file(c_file, "...");
					else
						write_formated(c_file, "%s %s", node->function.arguments[i]->variable.type.identifier,
											node->function.arguments[i]->variable.identifier.name);
					if(i != arg_count - 1)
						write_to_file(c_file, ", ");
				}
				write_to_file(c_file, ")");
				if(node->left->type != type_scope_start) write_to_file(c_file, ";");
			} break;

			case type_scope_start:
			{
				write_formated(c_file, "\n{\n");
				code_from_statement(node->right, c_file);
			} break;

			case type_scope_end:
			{
				write_formated(c_file, "\n}\n");
				loop = false;
			} break;

			case type_func_call:
			{
				Ast_Node **expressions = node->func_call.arguments;
				size_t arg_count = SDCount(node->func_call.arguments);
				
				// @TODO: write operand
				//write_formated(c_file, "%s(", node->func_call.operand);
				for (size_t i = 0; i < arg_count; i++)
				{
					write_expression(c_file, expressions[i]);
					if(i != arg_count - 1)
						write_to_file(c_file, ",");
				}
				write_to_file(c_file, ");");
				
			} break;

			case type_assignment:
			{
				if(node->assignment.is_declaration)
					write_to_file(c_file, node->assignment.decl_type.identifier);

				write_formated(c_file, " %s =", node->assignment.token.identifier);
				write_expression(c_file, node->assignment.rhs);
				write_to_file(c_file, ";");
			} break;

			case type_return:
			{
				write_to_file(c_file, "return ");
				write_expression(c_file, node->right);
				write_to_file(c_file, ";");
			} break;

			default:
			{
				LG_ERROR("Unhandled statement type %s", type_to_str(node->type));
			}
			break;
		}
		node = node->left;
	}
}

void
atom_to_str(string *c_file, Ast_Node *expression)
{
	b32 loop = true;
	while(loop)
	{
		if(expression == NULL)
			break;
		switch(expression->type)
		{
			case type_func_call:
			{
				// @TODO: write operand
				//write_formated(c_file, "%s( ", expression->func_call.identifier.name);
				int arg_count = SDCount(expression->func_call.arguments);	
				for(int i = 0; i < arg_count; ++i)
				{
					write_expression(c_file, expression->func_call.arguments[i]);
					if(i != arg_count - 1)
						write_to_file(c_file, ", ");
				}
				write_to_file(c_file, ") ");
			} break;
			case type_struct_init:
			{
				write_formated(c_file, " (%s){ ", expression->struct_init.id_token.identifier);
				int member_count = SDCount(expression->struct_init.expressions);
				for(int i = 0; i < member_count; ++i)
				{
					write_expression(c_file, expression->struct_init.expressions[i]);
					write_to_file(c_file, ",\n");
				}
				write_to_file(c_file, "}");
			} break;
			case type_index:
			{
				// @TODO: indexing
				// write_formated(c_file, "%s[ ", expression->index.identifier.name);
				write_expression(c_file, expression->index.expression);
				write_to_file(c_file, " ]");
			} break;
			case type_identifier:
			{
				write_to_file(c_file, expression->identifier.name);
			} break;
			case type_literal:
			{
				write_to_file(c_file, expression->atom.identifier.name);
				loop = false;
			} break;
			case type_const_str:
			{
				write_to_file(c_file, expression->atom.identifier.name);
			} break;
			case type_selector:
			{
				write_to_file(c_file, ".");
				// @TODO: fix selecting
			} break;
			case type_postfix:
			{
				switch(expression->postfix.type)
				{
					case tok_plusplus: write_to_file(c_file, "++"); break;
					case tok_minusminus: write_to_file(c_file, "--"); break;
					default:
					{
						LG_FATAL("Unkown postfix: %d", expression->postfix.type);
					} break;
				}
				loop = false;
			} break;
			default:
			{
				loop = false;
			} break;
		}
		expression = expression->right;
	}
}

void
unary_expr_to_str(string *c_file, Ast_Node *expression)
{
	if(expression->type == type_unary_expr)
	{
		switch(expression->unary_expr.op)
		{
			case tok_plus:
			case tok_minus:
			case tok_not:
			case tok_bits_xor: 
			case tok_bits_and:
			case tok_bits_not:
			{
				u8 to_write[2] = {(u8)expression->unary_expr.op, 0};
				write_to_file(c_file, to_write);
			} break;
			case tok_plusplus: write_to_file(c_file, "++"); break;
			case tok_minusminus: write_to_file(c_file, "--"); break;
			default: LG_FATAL("Unexpected unaray operator %c", expression->unary_expr.op); break;
		}
		write_expression(c_file, expression->unary_expr.expression);
	}
	else if(expression->type == type_cast)
	{
		write_to_file(c_file, "(");
		write_type(c_file, expression->cast.type);
		write_to_file(c_file, ")");
		write_expression(c_file, expression->right);	
	}
	else
		atom_to_str(c_file, expression);
}

const char *
binary_op_to_str(Token binary_op)
{
	switch(binary_op)
	{
		case tok_logical_and: return "&&";
		case tok_logical_or: return "||";
		case tok_logical_lequal: return "<=";
		case tok_logical_gequal: return ">=";
		case tok_logical_is: return "==";
		case tok_logical_isnot: return "!=";
		case tok_bits_lshift: return "<<";
		case tok_bits_rshift: return ">>";
		default:
		{
			return NULL;
		}break;
	}
}

void
binary_expr_to_str(string *c_file, Ast_Node *expression)
{
	if(expression->type == type_binary_expr)
	{
		write_expression(c_file, expression->left);
		const char *op_str = binary_op_to_str(expression->binary_expr.op);
		if(op_str == NULL)
		{
			u8 to_write[] = {(u8)expression->binary_expr.op, 0};
			write_to_file(c_file, to_write);
		}
		else
			write_to_file(c_file, op_str);
		write_expression(c_file, expression->right);
	}
	else
	{
		unary_expr_to_str(c_file, expression);	
	}
}

void
write_expression(string *c_file, Ast_Node *expression)
{
	binary_expr_to_str(c_file, expression);
}