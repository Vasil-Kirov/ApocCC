/* date = February 10th 2022 2:54 pm */

#ifndef _PARSER_H
#define _PARSER_H

typedef struct _abstract_syntax_tree ast_node;
typedef struct _ast_expression       ast_expression;

typedef union unkown_number
{
	i64 signed_long;
	u64 unsigned_long;
	f32 real32;
	double real64;
} unknown_number;

typedef enum _auto_type
{
	auto_signed,
	auto_unsigned,
	auto_real32,
	auto_real64
} auto_type;

typedef enum _ast_type
{
	type_func,
	type_for,
	type_if,
	type_expression,
	type_add = '+',
	type_subtract = '-',
	type_multiply = '*',
	type_divide = '/',
	type_constant
} ast_type;

typedef struct _auto_number
{
	unknown_number number;
	auto_type type;
} auto_number;

typedef struct _ast_func
{
	ast_node *arguments;
	ast_node *body;
} ast_func;

typedef struct _ast_for
{
	ast_expression *condition;
	ast_node *branch;
} ast_for;

typedef struct _ast_if
{
	ast_expression *condition;
	ast_node *branch;
} ast_if;

struct _ast_expression
{
	ast_type type;
	auto_number number;
	ast_expression *left;
	ast_expression *right;
};

typedef struct _ast_assignment
{
	ast_node *variable;
	ast_expression *expression;
} ast_assignment;

typedef union _ast_union
{
	ast_if condition;
	ast_for loop;
	ast_func function;
	ast_expression expression;
	ast_assignment assignment;
} ast_union;

struct _abstract_syntax_tree
{
	ast_type type;
	ast_union *left;
	ast_union *middle;
	ast_union *right;
};

auto_number
evaluate_expression(ast_expression *tree);

ast_expression
tokens_to_ast_expression(i16 *tokens, i16 amount);

#endif //_PARSER_H
