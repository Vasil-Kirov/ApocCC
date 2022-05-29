/* date = February 10th 2022 2:54 pm */

#ifndef _PARSER_H
#define _PARSER_H

typedef struct _abstract_syntax_tree Ast_Node;
typedef struct _ast_expression       Ast_Expression;

typedef enum _ast_type
{
	type_notype = 0,
	
	type_assignment = -44,
	type_func = -43,
	type_for = -42,
	type_if = -41,
	type_expression = -40,
	type_constant = -39,
	type_var = -38,
	
	type_add = '+',
	type_subtract = '-',
	type_multiply = '*',
	type_divide = '/',
	
	type_root = -100
} Ast_Type;

typedef enum _var_type
{
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
	empty  = 0x400 // void
} Var_Type;

typedef struct _type_and_identifier
{
	Ast_Type type;
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


typedef struct _ast_node_array
{
	Ast_Node **nodes;
	int count;
} Ast_Node_Array;

typedef struct _ast_variable
{
	Var_Type type;
	b32 is_pointer;
	u64 identifier_index;
} Ast_Variable;

typedef struct _ast_func
{
	Var_Type type;
	u64 identifier_index;
	Ast_Node **arguments; // Simple DArray
} Ast_Func;

typedef struct _ast_for
{
	Ast_Expression *condition;
	Ast_Node *branch;
} Ast_For;

typedef struct _ast_if
{
	Ast_Expression *condition;
	Ast_Node *branch;
} Ast_If;

struct _ast_expression
{
	Ast_Type type;
	double number;
	Ast_Expression *left;
	Ast_Expression *right;
};

typedef struct _ast_assignment
{
	
} Ast_Assignment;

typedef struct _ast_call
{
	u64 identifier_index;
	Ast_Node_Array arguments;
} Ast_Call;

typedef union _ast_union
{
	Ast_If condition;
	Ast_For loop;
	Ast_Func function;
	Ast_Expression expression;
	Ast_Assignment assignment;
	Ast_Variable variable;
	Ast_Call func_call;
} Ast_Union;

struct _abstract_syntax_tree
{
	Ast_Type type;
	Ast_Union value;
	Ast_Node *left;
	Ast_Node *right;
};

double
evaluate_expression(Ast_Expression *tree);

Ast_Expression
tokens_to_ast_expression(Token_Iden *tokens, i16 amount);

Ast_Node *
parse_line_identifier(Token_Iden first_token);

Ast_Variable *
parse_function_arguments(u8 *func_name);

Ast_Node *
parse_variable_declaration();

Ast_Node *
parse_declaration_left(Token_Iden *tokens, int count);

Ast_Node *
parse_declaration_right(b32 equal_passed);

void
ast_from_tokens();

Ast_Node *
parse_next_token();

Ast_Node *
parse_func();

#endif //_PARSER_H
