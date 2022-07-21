/* date = July 20th 2022 9:18 am */

#ifndef _TYPE_H
#define _TYPE_H

struct _Ast_Identifier;
struct _Type_Info;
typedef struct _abstract_syntax_tree Ast_Node;

typedef enum
{
	invalid_type = 0xFFFF,
	byte1  = 0x001,
	byte2  = 0x004,
	byte4  = 0x010,
	byte8  = 0x040,
	ubyte1 = 0x002,
	ubyte2 = 0x008,
	ubyte4 = 0x020,
	ubyte8 = 0x080,
	real32 = 0x1000,
	real64 = 0x2000,
	empty  = 0x4000,
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

b32
is_type_primitive(Type_Info type);

b32
is_accessible(Type_Info type);

b32
is_untyped(Type_Info type);

b32
is_rhs_valid(Type_Info type);

b32
is_pointer_rhs_compatible(Type_Info type);

#endif //_TYPE_H
