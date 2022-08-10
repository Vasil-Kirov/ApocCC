
#ifndef _INTERPRET_H
#define _INTERPRET_H
#include <Basic.h>
#include <Lexer.h>
#include <Type.h>

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

Interp_Val
interpret_expression(Ast_Node *expr, b32 *failed);

Interp_Val
interpret_function(Interp_Val func, Ast_Call call, b32 *failed);

void
initialize_interpreter();


#endif
