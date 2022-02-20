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

typedef struct _type_and_identifier
{
	ast_type type;
	u64 iden_index;
} type_and_identifier;

// NOTE(Vasko): START OF STACK IMPLEMENTATION
#define STACK_INFO_SIZE 12
#pragma pack(push, 1)
typedef struct _stack
{
	i32 top;
	i32 capacity;
	i32 default_value;
} _internal_stack;
#pragma pack(pop)


#define stack_allocate(arr, memory_index, max_size) void *_s_location = \
AllocateMemory(max_size+STACK_INFO_SIZE, memory_index); \
arr = _s_location+STACK_INFO_SIZE; ((_internal_stack *)((i8 *)arr-STACK_INFO_SIZE))->top = -1; \
((_internal_stack *)((i8 *)arr-STACK_INFO_SIZE))->capacity = max_size; \
((_internal_stack *)((i8 *)arr-STACK_INFO_SIZE))->default_value = INT32_MIN

#define stack_header(arr) ((_internal_stack *)((i8 *)arr-STACK_INFO_SIZE))

#define stack_set_default_value(s, value) stack_header(s)->default_value = value

#define is_stack_full(s) stack_header(s)->top == stack_header(s)->capacity - 1

#define is_stack_empty(s) stack_header(s)->top == -1

#define stack_push(s, item) if(is_stack_full(s)) { LG_FATAL("Expression stack overflow"); } \
s[++stack_header(s)->top] = item

#define stack_pop(s) is_stack_empty(s) ? (typeof(*s)){stack_header(s)->default_value} : s[stack_header(s)->top--]

#define stack_peek(s) is_stack_empty(s) ? (typeof(*s)){stack_header(s)->default_value} : s[stack_header(s)->top]

// END OF STACK IMPLEMENTATION

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
tokens_to_ast_expression(token_iden *tokens, i16 amount);

void
ast_from_tokens();

#endif //_PARSER_H
