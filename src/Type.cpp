#include <Type.h>
#include <Basic.h>
#include <Analyzer.h>
#include <Parser.h>

int
primitive_size_to_alignment(i64 size)
{
	switch(size)
	{
		case ubyte1:
		case byte1: return 1;
		case ubyte2:
		case byte2: return 2;
		case real32:
		case ubyte4:
		case byte4: return 4;
		case real64:
		case ubyte8:
		case byte8: return 8;
		default: Assert(false); return 0;
	}
}

int
get_type_alignment(Type_Info type)
{
	switch(type.type)
	{
		case T_UNTYPED_FLOAT:
		case T_UNTYPED_INTEGER:
		type.primitive.size = byte8;
		case T_FLOAT:
		case T_INTEGER:
		{
			return primitive_size_to_alignment(type.primitive.size);
		} break;
		case T_POINTER:
		return sizeof(size_t);
		case T_STRUCT:
		case T_ARRAY:
		return sizeof(size_t) * 2;
		default:
		{
			LG_DEBUG("not implemented type alignment");
			Assert(false);
			return 0;
		} break;
	}
}
int
get_struct_alignment(Type_Info struct_type)
{
	Assert(struct_type.type == T_STRUCT);
	size_t biggest_member = 1;
	auto members = struct_type.structure->structure.members;
	size_t member_count = SDCount(members);
	for(size_t i = 0; i < member_count; ++i)
	{
		int this_member = 1;
		if(members[i].type.type == T_STRUCT)
			this_member = get_struct_alignment(members[i].type);
		else
			this_member = get_type_size(members[i].type);
		
		if(this_member > biggest_member) biggest_member = this_member;
	}
	return biggest_member;
}

int
get_type_size(Type_Info type)
{
	if(type.type == T_UNTYPED_INTEGER)
		type.primitive.size = byte8;
	else if(type.type == T_UNTYPED_FLOAT)
		type.primitive.size = real64;

	if(is_integer(type) || is_float(type))
	{
		// @TODO: since the types are aligned to their size this works
		// but it doesn't feel nice
		return primitive_size_to_alignment(type.primitive.size);
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
	else if(type.type == T_STRUCT)
	{
		Ast_Variable *members = type.structure->structure.members;
		size_t result = 0;
		size_t memory_address = 1;
		size_t member_count = SDCount(members);
		size_t largest_member = 1;
		b32 is_packed = type.is_packed;
		for(size_t i = 0; i < member_count; ++i)
		{
			size_t member_size = get_type_size(members[i].type);
			size_t align_size = member_size;
			if(members[i].type.type == T_STRUCT)
			{
				align_size = get_struct_alignment(members[i].type);
			}
			if(align_size > largest_member)
				largest_member = align_size;

			if(is_packed && align_size % memory_address != 0)
			{
				size_t align_addr = (memory_address + align_size) - 
					(memory_address % align_size);
				member_size += align_addr - memory_address;
			}

			result += member_size;
			memory_address += member_size;
		}
		return result % largest_member == 0 ? result :
			(result + largest_member) - (result % largest_member);
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
	if(type.type == T_ARRAY && cast.type == T_POINTER)
		return is_castable(*type.array.type, *cast.pointer.type);
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
		if(!is_integer(cast) && cast.type != T_POINTER)
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
	else if(type.type == T_ENUM)
		return true;
	else if(type.type == T_POINTER)
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
is_or_is_pointing_to(Type_Info type, Type_Type check)
{
	if(type.type == check)
		return true;
	else if(type.type == T_POINTER)
		return is_or_is_pointing_to(*type.pointer.type, check);
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
