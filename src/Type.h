/* date = July 20th 2022 9:18 am */

#ifndef _TYPE_H
#define _TYPE_H

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
	empty  = 11,
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
} Type;

typedef enum
{
	ARR_STATIC = 1 << 0,
	ARR_DYNAMIC = 1 << 1,
} Type_Array;

typedef struct _Type_Info
{
	Type type;
	Token_Iden token;
	union
	{
		struct
		{
			Var_Size size;
		} primitive;
		Ast_Node *structure;
		struct
		{
			struct _Type_Info *type;
			Type_Array array_type;
		} array;
		struct
		{
			struct _Type_Info *type;
		} pointer;
		struct 
		{
			struct _Ast_Identifier *content;
		} v_string;
	};
	u8 *identifier;
} Type_Info;

Type_Info
fix_type(File_Contents *f, Type_Info type);

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
