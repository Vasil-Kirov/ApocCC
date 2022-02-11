/* date = February 10th 2022 2:54 pm */

#ifndef _PARSER_H
#define _PARSER_H

typedef struct _abstract_syntax_tree ast_node;
typedef struct _ast_expression       ast_expression;

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

typedef struct _stack
{
	i32 top;
	i32 *array;
} stack;

b32
is_stack_empty(stack s)
{
	return (s.top == -1);
}

void
stack_push(stack *s, i32 item)
{
	++s->top;
	arrins(s->array, s->top, item);
}

i32
stack_pop(stack *s)
{
	if(is_stack_empty(*s))
		return INT32_MIN;
	
	return s->array[s->top--];
}

i32
stack_peek(stack s)
{
	if(is_stack_empty(s))
		return INT32_MIN;
	return s.array[s.top];
}

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
	double number;
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

double
evaluate_expression(ast_expression *tree);

ast_expression
tokens_to_ast_expression(i16 *tokens, i16 amount);

#endif //_PARSER_H
