
#ifndef _INTERPRET_H
#define _INTERPRET_H
#include <Basic.h>
#include <Lexer.h>
#include <Type.h>

#define DO_OP(out, op, l, r) \
	Assert(l.type.type != T_INVALID); Assert(r.type.type != T_INVALID);	\
	if(is_float(l.type))                   \
	{                                      \
		out.type.type = T_UNTYPED_FLOAT;   \
		out.tf64 = l.tf64 op r.tf64;       \
	}                                      \
	else if(is_integer(l.type))            \
	{                                      \
				out.type.type = T_UNTYPED_INTEGER;    \
				if(is_signed(l.type))                 \
				{                                     \
					out.type.primitive.size = byte8;  \
					out.ti64 = l.ti64 op r.ti64;      \
				}                                     \
				else                                  \
				{                                     \
					out.type.primitive.size = ubyte8; \
					out.tu64 = l.tu64 op r.tu64;      \
				}                          \
	}                                      \
	else                                   \
		Assert(false);                     

#define DO_RINT_OP(out, op, l, r) \
	Assert(l.type.type != T_INVALID);      \
	if(is_float(l.type))                   \
	{                                      \
		out.type.type = T_UNTYPED_FLOAT;   \
		out.tf64 = l.tf64 op r;            \
	}                                      \
	else if(is_integer(l.type))            \
	{                                      \
				out.type.type = T_UNTYPED_INTEGER;    \
				if(is_signed(l.type))                 \
				{                                     \
					out.type.primitive.size = byte8;  \
					out.ti64 = l.ti64 op r;           \
				}                                     \
				else                                  \
				{                                     \
					out.type.primitive.size = ubyte8; \
					out.tu64 = l.tu64 op r;           \
				}                          \
	}                                      \
	else                                   \
		Assert(false);                     

#define DO_U_OP(out, op, l) \
	Assert(l.type.type != T_INVALID)       \
	if(is_float(l.type))                   \
	{                                      \
		out.type.type = T_UNTYPED_FLOAT;   \
		out.tf64 = op l.tf64;              \
	}                                      \
	else if(is_integer(l.type))            \
	{                                      \
				out.type.type = T_UNTYPED_INTEGER;    \
				if(is_signed(l.type))                 \
				{                                     \
					out.type.primitive.size = byte8;  \
					out.ti64 = op l.ti64;             \
				}                                     \
				else                                  \
				{                                     \
					out.type.primitive.size = ubyte8; \
					out.tu64 = op l.tu64;             \
				}                          \
	}                                      \
	else                                   \
		Assert(false);                     


typedef struct _Symbol Symbol;

// @NOTE: pointer.type is not used, instead it's just the type of pointed here
typedef struct
{
	Type_Info type;
	void *location;
	union
	{
		f32 tf32;
		f64 tf64;
		i8  ti8;
		i16 ti16;
		i32 ti32;
		i64 ti64;
		u8  tu8;
		u16 tu16;
		u32 tu32;
		u64 tu64;
		void *pointed;
	};
} Interp_Val;

typedef struct
{
	u8 *key;
	Interp_Val value;
} Interp_Table;

typedef struct _Ast_Call Ast_Call;

void
destroy_scope();

void
interp_push_scope();

void
interp_add_symbol(u8 *identifier, Interp_Val value);

Interp_Val
interpret_expression(Ast_Node *expr, b32 *failed);

Interp_Val
interpret_function(Interp_Val func, Ast_Call call, b32 *failed);

void
interpret_add_function(Symbol func_sym);

void
initialize_interpreter();

Interp_Val
interpret_statement_list(Ast_Node *node, b32 *failed, Token_Iden *token, i32 scope_count,
		b32 *returned);

#endif
