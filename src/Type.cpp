#include <Type.h>
#include <Basic.h>
#include <Analyzer.h>

int
get_type_size(Type_Info type)
{
	if(is_integer(type))
	{
		int byte_size = type.primitive.size;
		if(!is_signed(type))
			byte_size -= 4;
		return byte_size;
	}
	else if(is_float(type))
	{
		if(type.primitive.size == real32)
			return 4;
		if(type.primitive.size == real64)
			return 8;
		Assert(false);
	}
	else if(type.type == T_POINTER)
		return sizeof(size_t);
	else if(type.type == T_ARRAY)
	{
		return type.array.elem_count * get_type_size(*type.array.type);
	}
	else if(type.type == T_STRING)
	{
		return vstd_strlen((char *)type.v_string.content->name);
	}
	else if(type.type == T_BOOLEAN)
		return 1;
	Assert(false);
	return 0;
}

b32
is_signed(Type_Info type)
{
	Assert(is_type_primitive(type));
	return type.primitive.size >= byte1 && byte8 >= type.primitive.size;
}

b32
is_pointer_rhs_compatible(Type_Info type)
{
	if(type.type == T_UNTYPED_INTEGER || type.type == T_INTEGER)
		return true;
	return false;	
}

b32
is_integer(Type_Info type)
{
	return type.type == T_INTEGER || type.type == T_UNTYPED_INTEGER;
}

b32
is_float(Type_Info type)
{
	return type.type == T_FLOAT || type.type == T_UNTYPED_FLOAT;
}

b32
is_castable(Type_Info type, Type_Info cast)
{
	if(cast.type == T_BOOLEAN)
	{
		if(is_integer(type))
			return true;
		return false;
	}
	if(is_integer(type) || is_float(type))
	{
		if(cast.type == T_POINTER && is_integer(type))
			return true;
		if(cast.type == T_INTEGER || cast.type == T_FLOAT)
			return true;
		return false;
	}
	if(type.type == T_BOOLEAN)
	{
		if(cast.type == T_INTEGER || cast.type == T_FLOAT)
			return true;
		return false;
	}
	if(type.type == T_POINTER)
	{
		if(cast.type != T_POINTER)
			return false;
		return true;
	}
	return false;
}

Type_Info
fix_type(File_Contents *f, Type_Info type)
{
	Type_Info result = type;
	if(result.type == T_POINTER)
	{
		auto pointed = fix_type(f, *result.pointer.type);
		Type_Info *to_store = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
		memcpy(to_store, &pointed, sizeof(Type_Info));
		result.pointer.type = to_store;
		return result;
	}
	else if(!type_is_invalid(result))
		return result;
	else if(type.identifier)
	{
		result = get_type(f, type.identifier);
	}
	return result;
}

b32
is_string_pointer(Type_Info type)
{
	if(type.type == T_POINTER && type.pointer.type->type == T_INTEGER &&
		(type.pointer.type->primitive.size == ubyte1 || type.pointer.type->primitive.size == byte1))
		return true;
	return false;
}

b32
is_type_primitive(Type_Info type)
{
	if(type.type == T_UNTYPED_INTEGER || type.type == T_UNTYPED_FLOAT || 
	   type.type == T_INTEGER || type.type == T_FLOAT || type.type == T_VOID || type.type == T_BOOLEAN)
		return true;
	return false;
}

b32
is_accessible(Type_Info type)
{
	if(type.type == T_STRUCT)
		return true;
	if(type.type == T_POINTER)
		return is_accessible(*type.pointer.type);
	return false;
}

b32
is_untyped(Type_Info type)
{
	if(type.type == T_UNTYPED_FLOAT || type.type == T_UNTYPED_INTEGER)
		return true;
	return false;
}

b32
is_rhs_valid(Type_Info type)
{
	Assert(type.type != T_INVALID);
	if(type.type == T_STRUCT || type.type == T_ARRAY || type.type == T_POINTER
	   || type.type == T_VOID || type.type == T_STRING)
		return false;
	return true;
}
