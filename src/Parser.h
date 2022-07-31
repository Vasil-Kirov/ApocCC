/* date = February 10th 2022 2:54 pm */

#ifndef _PARSER_H
#define _PARSER_H

#ifdef __cplusplus
extern "C"
{
#endif

#define REASONABLE_MAXIMUM 256


#include <Lexer.h>
#include <Stack.h>
#include <Basic.h>
#include <Type.h>

//#define INVALID_TYPE (Var_Type){.is_primitive = true, .prim_repr = invalid_type}
#define NO_EXPECT '\x18'
	
typedef struct _abstract_syntax_tree Ast_Node;

typedef enum _Ast_Type
{
	type_root         = -100,
		
	type_cast         = -57,
	type_else         = -56,
	type_scope_end    = -55,
	type_scope_start  = -54,
	type_postfix      = -53,
	type_index        = -52,
	type_const_str    = -51,
	type_struct_init  = -50,
	type_break        = -49,
	type_struct       = -48,
	type_selector     = -47,
	type_identifier   = -46,
	type_assignment   = -45,
	type_func         = -44,
	type_func_call    = -43,
	type_for          = -42,
	type_if           = -41,
	type_expression   = -40,
	type_literal      = -39,
	type_var          = -38,
	type_return       = -37,

	type_unary_expr   = -36,
	type_binary_expr  = -35,

	type_notype       = 0,

	type_add          = '+',
	type_subtract     = '-',
	type_multiply     = '*',
	type_divide       = '/',

} Ast_Type;
	
	
// Var_Size values are sorted
// signed 1 < unsigned 1 < unsigned 2	



typedef struct
{
	Ast_Node **nodes;
	int count;
} Ast_Node_Array;

typedef struct _Symbol Symbol;
typedef struct _Ast_Identifier
{
	Token_Iden token;
	u8 *name;
	Symbol *symbol_spot;
} Ast_Identifier;

/*
typedef struct
{
	b32 is_primitive;
	union
	{
		Var_Size prim_repr;
		struct
		{
			Ast_Identifier struct_id;
			Ast_Variable *maybe_members; // NOTE(Vasko): SimpleDArray
		};
	};
	b32 is_const;
	int pointer_count;
} Var_Type;
*/

typedef struct _Ast_Variable
{
	Type_Info type;
	b32 is_const;
	Ast_Identifier identifier;
} Ast_Variable;

typedef struct _Ast_Struct
{
	Ast_Identifier struct_id;
    Ast_Variable members[REASONABLE_MAXIMUM];
	int member_count;
} Ast_Struct;

typedef struct
{
    Ast_Identifier identifier;
} Ast_Atom;

typedef struct 
{
	Token_Iden token;
} Ast_Token_Holder;

typedef struct
{
	Type_Info type;
	Ast_Identifier identifier;
	Ast_Node **arguments; // Simple DArray
} Ast_Func;


typedef struct
{
	Token op;
	Ast_Node *expression;
} Ast_Unary_Expr;

typedef struct
{
	Token op;
	Token_Iden token;
} Ast_Binary_Expr;

typedef struct
{
	b32 is_declaration;
	Ast_Node *lhs;
	Ast_Node *rhs;
	Token assign_type;
	Token_Iden err_token;
	Type_Info decl_type;
} Ast_Assignment;

typedef struct
{
	Ast_Identifier identifier;
	Ast_Node **arguments; // Simple DArray of expressions
} Ast_Call;

typedef enum
{
	left_to_right,
	right_to_left
} Assoc;

typedef struct
{
	int precedence;
	Assoc associativity;
} Operator_Desc;

typedef struct
{
	Token_Iden id_token;
	Ast_Node **expressions; // Note(Vasko): SimpleDArray
} Ast_Struct_Init;

typedef struct
{
	Token_Iden token;
	Ast_Node *expression;
} Ast_Indexing;

typedef struct
{
	Token type;
} Ast_Postfix;

typedef struct
{
	Token_Iden token;
} Scope_Desc;

typedef enum
{
	F_STANDARD,
	F_WHILE,
} For_Type;

typedef struct
{
	For_Type type;
	Ast_Node *expr1;
	Ast_Node *expr2;
	Ast_Node *expr3;
	Token_Iden token;
} Ast_For;

typedef struct
{
	Token_Iden token;
	Type_Info type;
} Ast_Cast;

struct _abstract_syntax_tree
{
	Ast_Type type;
	union
	{
		Ast_Cast cast;
		Ast_For for_loop;
		Ast_Func function;
		Ast_Node *condition;
		Ast_Unary_Expr unary_expr;
		Ast_Binary_Expr binary_expr;
		Ast_Assignment assignment;
		Ast_Variable variable;
		Ast_Call func_call;
		Ast_Atom atom;
		Ast_Identifier identifier;
		Ast_Struct structure;
		Ast_Struct_Init struct_init;
		Ast_Indexing index;
		Ast_Postfix postfix;
		Ast_Token_Holder holder;
		Scope_Desc scope_desc;
	};
	Ast_Node *left;
	Ast_Node *right;
};


Ast_Node *
parse_file_level_statement();

Ast_Node *
parse_identifier(Token_Iden name_token);

Ast_Node *
parse_statement();

Ast_Node *
parse_expression(File_Contents *f, Token stop_at);

Ast_Variable
parse_declaration_left(Token_Iden identifier);

Ast_Node *
parse_declaration_left_from_array(Token_Iden *tokens, int count);

Ast_Node *
parse_declaration_right();

b32
is_func_call(Token_Iden token, int check_ahead);

Ast_Node *
parse_func_call(Token_Iden name_token);

Ast_Node *
parse_struct();

#include <Analyzer.h>

Type_Info
parse_type(File_Contents *f);

b32
type_is_invalid(Type_Info type);

Ast_Node *
parse(File_Contents *f);

Ast_Node *
parse_next_token();

Ast_Node *
parse_func(File_Contents *f);

void
parser_eat(File_Contents *f, Token expected_token);

#ifdef __cplusplus
}
#endif

#endif //_PARSER_H
