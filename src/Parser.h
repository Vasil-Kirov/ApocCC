/* date = February 10th 2022 2:54 pm */

#ifndef _PARSER_H
#define _PARSER_H

#ifdef __cplusplus
extern "C"
{
#endif

#include <Lexer.h>
#include <Stack.h>
#include <Basic.h>

typedef struct _abstract_syntax_tree Ast_Node;

typedef enum
{
	type_root         = -100,

	type_struct_init  = -51,
	type_break        = -50,
	type_struct       = -49,
	type_selector     = -48,
	type_identifier   = -47,
	type_assignment   = -46,
	type_func         = -45,
	type_func_call    = -44,
	type_for          = -43,
	type_if           = -42,
	type_expression   = -41,
	type_literal      = -40,
	type_atom         = -39,
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

typedef enum
{
	invalid_type = 0x000,
	byte1  = 0x001,
	byte2  = 0x002,
	byte4  = 0x004,
	byte8  = 0x008,
	ubyte  = 0x010,
	ubyte2 = 0x020,
	ubyte4 = 0x040,
	ubyte8 = 0x080,
	real32 = 0x100,
	real64 = 0x200,
	detect = 0x400,
	empty  = 0x800 // void
} Var_Representation;


typedef struct
{
	Ast_Type type;
	Token_Iden iden_index;
} Type_And_Token;

typedef struct
{
	Ast_Node **nodes;
	int count;
} Ast_Node_Array;

typedef struct
{
	Var_Representation representation;
	b32 is_const;
	int pointer_count;
} Var_Type;

typedef struct 
{
	Token_Iden token;
	u8 *name;
} Ast_Identifier;

typedef struct
{
    u8 *identifier;
} Ast_Atom;

typedef struct
{
	Var_Type type;
	Ast_Identifier identifier;
} Ast_Variable;

typedef struct
{
	Var_Type type;
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
} Ast_Binary_Expr;

typedef struct
{
	b32 is_declaration;
	union
	{
		Ast_Variable variable;
		Ast_Identifier identifier;
	};
		Ast_Node *expression;
} Ast_Assignment;

typedef struct
{
	u64 identifier_index;
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
	Ast_Node *selected;
} Ast_Selector;

typedef struct
{
	Ast_Identifier struct_id;
    Ast_Variable *members; // Note(Vasko): SimpleDArray
} Ast_Struct;

typedef struct
{
	Ast_Node **expressions; // Note(Vasko): SimpleDArray
} Ast_Struct_Init;

struct _abstract_syntax_tree
{
	Ast_Type type;
	union
	{
		Ast_Func function;
		Ast_Node *condition;
		Ast_Unary_Expr unary_expr;
		Ast_Binary_Expr binary_expr;
		Ast_Assignment assignment;
		Ast_Variable variable;
		Ast_Call func_call;
		Ast_Atom atom;
		Ast_Identifier identifier;
		Ast_Selector selector;
		Ast_Struct structure;
		Ast_Struct_Init struct_init;
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
parse_expression(Token stop_at);

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

Var_Representation
parse_type(int *pointer_count);

void
parse();

Ast_Node *
parse_next_token();

Ast_Node *
parse_func();

void
parser_eat(Token expected_token);


#ifdef __cplusplus
}
#endif
#endif //_PARSER_H
