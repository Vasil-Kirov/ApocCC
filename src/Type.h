/* date = July 20th 2022 9:18 am */

#ifndef _TYPE_H
#define _TYPE_H
#include <Basic.h>

struct _Ast_Identifier;
struct _Type_Info;
typedef struct _abstract_syntax_tree Ast_Node;

typedef enum
{
	invalid_type = 0xFFFF,
	byte1  = 1,
	byte2  = 2,
	byte4  = 3,
	byte8  = 4,
	ubyte1 = 5,
	ubyte2 = 6,
	ubyte4 = 7,
	ubyte8 = 8,
	real32 = 9,
	real64 = 10,
	empty_void  = 11,
	logical_bit = 12,
	detect // @TODO: Remove
} Var_Size;

typedef enum
{
	T_UNTYPED_INTEGER = 1 << 0,
	T_UNTYPED_FLOAT   = 1 << 1,
	T_INTEGER         = 1 << 2,
	T_FLOAT           = 1 << 3,
	T_STRUCT          = 1 << 4,
	T_ARRAY           = 1 << 5,
	T_POINTER         = 1 << 6,
	T_DETECT          = 1 << 7,
	T_INVALID         = 1 << 8,
	T_VOID            = 1 << 9,
	T_STRING          = 1 << 10,
	T_BOOLEAN		  = 1 << 11,
	T_FUNC            = 1 << 12,
} Type_Type;

typedef enum
{
	ARR_STATIC = 1 << 0,
	ARR_DYNAMIC = 1 << 1,
} Type_Array;

typedef struct _Type_Info
{
	Type_Type type;
	Token_Iden token;
	union
	{
		struct
		{
			Var_Size size;
		} primitive;
		struct 
		{
			Ast_Node *structure;
			b32 is_packed;
		};
		struct
		{
			struct _Type_Info *type;
			Type_Array array_type;
			size_t elem_count;
			Ast_Node *optional_expression;
		} array;
		struct
		{
			struct _Type_Info *type;
		} pointer;
		struct 
		{
			struct _Ast_Identifier *content;
		} v_string;
		Ast_Node *func;
	};
	u8 *identifier;
} Type_Info;

int
get_type_alignment(Type_Info type);

int
get_type_size(Type_Info type);

Type_Info
fix_type(File_Contents *f, Type_Info type);

b32
is_string_pointer(Type_Info type);

b32
is_castable(Type_Info castee, Type_Info cast_type);

b32
is_signed(Type_Info type);

b32
is_type_primitive(Type_Info type);

b32
is_float(Type_Info type);

b32
is_integer(Type_Info type);

b32
is_accessible(Type_Info type);

b32
is_untyped(Type_Info type);

b32
is_rhs_valid(Type_Info type);

b32
is_pointer_rhs_compatible(Type_Info type);


#endif //_TYPE_H
