
#ifndef ANALYZER_H
#define ANALYZER_H
#include <Basic.h>
#include <Lexer.h>
#include <Parser.h>
#include <string>

#if !defined(NOVM)
#include <LLVM_Backend.h>
#endif

typedef struct
{
	u8 *key;
	Type_Info value;
} Type_Table;

typedef enum
{
	S_NONE,
	S_FUNCTION,
	S_GLOBAL_VAR,
	S_VARIABLE,
	S_STRUCT_MEMBER,
	S_FUNC_ARG,
	S_ENUM
} Symbol_Type;

typedef struct _Symbol
{
	Symbol_Type tag;
	struct
	{
		int index;
	} s_member;
	u8 *identifier;
	Type_Info *type;
	Ast_Node *node;
	Token_Iden *token;
} Symbol;

typedef struct 
{
	b32 has_return;
	unsigned int start_line;
	unsigned int end_line;
	const char *file;
	Symbol *symbol_table;
	i32 sym_count;
} Scope_Info;

typedef enum
{
	OPT_NONE = 1,
	OPT_SOME = 2,
	OPT_MAX  = 3
} Optimization_Level;

typedef enum
{
	TG_X64  = 1,
	TG_X32  = 2,
	TG_WASM = 3,
} Target_Arch;

typedef struct
{
	u8 *key;
	u64 value;
} Define_Table;

typedef enum
{
	LINK_EXE,
	LINK_LD,
	LINK_WASM_LD,
} Linker;

typedef enum
{
	LLVM_Backend,
	Fast_Backend
} Compiler_Backend;

typedef struct
{
	u8 *output_file;
	u8 *linker_command;
	Define_Table *defines;
	u8  **included_dirs;
	b32 debug_info;
	b32 call_linker;
	b32 dump_symbols;
	Optimization_Level optimization;
	Target_Arch target;
	Linker linker;
	Compiler_Backend backend;
} Build_Commands;

typedef struct
{
	File_Contents *f;
	Ast_Node *identifier_nullable;
	u8 *module_path;
} Import_Module;

typedef struct _File_Contents
{
	Token_Iden *prev_token;
	Token_Iden *curr_token;
	Token_Iden *next_token;
	Token_Iden *saved_token;
	Token_Iden *token_buffer;
	Type_Table *type_table;
	Ast_Node  **overloads;
	Ast_Node  **defered;
	Symbol    **functions;
	Import_Module *modules;
#if !defined(NOVM)
	llvm::BasicBlock *continue_block;
	llvm::BasicBlock *break_block;
	llvm::Function  **overload_gens;
	Struct_Table *struct_types;
	Variable_Lookup_Table *func_table;
	Variable_Lookup_Table *named_globals;
#endif
	Stack		scope_stack;
	Scope_Info *scopes;
	u64         file_size;
	u8         *file_data;
	u8         *at;
	u8         *path;
	char       *obj_name;
	u64         current_line;
	u64         current_column;
	Ast_Node   *ast_root;
	Symbol     *to_add_next_scope;
	Build_Commands build_commands;
	int         expression_level;
} File_Contents;

enum Expression_Type
{
	EXPRT_DECL,
	EXPRT_EVAL,
	EXPRT_S_INIT,
	EXPRT_A_INIT,
	EXPRT_CALL
};

enum Expression_Flags
{
	EXPR_FLAG_NONE,
	CAN_INIT_STRUCT,
	CAN_INIT_ARRAY
};

struct Expression_Context
{
	Type_Info *opt_info;
	union
	{
		struct
		{
			int current_index;
		} struct_init;
	};
	int flags;
	Expression_Type kind;
};

void
import_non_imported(File_Contents **files);

Type_Info
number_to_untyped_type(u8 *number);

void
raise_formated_semantic_error(File_Contents *f, Token_Iden token, const char *format, ...);

Ast_Node *
get_overload(File_Contents *f, Type_Info *left, Type_Info *right, Ast_Node *op, i32 *index);

void
overload_overwrite(Token_Iden *token, Ast_Node *expression, Ast_Node *left_expr, Ast_Node *right_expr, Type_Info *left, Type_Info *right, Ast_Node *overload);

void
push_scope(File_Contents *f, Scope_Info current_scope);

void
pop_scope(File_Contents *f, Token_Iden *scope_tok);

Ast_Node **
analyze(File_Contents *f, Ast_Node *ast_tree);

void
analyze_functions_and_overloads(File_Contents *f, Ast_Node **functions);

Import_Module *
find_module(File_Contents *f, u8 *id);

Type_Info
add_primitive_type(File_Contents *f, const char *name, Var_Size size);

Type_Info *
get_type(File_Contents *f, u8 *name);

void
add_type(File_Contents *f, Ast_Node *structure);

void
add_symbol(File_Contents *f, Symbol symbol);

void
initialize_analyzer();

Ast_Node *
analyze_file_level_statement(File_Contents *f, Ast_Node *node);

Ast_Node **
analyze_file_level_statement_list(File_Contents *f, Ast_Node *node);

u8 *
get_non_overloaded_name(u8 *overloaded_name);

u8 *
var_type_to_name(Type_Info *type, b32 bracket = true);

Symbol *
get_symbol_spot(File_Contents *f, Token_Iden token, b32 error_out = true, b32 search_modules = true, b32 is_module_search = false);

void
verify_enum(File_Contents *f, Ast_Node *node);

void
verify_struct(File_Contents *f, Ast_Node *struct_node);

void
verify_func(File_Contents *f, Ast_Node *node);

void
verify_func_level_statement(File_Contents *f, Ast_Node *node, Ast_Node *func_node, 
		Ast_Node *current_list, i32 *idx);

void
verify_func_level_statement_list(File_Contents *f, Ast_Node *list_node, Ast_Node *func_node);

b32
check_type_compatibility(Type_Info a, Type_Info b);

void
verify_assignment(File_Contents *f, Ast_Node *node, b32 is_global);

Type_Info
get_expression_type(File_Contents *f, Ast_Node *expression, Token_Iden *desc_token, Ast_Node *previous, Expression_Context *info);

Type_Info
verify_func_call(File_Contents *f, Ast_Node *func_call, Token_Iden *expr_token, Ast_Node *previous);

Type_Info
verify_struct_init(File_Contents *f, Ast_Node *struct_init);

b32
are_op_compatible(Type_Info a, Type_Info b);

b32
is_scope_stack_empty(File_Contents *f);

Type_Info
untyped_to_type(Type_Info type);

void
func_fix_types(File_Contents *f, Ast_Node *node);

b32
is_logical_op(Token op);

void
check_func_type_doesnt_have_anonymous_structs(File_Contents *f, Type_Info *func, u8 *func_name);

#endif
