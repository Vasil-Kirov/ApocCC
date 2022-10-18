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

Type_Info
union_get_biggest_type(Type_Info union_type)
{
	auto member_types = union_type.structure.member_types;
	size_t member_count = union_type.structure.member_count;
	Type_Info type = {};
	type.type = T_INVALID;
	size_t biggest_type = 0;
	for(size_t i = 0; i < member_count; ++i)
	{
		size_t type_size = get_type_size(member_types[i]);
		if(type_size > biggest_type)
		{
			type = member_types[i];
			biggest_type = type_size;
		}
	}
	return type;
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
		case T_FUNC:
		case T_POINTER:
		return sizeof(size_t);
		case T_STRUCT:
		return get_struct_alignment(type);
		case T_ARRAY:
		return get_type_alignment(*type.array.type);
		case T_BOOLEAN:
		return 1;
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
	auto member_types = struct_type.structure.member_types;
	size_t member_count = struct_type.structure.member_count;
	for(size_t i = 0; i < member_count; ++i)
	{
		int this_member = 1;
		this_member = get_type_alignment(member_types[i]);
		
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
	else if(type.type == T_POINTER || type.type == T_FUNC)
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
		if(type.structure.is_union)
		{	
			Type_Info biggest_type = union_get_biggest_type(type);
			return get_type_size(biggest_type);
		}
		else
		{
			auto members = type.structure.member_types;
			size_t result = 0;
			size_t memory_address = 0;
			size_t member_count = type.structure.member_count;
			size_t largest_member = 1;
			b32 is_packed = type.structure.is_packed;
			for(size_t i = 0; i < member_count; ++i)
			{
				size_t member_size = get_type_size(members[i]);
				size_t align_size = member_size;
				if(members[i].type == T_STRUCT)
				{
					align_size = get_struct_alignment(members[i]);
				}
				else if(members[i].type == T_ARRAY)
				{
					align_size = get_type_alignment(*members[i].array.type);
				}
				if(align_size > largest_member)
					largest_member = align_size;

				if(!is_packed && memory_address % align_size != 0)
				{
					size_t align_addr = (memory_address + align_size) - 
						(memory_address % align_size);
					member_size += align_addr - memory_address;
				}

				result += member_size;
				memory_address += member_size;
			}
			if (is_packed)
				return result;

			return result % largest_member == 0 ? result :
				(result + largest_member) - (result % largest_member);
		}
	}
	else if(type.type == T_BOOLEAN)
		return 1;
	else if(type.type == T_VOID)
		return 0;
	Assert(false);
	return 0;
}

b32
is_standard_size(Type_Info *type)
{
	int size = get_type_size(*type);
	if(size == 0 || size == 1 || size == 2 || size == 4 || size == 8)
		return true;
	return false;
}

b32
is_signed(Type_Info type)
{
	Assert(is_type_primitive(&type));
	return type.type == T_UNTYPED_INTEGER || (type.primitive.size >= byte1 && byte8 >= type.primitive.size);
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
		return true;
		//return is_castable(*type.array.type, *cast.pointer.type);
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

b32
type_is_invalid(Type_Info *type)
{
	if(type->type == T_POINTER)
		return type_is_invalid(type->pointer.type);
	else if(type->type == T_ARRAY)
		return type_is_invalid(type->array.type);
	else if(type->type == T_INVALID)
		return true;
	return false;
}

Type_Info *
fix_type(File_Contents *f, Type_Info *type, b32 is_fixing_struct)
{
	Type_Info *result = NULL;
	if(!type->f_nullable)
		type->f_nullable = f;

	switch(type->type)
	{
		case T_POINTER:
		{
			result = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			memcpy(result, type, sizeof(Type_Info));
			auto pointed = fix_type(f, type->pointer.type, is_fixing_struct);
			result->pointer.type = pointed;
			result->f_nullable = f;
			return result;
		} break;
		case T_STRUCT:
		{
			if(is_fixing_struct)
				break;
			result = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			memcpy(result, type, sizeof(Type_Info));
			result->f_nullable = f;
			size_t member_count = type->structure.member_count;
			for(size_t i = 0; i < member_count; ++i)
			{
				result->structure.member_types[i] = *fix_type(f, &result->structure.member_types[i], true);
			}
		} break;
		case T_MODULE:
		{
			//result = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
			auto mod = find_module(f, type->mod.selector_id->identifier.name);
			if(!mod)
				raise_formated_semantic_error(f, *type->mod.selector_id->identifier.token, "Couldn't find imported module %s", type->mod.selector_id->identifier.name);
			result = get_type(mod->f, type->mod.selected_id->identifier.name);
			if(!result->f_nullable)
				result->f_nullable = mod->f;

			if(!result)
				raise_formated_semantic_error(f, *type->mod.selected_id->identifier.token, "Couldn't find type %s, imported from module %s", type->mod.selected_id->identifier.name, type->mod.selector_id->identifier.name);

			u8 *type_name = var_type_to_name(result, false);
			result->identifier = (u8 *)AllocateCompileMemory(vstd_strlen((char *)type_name) + vstd_strlen((char *)type->mod.selector_id->identifier.name) + 10);
			//vstd_strcat((char *)result->identifier, (char *)type->mod.selector_id->identifier.name);
			//vstd_strcat((char *)result->identifier, "!");
			vstd_strcat((char *)result->identifier, (char *)type_name);
			return result;
		} break;
		case T_ARRAY:
		{
			type->array.type = fix_type(f, type->array.type);
		} break;
		case T_FUNC:
		{
			type->func.return_type = fix_type(f, type->func.return_type);
			int param_count = SDCount(type->func.param_types);
			for(int i = 0; i < param_count; ++i)
			{
				type->func.param_types[i] = *fix_type(f, &type->func.param_types[i]);
			}
		} break;
		default: break;
	}

	if(!type_is_invalid(type))
	{
		return type;
	}
	else if(type->identifier)
	{
		result = get_type(f, type->identifier);

		if(!result)
			raise_formated_semantic_error(f, *type->token, "Type %s is undefined", type->identifier);

		if(!result->f_nullable)
			result->f_nullable = f;

		if(result->token == NULL || result->token->file == NULL)
			result->token = type->token;
	}
	return result;
}

b32
is_user_defined(Type_Info *type)
{
	Type_Type kind = type->type;
	return kind == T_STRUCT || kind == T_ENUM || kind == T_MODULE;
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
is_type_primitive(Type_Info *type)
{
	if(type->type == T_UNTYPED_INTEGER || type->type == T_UNTYPED_FLOAT || 
	   type->type == T_INTEGER || type->type == T_FLOAT || type->type == T_VOID || type->type == T_BOOLEAN)
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
is_or_is_pointing_to(Type_Info *type, Type_Type check)
{
	if(type->type == check)
		return true;
	else if(type->type == T_POINTER)
		return is_or_is_pointing_to(type->pointer.type, check);
	return false;
}

b32
is_rhs_valid(Type_Info type)
{
	Assert(type.type != T_INVALID);
	// @TODO: might wanna do something more with pointers
	if(type.type == T_STRUCT || type.type == T_ARRAY /* || type.type == T_POINTER*/
	   || type.type == T_VOID || type.type == T_STRING)
		return false;
	return true;
}
