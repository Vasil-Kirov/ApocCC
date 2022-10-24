
#ifndef _INTERPRET_H
#define _INTERPRET_H
#include <Basic.h>
#include <Lexer.h>
#include <Type.h>

#define DO_OP(out, op, l, r) \
	Assert(l.type->type != T_INVALID); Assert(r.type->type != T_INVALID);	\
	if(is_float(*l.type))                      \
	{                                          \
		out.type->type = T_UNTYPED_FLOAT;  \
		out._f64 = l._f64 op r._f64;       \
	}                                          \
	else if(is_integer(*l.type))               \
	{                                          \
				out.type->type = T_UNTYPED_INTEGER;        \
				if(is_signed(*l.type))                     \
				{                                          \
					out.type->primitive.size = byte8;  \
					out._i64 = l._i64 op r._i64;       \
				}                                          \
				else                                       \
				{                                          \
					out.type->primitive.size = ubyte8; \
					out._u64 = l._u64 op r._u64;       \
				}                                          \
	}                                      \
	else                                   \
		Assert(false);                     

#define DO_RINT_OP(out, op, l, r) \
	Assert(l.type->type != T_INVALID);      \
	if(is_float(*l.type))                   \
	{                                       \
		out.type->type = T_UNTYPED_FLOAT;   \
		out._f64 = l._f64 op r;             \
	}                                       \
	else if(is_integer(*l.type))            \
	{                                       \
				out.type->type = T_UNTYPED_INTEGER;    \
				if(is_signed(*l.type))                 \
				{                                      \
					out.type->primitive.size = byte8;  \
					out._i64 = l._i64 op r;            \
				}                                     \
				else                                  \
				{                                     \
					out.type->primitive.size = ubyte8; \
					out._u64 = l._u64 op r;            \
				}                          \
	}                                      \
	else                                   \
		Assert(false);                     

#define DO_U_OP(out, op, l) \
	Assert(l.type->type != T_INVALID)       \
	if(is_float(*l.type))                   \
	{                                       \
		out.type->type = T_UNTYPED_FLOAT;   \
		out._f64 = op l._f64;               \
	}                                       \
	else if(is_integer(*l.type))            \
	{                                       \
				out.type->type = T_UNTYPED_INTEGER;    \
				if(is_signed(*l.type))                 \
				{                                     \
					out.type->primitive.size = byte8;  \
					out._i64 = op l._i64;             \
				}                                     \
				else                                  \
				{                                     \
					out.type->primitive.size = ubyte8; \
					out._u64 = op l._u64;             \
				}                          \
	}                                      \
	else                                   \
		Assert(false);                     


typedef struct _Symbol Symbol;

// @NOTE: pointer.type is not used, instead it's just the type of pointed here
typedef struct
{
	Type_Info *type;
	void *location;
	union
	{
		f32 _f32;
		f64 _f64;
		i8  _i8;
		i16 _i16;
		i32 _i32;
		i64 _i64;
		u8  _u8;
		u16 _u16;
		u32 _u32;
		u64 _u64;
		void *pointed;
	};
} Interp_Val;

typedef struct
{
	u8 *key;
	Interp_Val value;
} Interp_Table;

typedef struct _Ast_Call Ast_Call;

inline Interp_Val
create_interp_val();

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
