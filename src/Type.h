/* date = July 20th 2022 9:18 am */

#ifndef _TYPE_H
#define _TYPE_H
#include <Basic.h>

struct _Ast_Identifier;
struct _Type_Info;
typedef struct _abstract_syntax_tree Ast_Node;
typedef struct _Token_Iden Token_Iden;

typedef enum : i32
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
	real128 = 13,
	byte128  = 14,
	detect // @TODO: Remove
} Var_Size;

typedef enum : i32
{
	T_UNTYPED_INTEGER = 1 ,
	T_UNTYPED_FLOAT   = 2 ,
	T_INTEGER         = 3 ,
	T_FLOAT           = 4 ,
	T_STRUCT          = 5 ,
	T_ARRAY           = 6 ,
	T_POINTER         = 7 ,
	T_VOID            = 8 ,
	T_STRING          = 9 ,
	T_BOOLEAN	  = 10,
	T_FUNC            = 11,
	T_ENUM            = 12,
	T_DETECT          = 13,
	T_INVALID         = 14,
	T_MODULE          = 15,
} Type_Type;

typedef enum
{
	ARR_STATIC = 1 << 0,
	ARR_DYNAMIC = 1 << 1,
} Type_Array;

typedef struct _Type_Info
{
	Type_Type type;
	Token_Iden *token;
	struct _File_Contents *f_nullable;
	union
	{
		struct
		{
			Var_Size size;
		} primitive;
		struct 
		{
			int member_count;
			b32 is_union;
			b32 is_packed;
			u8 *name;
			u8 **member_names;
			struct _Type_Info *member_types;
		} structure;
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
		struct
		{
			struct _Type_Info *param_types; // SDArray
			struct _Type_Info *return_type;
			int calling_convention;
		} func;
		struct
		{
			Ast_Node *selected_id;
			Ast_Node *selector_id;
		} mod;
	};
	// @TODO: probably should remove this since it doesn't seem like it's that useful
	struct _Type_Info *unencoded_type;
	u8 *identifier;
	b32 is_const;
} Type_Info;

void
set_register_bit_size(u64 bit_size);

u64
get_register_bit_size();

void
init_type_system();

void
add_fixable_type(struct _File_Contents *f, Type_Info *type);

void
fix_all_types();

i32
struct_get_offset_to_element_in_bytes(Type_Info *type, i32 index);

Type_Info
union_get_biggest_type(Type_Info type);

int
get_type_alignment(Type_Info type);

int
get_struct_alignment(Type_Info struct_type);

b32
is_standard_size(Type_Info *type);

b32
is_or_is_pointing_to(Type_Info *type, Type_Type check);

int
get_type_size(Type_Info type);

b32
is_string_pointer(Type_Info type);

b32
is_castable(Type_Info castee, Type_Info cast_type);

b32
is_signed(Type_Info type);

b32
is_type_primitive(Type_Info *type);

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

b32
is_user_defined(Type_Info *type);

Type_Info *
fix_type(struct _File_Contents *f, Type_Info *type, b32 is_fixing_struct = false);


#endif //_TYPE_H
