
b32
is_pointer_rhs_compatible(Type_Info type)
{
	if(type.type == T_UNTYPED_INTEGER || type.type == T_INTEGER)
		return true;
	return false;	
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
	   type.type == T_INTEGER || type.type == T_FLOAT || type.type == T_VOID)
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
