#include "llvm/ADT/APFloat.h"
#include "llvm/ADT/ArrayRef.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Metadata.h"
#include <LLVM_Backend.h>
#include <LLVM_Helpers.h>
#include <Type.h>
#include <Memory.h>

typedef IntegerType *(*LLVM_Integer_Types)(LLVMContext &);

static const LLVM_Integer_Types llvm_int_types[] = {NULL, llvm::Type::getInt8Ty, llvm::Type::getInt16Ty,
												llvm::Type::getInt32Ty, llvm::Type::getInt64Ty,
												llvm::Type::getInt8Ty, llvm::Type::getInt16Ty,
												llvm::Type::getInt32Ty, llvm::Type::getInt64Ty};

static const DIType *debug_types[16] = {};

static const char *type_names[] = {"", "i8", "i16",
									"i32", "i64",
									"u8", "u16",
									"u32", "u64",
									"f32", "f64"};

void
llvm_zero_out_memory(llvm::Value *ptr, u64 size, llvm::Align alignment, IRBuilder<> *builder)
{
	auto zero = builder->getInt8(0);
	builder->CreateMemSet(ptr, zero, size, alignment);
}

AllocaInst *
allocate_variable(Function *func, u8 *var_name, Type_Info type, Backend_State backend)
{
	if(func)
	{
		auto alloc_type = apoc_type_to_llvm(type, backend);
		IRBuilder<> temp_builder(&func->getEntryBlock(), func->getEntryBlock().begin());
		auto location = temp_builder.CreateAlloca(alloc_type, 0, (char *)var_name);
		auto alignment = Align(get_type_alignment(type));
		location->setAlignment(alignment);
		llvm_zero_out_memory(location, get_type_size(type), alignment, backend.builder);
		return location;
	}
	else
	{
		Assert(false);
		return NULL;
	}
}

void
create_branch(llvm::BasicBlock *from, llvm::BasicBlock *to, Backend_State backend)
{

	if(from && to && from->getTerminator() == NULL)
		backend.builder->CreateBr(to);
}

// @TODO: remove Function * argument
llvm::Constant *
interp_val_to_llvm(Interp_Val val, Backend_State backend, Function *func)
{
	llvm::Constant *result = NULL;
	switch((int)val.type.type)
	{
		case T_UNTYPED_INTEGER:
		case T_INTEGER:
		{
			if(is_signed(val.type))
				result = ConstantInt::get(apoc_type_to_llvm(val.type, backend), val.ti64, true);
			else
				result = ConstantInt::get(apoc_type_to_llvm(val.type, backend), val.tu64, false);
		} break;
		case T_UNTYPED_FLOAT:
		case T_FLOAT:
		{
			auto ap = APFloat(val.tf64);
			result = ConstantFP::get(apoc_type_to_llvm(val.type, backend), ap);
		} break;
		case T_ARRAY:
		{
			auto array_type = apoc_type_to_llvm(val.type, backend);

			size_t elem_count = val.type.array.elem_count;
			Constant *array[elem_count];
			for(size_t i = 0 ; i < elem_count; ++i)
			{
				Interp_Val *elem = (Interp_Val *)val.pointed + i;
				array[i] = interp_val_to_llvm(*elem, backend, func);
			}
			result = ConstantArray::get((ArrayType *)array_type, makeArrayRef((Constant **)array, elem_count));
		} break;
		case T_BOOLEAN:
		{
			result = ConstantInt::get(apoc_type_to_llvm(val.type, backend), val.ti64, false);
		} break;
		case T_POINTER:
		{
			result = ConstantInt::get(Type::getInt64Ty(*backend.context), (u64)val.pointed);
			Type_Info int_type = {};
			int_type.type = T_INTEGER;
			int_type.primitive.size = ubyte8;
			result = (Constant *)create_cast(val.type, int_type, result);
			//result = ConstantExpr::getIntToPtr(result, PointerType::get(*backend.context, 0));
		} break;
		default:
			Assert(false);
	}
	return result;
}

Metadata *
create_struct_field(Debug_Info *debug, u8 *identifier,
		Type_Info type, u64 offset_in_bits)
{
	auto desc = shget(debug->file_map, type.token.file);
	auto name_ref = StringRef((char *)identifier, vstd_strlen((char *)identifier));

	return debug->builder->createMemberType(desc.file, name_ref, desc.file, type.token.line,
			get_type_size(type) * 8, get_type_alignment(type) * 8, offset_in_bits,
			DINode::FlagZero, to_debug_type(type, debug));
}

DICompositeType *
create_struct_type(Type_Info type, Debug_Info *debug)
{
	auto desc = shget(debug->file_map, type.token.file);
	if(type.structure->structure.is_union)
	{		
		//Type_Info biggest_type = union_get_biggest_type(type.structure);
		auto members = type.structure->structure.members;
		size_t member_count = SDCount(members);
		Metadata *member_data[member_count];
		b32 to_fix[member_count];
		for(size_t i = 0; i < member_count; ++i)
		{
			if(members[i].type.type == T_POINTER && members[i].type.pointer.type->type == T_STRUCT &&
					vstd_strcmp((char *)members[i].type.pointer.type->identifier, (char *)type.identifier))
			{
				to_fix[i] = true;
				Type_Info opaque_pointer = members[i].type;
				opaque_pointer.pointer.type = NULL;
				member_data[i] = create_struct_field(debug, members[i].identifier.name, opaque_pointer, 0);
			}
			else
			{
				to_fix[i] = false;

				member_data[i] = create_struct_field(debug, members[i].identifier.name,
					members[i].type, 0);
			}
		}
		auto member_array = debug->builder->getOrCreateArray(
				makeArrayRef((Metadata **)member_data, member_count)
				);

		auto created =  debug->builder->createStructType(desc.file, (char *)type.identifier,
				desc.file,
				type.token.line, get_type_size(type) * 8, 
				get_struct_alignment(type) * 8,
				DINode::FlagZero, nullptr,
				member_array);

		shput(debug->struct_map, type.identifier, created);
		for(size_t i = 0; i < member_count; ++i)
		{
			if(to_fix[i])
			{
				auto new_metadata = create_struct_field(debug, members[i].identifier.name, members[i].type, 0);
				member_array->replaceOperandWith(i, new_metadata);
			}
		}

		// @TODO: check if needed
		created->replaceElements(member_array);
		return created;
	}
	else
	{
		Ast_Variable *members = type.structure->structure.members;
		size_t memory_address = 0;
		size_t member_count = SDCount(members);
		b32 is_packed = type.is_packed;

		Metadata *member_data[member_count];
		b32 to_fix[member_count];
		int member_locations[member_count];
		for(size_t i = 0; i < member_count; ++i)
		{
			size_t member_size = get_type_size(members[i].type);
			size_t actual_size = member_size;
			size_t align_size = member_size;
			if(members[i].type.type == T_STRUCT)
			{
				align_size = get_struct_alignment(members[i].type);
			}
			else if(members[i].type.type == T_ARRAY)
			{
				align_size = get_type_alignment(*members[i].type.array.type);
			}
			if(!is_packed && memory_address % align_size != 0)
			{
				size_t align_addr = (memory_address + align_size) - 
					(memory_address % align_size);
				member_size += align_addr - memory_address;
			}

			int offset_in_bits = (memory_address + member_size - actual_size) * 8;
			member_locations[i] = offset_in_bits;
			if(members[i].type.type == T_POINTER && members[i].type.pointer.type->type == T_STRUCT &&
					vstd_strcmp((char *)members[i].type.pointer.type->identifier, (char *)type.identifier))
			{
				to_fix[i] = true;
				Type_Info opaque_pointer = members[i].type;
				opaque_pointer.pointer.type = NULL;
				member_data[i] = create_struct_field(debug, members[i].identifier.name, opaque_pointer, 
						offset_in_bits);
			}
			else
			{
				to_fix[i] = false;
				member_data[i] = create_struct_field(debug, members[i].identifier.name,
						members[i].type, offset_in_bits);
			}

			memory_address += member_size;
		}	
		auto member_array = debug->builder->getOrCreateArray(
				makeArrayRef((Metadata **)member_data, member_count)
				);
		
		auto created =  debug->builder->createStructType(desc.file, (char *)type.identifier,
				desc.file,
				type.token.line, get_type_size(type) * 8, 
				get_struct_alignment(type) * 8,
				DINode::FlagZero, nullptr,
				member_array);

		shput(debug->struct_map, type.identifier, created);
		for(size_t i = 0; i < member_count; ++i)
		{
			if(to_fix[i])
			{
				auto new_metadata = create_struct_field(debug, members[i].identifier.name, members[i].type, member_locations[i]);
				member_array->replaceOperandWith(i, new_metadata);
			}
		}

		created->replaceElements(member_array);
		return created;
	}
}

llvm::Type *
apoc_type_to_llvm(Type_Info type, Backend_State backend)
{
	if (is_untyped(type))
	{
		if(is_integer(type))
		{
			return llvm::Type::getInt64Ty(*backend.context);
		}
		else if(is_float(type))
		{
			return llvm::Type::getDoubleTy(*backend.context);
		}
	}
	if (is_integer(type))
	{
		return llvm_int_types[type.primitive.size](*backend.context);
	}
	else if (is_float(type))
	{
		if(type.primitive.size == real32) return llvm::Type::getFloatTy(*backend.context);
		else if(type.primitive.size == real64) return llvm::Type::getDoubleTy(*backend.context);
		Assert(false);
	}
	else if (type.type == T_BOOLEAN)
	{
		return llvm::Type::getInt8Ty(*backend.context);
	}
	else if (type.type == T_STRING)
	{
		llvm::Type *u8_type = llvm::Type::getInt8Ty(*backend.context);
		return llvm::PointerType::get(u8_type, 0);
	}
	else if (type.type == T_POINTER)
	{
		llvm::Type *base_type = apoc_type_to_llvm(*type.pointer.type, backend);
		if(!base_type)
			return llvm::PointerType::get(*backend.context, 0);
		return llvm::PointerType::get(base_type, 0);
	}
	else if (type.type == T_STRUCT)
	{
		auto struct_type = shget(backend.struct_types, type.identifier);
		return struct_type;
	}
	else if (type.type == T_ARRAY)
	{
		Type *elem_type = apoc_type_to_llvm(*type.array.type, backend);
		auto array_type = ArrayType::get(elem_type, type.array.elem_count);
		return array_type;
	}
	else if (type.type == T_VOID)
	{
		return llvm::Type::getVoidTy(*backend.context);
	}
	Assert(false);
	return NULL;
}

DIType *
to_debug_type(Type_Info type, Debug_Info *debug)
{
	if (is_integer(type))
	{
		DIType *result = (DIType *)debug_types[type.primitive.size];
		if (result)
			return result;

		int bytes = get_type_size(type);
		if (is_signed(type))
		{
			result = debug->builder->createBasicType(type_names[type.primitive.size], 8 * bytes, dwarf::DW_ATE_signed);
			debug_types[type.primitive.size] = result;
			return result;
		}
		else
		{
			result = debug->builder->createBasicType(type_names[type.primitive.size], 8 * (type.primitive.size - 4), dwarf::DW_ATE_unsigned);
			debug_types[type.primitive.size] = result;
			return result;
		}
	}
	else if (is_float(type))
	{
		DIType *result = (DIType *)debug_types[type.primitive.size];
		if (result)
			return result;

		if(type.primitive.size == real32) 
		{
			result = debug->builder->createBasicType(type_names[type.primitive.size], 32, dwarf::DW_ATE_float);
			debug_types[type.primitive.size] = result;
			return result;
		}
		else if(type.primitive.size == real64) 
		{
			result = debug->builder->createBasicType(type_names[type.primitive.size], 64, dwarf::DW_ATE_float);
			debug_types[type.primitive.size] = result;
			return result;
		}
		Assert(false);
	}
	else if (type.type == T_BOOLEAN)
	{
		static DIType *bool_debug_type = NULL;
		if (bool_debug_type)
			return bool_debug_type;

		bool_debug_type = debug->builder->createBasicType("bool", 8, dwarf::DW_ATE_boolean);
		return bool_debug_type;
	}
	else if (type.type == T_STRING)
	{
		static DIType *string_type = NULL;
		if (string_type)
			return string_type;
		
		Type_Info u8_type = {};
		u8_type.type = T_INTEGER;
		u8_type.primitive.size = ubyte1;
		auto u8_debug = to_debug_type(u8_type, debug);

		// @TODO: change for systems different than 64 bits
		string_type = debug->builder->createPointerType(u8_debug, 64);
		return string_type;
	}
	else if (type.type == T_POINTER)
	{
		// @TODO: change for systems different than 64 bits
		if(type.pointer.type == NULL)
			return debug->builder->createPointerType(NULL, 64);
		return debug->builder->createPointerType(to_debug_type(*type.pointer.type, debug),  64);
	}
	else if (type.type == T_STRUCT)
	{
		auto got = shget(debug->struct_map, type.identifier);
		if(got)
			return got;

		auto created = create_struct_type(type, debug);
		Assert(created);
		return created;
	}
	else if (type.type == T_ARRAY)
	{
		DINodeArray *subscripts = new DINodeArray();
		return debug->builder->createArrayType(type.array.elem_count, 16 * 8,
				to_debug_type(*type.array.type, debug), *subscripts);
	}
	else if (type.type == T_VOID)
	{
		static auto void_ty = debug->builder->createUnspecifiedType("void");
		return void_ty;
	}
	Assert(false);
	return NULL;
}

Instruction::CastOps
get_cast_type(Type_Info to, Type_Info from, b32 *should_cast)
{
	*should_cast = true;
	if(to.identifier && from.identifier)
	{
		if(vstd_strcmp((char *)to.identifier, (char *)from.identifier))
		{
			*should_cast = false;
			return Instruction::CastOps::CastOpsEnd;
		}
	}
	if(is_untyped(to))
	{
		if(is_integer(to))
		{
			to.primitive.size = byte8;
		}
		else if(is_float(to))
		{
			to.primitive.size = real64;
		}
	}
	if(is_untyped(from))
	{
		if(is_integer(from))
		{
			from.primitive.size = byte8;
		}
		else if(is_float(from))
		{
			from.primitive.size = real64;
		}
	}
	if(to.type == T_STRING)
	{
		Type_Info u8_type = {T_INTEGER};
		u8_type.primitive.size = ubyte1;
		to.type = T_POINTER;
		to.pointer.type = &u8_type;
	}
	if(from.type == T_STRING)
	{
		Type_Info u8_type = {T_INTEGER};
		u8_type.primitive.size = ubyte1;
		from.type = T_POINTER;
		from.pointer.type = &u8_type;
	}

	if(is_float(to))
	{
		if(is_float(from))
		{
			if(from.primitive.size > to.primitive.size)
				return Instruction::CastOps::FPTrunc;
			if(from.primitive.size < to.primitive.size)
				return Instruction::CastOps::FPExt;
			*should_cast = false;
			return Instruction::CastOps::CastOpsEnd;
		}
		if(is_integer(from))
		{
			if(is_signed(from))
			{
				return Instruction::CastOps::SIToFP;
			}
			else
			{
				return Instruction::CastOps::UIToFP;
			}
		}
	}
	else if(is_integer(to))
	{
		if(is_signed(to))
		{
			if(is_integer(from))
			{
				if(is_signed(from))
				{
					if(from.primitive.size < to.primitive.size)
					{
						return Instruction::CastOps::ZExt;
					}
					else if(from.primitive.size > to.primitive.size)
					{
						return Instruction::CastOps::Trunc;
					}
					else
					{
						*should_cast = false;
						return Instruction::CastOps::CastOpsEnd;
					}
				}
				else
				{
					size_t signed_size = from.primitive.size - 4;
					
					if(signed_size < to.primitive.size)
					{
						return Instruction::CastOps::SExt;
					}
					else if(signed_size > to.primitive.size)
					{
						return Instruction::CastOps::Trunc;
					}
					else
					{
						return Instruction::CastOps::SExt;
					}
				}
			}
			else if(from.type == T_POINTER)
			{
				return Instruction::CastOps::PtrToInt;
			}
			else if(from.type == T_BOOLEAN)
			{
				return Instruction::CastOps::ZExt;
			}
			else
			{
				
				Assert(is_float(from));
				return Instruction::CastOps::FPToSI;
			}
		}
		else
		{
			size_t to_size = to.primitive.size - 4;
			if(is_integer(from))
			{
				if(is_signed(from))
				{
					if(from.primitive.size < to_size)
					{
						return Instruction::CastOps::ZExt;
					}
					else if(from.primitive.size > to_size)
					{
						return Instruction::CastOps::Trunc;
					}
					else
					{
						*should_cast = false;
						return Instruction::CastOps::CastOpsEnd;
					}
				}
				else
				{
					size_t signed_size = from.primitive.size - 4;
					
					if(signed_size < to_size)
					{
						return Instruction::CastOps::ZExt;
					}
					else if(signed_size > to_size)
					{
						return Instruction::CastOps::Trunc;
					}
					else
					{
						*should_cast = false;
						return Instruction::CastOps::CastOpsEnd;
					}
				}
			}
			else if (from.type == T_POINTER)
			{
				return Instruction::CastOps::PtrToInt;
			}
			else
			{
				Assert(is_float(from));
				return Instruction::CastOps::FPToSI;
			}
		}
	}
	else if(to.type == T_BOOLEAN)
	{
		if(is_integer(from))
			return Instruction::CastOps::Trunc;
		Assert(false);
	}
	else
	{
		Assert(to.type == T_POINTER);
		if(is_integer(from))
			return Instruction::CastOps::IntToPtr;
		else if(from.type == T_POINTER)
		{
			*should_cast = false;
			return Instruction::CastOps::CastOpsEnd;
		}
		else if(from.type == T_ARRAY)
		{
			*should_cast = false;
			return Instruction::CastOps::CastOpsEnd;
		}
		
		Assert(false);
		*should_cast = false;
		return Instruction::CastOps::CastOpsEnd;
	}
	*should_cast = false;
	return Instruction::CastOps::ZExt;
}
