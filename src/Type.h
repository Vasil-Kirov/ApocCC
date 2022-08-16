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
	T_UNTYPED_INTEGER = 1 ,
	T_UNTYPED_FLOAT   = 2 ,
	T_INTEGER         = 3 ,
	T_FLOAT           = 4 ,
	T_STRUCT          = 5 ,
	T_ARRAY           = 6 ,
	T_POINTER         = 7 ,
	T_DETECT          = 8 ,
	T_INVALID         = 9 ,
	T_VOID            = 10,
	T_STRING          = 11,
	T_BOOLEAN		  = 12,
	T_FUNC            = 13,
	T_ENUM            = 14,
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
		struct
		{
			Ast_Node *node;
			struct _Type_Info *type;
		} enumerator;
		Ast_Node *func;
	};
	u8 *identifier;
	b32 is_const;
} Type_Info;

int
get_type_alignment(Type_Info type);

b32
is_or_is_pointing_to(Type_Info type, Type_Type check);

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
