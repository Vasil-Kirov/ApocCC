
#ifndef ANALYZER_H
#define ANALYZER_H
#include <Basic.h>
#include <Lexer.h>
#include <Parser.h>


typedef struct
{
	u8 *key;
	Var_Type value;
} Type_Table;

typedef struct _Symbol
{
	u8 *identifier;
	Var_Type type;
	Ast_Node *node;
	int counter;
	Token_Iden token;
} Symbol;

typedef struct 
{
	unsigned int start_line;
	unsigned int end_line;
	const char *file;
	Symbol *symbol_table;
} Scope_Info;


void
push_scope(Scope_Info current_scope);

void
pop_scope();

void
analyze(Ast_Node *ast_tree);

void
add_primitive_type(const char *name, Var_Size size);

Var_Type
get_type(u8 *name);

void
add_type(Ast_Struct structure);

void
update_type(Ast_Struct structure);

void
add_symbol(Symbol symbol, Ast_Identifier *identifier);

void
initialize_analyzer();

void
analyze_file_level_statement(Ast_Node *node);

u8 *
var_type_to_name(Var_Type type);

Symbol *
get_symbol_spot(Token_Iden token);

void
verify_struct(Ast_Node *struct_node);

void
verify_func(Ast_Node *node);

void
verify_func_level_statement(Ast_Node *node);

b32
check_type_compatibility(Var_Type a, Var_Type b);

void
verify_assignment(Ast_Node *node);

Var_Type
get_expression_type(Ast_Node *expression, Token_Iden desc_token);

Var_Type
verify_func_call(Ast_Node *func_call);

b32
are_op_compatible(Var_Type a, Var_Type b);

b32
is_scope_stack_empty();


#endif