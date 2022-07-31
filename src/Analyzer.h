
#ifndef ANALYZER_H
#define ANALYZER_H
#include <Basic.h>
#include <Lexer.h>
#include <Parser.h>


typedef struct
{
	u8 *key;
	Type_Info value;
} Type_Table;

typedef enum
{
	S_NONE,
	S_FUNCTION,
	S_VARIABLE,
	S_STRUCT_MEMBER,
	S_FUNC_ARG
} Symbol_Type;

typedef struct _Symbol
{
	Symbol_Type tag;
	union 
	{
		struct
		{
			int index;
		} s_member;
	};
	u8 *identifier;
	Type_Info type;
	Ast_Node *node;
	Token_Iden token;
} Symbol;

typedef struct 
{
	b32 has_return;
	unsigned int start_line;
	unsigned int end_line;
	const char *file;
	Symbol *symbol_table;
} Scope_Info;

typedef struct _File_Contents
{
	Token_Iden *prev_token;
	Token_Iden *curr_token;
	Token_Iden *next_token;
	Token_Iden *saved_token;
	Token_Iden *token_buffer;
	Type_Table *type_table;
	Stack		scope_stack;
	Scope_Info *scopes;
	u64         file_size;
	char       *file_data;
	char       *at;
	char       *path;
	u64 current_line;
	u64 current_column;
} File_Contents;

void
push_scope(Scope_Info current_scope);

void
pop_scope();

void
analyze(Ast_Node *ast_tree);

void
add_primitive_type(const char *name, Var_Size size);

Type_Info
get_type(u8 *name);

void
add_type(Ast_Node *structure);

void
update_type(Ast_Struct structure);

void
add_symbol(Symbol symbol, Ast_Identifier *identifier);

void
initialize_analyzer();

void
analyze_file_level_statement(Ast_Node *node);

u8 *
var_type_to_name(Type_Info type);

Symbol *
get_symbol_spot(Token_Iden token);

void
verify_struct(Ast_Node *struct_node);

void
verify_func(Ast_Node *node);

void
verify_func_level_statement(Ast_Node *node, Ast_Node *func_node);

b32
check_type_compatibility(Type_Info a, Type_Info b);

void
verify_assignment(Ast_Node *node);

Type_Info
get_expression_type(Ast_Node *expression, Token_Iden desc_token, Type_Info *previous);

Type_Info
verify_func_call(Ast_Node *func_call, Token_Iden expr_token);

Type_Info
verify_struct_init(Ast_Node *struct_init, Token_Iden error_token);

b32
are_op_compatible(Type_Info a, Type_Info b);

b32
is_scope_stack_empty();

Type_Info
untyped_to_type(Type_Info type);

#endif
