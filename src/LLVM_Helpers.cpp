#include "llvm/ADT/APFloat.h"
#include "llvm/ADT/ArrayRef.h"
#include "llvm/ADT/StringExtras.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Metadata.h"
#include "llvm/Support/CommandLine.h"
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
	switch(size)
	{
		case 1:
		{
			auto zero = builder->getInt8(0);
			auto store_inst = builder->CreateStore(zero, ptr);
			store_inst->setAlignment(alignment);
		} break;
		case 2:
		{
			auto zero = builder->getInt16(0);
			auto store_inst = builder->CreateStore(zero, ptr);
			store_inst->setAlignment(alignment);
		} break;
		case 4:
		{
			auto zero = builder->getInt32(0);
			auto store_inst = builder->CreateStore(zero, ptr);
			store_inst->setAlignment(alignment);
		} break;
		case 8:
		{
			auto zero = builder->getInt64(0);
			auto store_inst = builder->CreateStore(zero, ptr);
			store_inst->setAlignment(alignment);
		} break;
		default:
		{
			auto zero = builder->getInt8(0);
			builder->CreateMemSet(ptr, zero, size, alignment);
		} break;
	}
}

AllocaInst *
allocate_with_llvm_no_zero(Function *func, u8 *var_name, llvm::Type *type,
		u64 align)
{
	Assert(func);
	IRBuilder<> temp_builder(&func->getEntryBlock(), func->getEntryBlock().begin());
	auto location = temp_builder.CreateAlloca(type, 0, (char *)var_name);
	auto alignment = Align(align);
	location->setAlignment(alignment);
	return location;
}

AllocaInst *
allocate_with_llvm(Function *func, u8 *var_name, llvm::Type *type, Backend_State *backend,
		u64 align, u64 size_in_bytes)
{
	Assert(func);
	auto location = allocate_with_llvm_no_zero(func, var_name, type, align);
	auto alignment = Align(align);
	llvm_zero_out_memory(location, size_in_bytes, alignment, backend->builder);
	return location;
}

AllocaInst *
allocate_variable(Function *func, u8 *var_name, Type_Info type, Backend_State *backend)
{
	if(func)
	{
		auto alloc_type = apoc_type_to_llvm(type, backend);
		IRBuilder<> temp_builder(&func->getEntryBlock(), func->getEntryBlock().begin());
		auto location = temp_builder.CreateAlloca(alloc_type, 0, (char *)var_name);
		auto alignment = Align(get_type_alignment(type));
		location->setAlignment(alignment);
		llvm_zero_out_memory(location, get_type_size(type), alignment, backend->builder);
		return location;
	}
	else
	{
		Assert(false);
		return NULL;
	}
}

void
create_branch(llvm::BasicBlock *from, llvm::BasicBlock *to, Backend_State *backend)
{
	backend->builder->SetInsertPoint(from);
	if(from && to && from->getTerminator() == NULL)
		backend->builder->CreateBr(to);
}

llvm::StructType *
get_type_info_kind(const char *name, Backend_State *backend)
{
	auto result = shget(backend->struct_types, name);
	if(!result)
	{
		LG_FATAL("%s is not defined, this type is needed for using\n"
				"apoc calling convention var args functions\n"
				"and run-time type information, you can find it in the Basic.apoc\n"
				"standard library", name);
	}
	return result;
}

void
gep_and_write_val_int(llvm::Value *ptr, llvm::StructType *type, Backend_State *backend, int index,
		u64 val, int bit_size)
{
	Constant *constant;
	llvm::Type *size_type;
	switch(bit_size)
	{
		case 8:
		{
			size_type = llvm::Type::getInt8Ty(*backend->context);
		} break;
		case 16:
		{
			size_type = llvm::Type::getInt16Ty(*backend->context);
		} break;
		case 32:
		{
			size_type = llvm::Type::getInt32Ty(*backend->context);
		} break;
		case 64:
		{
			size_type = llvm::Type::getInt64Ty(*backend->context);
		} break;
	}
	constant = ConstantInt::get(size_type, val);
	auto to_write = backend->builder->CreateStructGEP(type, ptr, index);
	llvm_store(to_write, constant, backend, bit_size);
}

void
write_type_info_pointer_to_llvm(Type_Info *type_ptr, llvm::Value *ptr,
		llvm::StructType *type_info_type, Backend_State *backend, llvm::Function *func)
{
	if(type_ptr)
	{
		IRBuilder<> temp_builder(&func->getEntryBlock(), func->getEntryBlock().begin());
		auto ptr_ptr = temp_builder.CreateAlloca(type_info_type, 0, (char *)"type_info_ptr");
		ptr_ptr->setAlignment(Align(16));
		write_type_info_to_llvm(*type_ptr, ptr_ptr, type_info_type, backend, func);
		auto pointed_ptr = backend->builder->CreateStructGEP(type_info_type, ptr, 1);
		backend->builder->CreateStore(ptr_ptr, pointed_ptr);
	}
}

AllocaInst *
write_string(u8 *str, llvm::Function *func, Backend_State *backend)
{
	size_t len = vstd_strlen((char *)str);
	Type_Info u8_t = {};
	u8_t.type = T_INTEGER;
	u8_t.primitive.size = ubyte1;
	Type_Info str_array = {};
	str_array.array.type = &u8_t;
	// @TODO: null character?
	str_array.array.elem_count = len + 1;
	str_array.array.array_type = ARR_STATIC;
	auto llvm_array = apoc_type_to_llvm(str_array, backend);

	IRBuilder<> temp_builder(&func->getEntryBlock(), func->getEntryBlock().begin());
	auto ptr_ptr = temp_builder.CreateAlloca(llvm_array, 0, (char *)"str_ptr");
	GlobalVariable *global_str_lit = backend->builder->CreateGlobalString(
			StringRef((char *)str, len)
			);
	auto store_inst = backend->builder->CreateStore(global_str_lit, ptr_ptr);
	store_inst->setAlignment(Align(8));
	return ptr_ptr;
}

void
write_struct_to_llvm(Type_Info to_write, llvm::Value *ptr, Backend_State *backend,
		Function *func, llvm::Type *type_info_type)
{
	auto llvm_type = get_type_info_kind("Type_Struct", backend);
	gep_and_write_val_int(ptr, llvm_type, backend, 1, to_write.structure.member_count, 32);
	gep_and_write_val_int(ptr, llvm_type, backend, 2, to_write.structure.is_union, 8);
	gep_and_write_val_int(ptr, llvm_type, backend, 3, to_write.structure.is_packed, 8);
	auto name_idx = backend->builder->CreateStructGEP(llvm_type, ptr, 4);
	auto name_ptr = write_string(to_write.structure.name, func, backend);
	auto store_inst = backend->builder->CreateStore(name_ptr, name_idx);
	store_inst->setAlignment(Align(8));
	auto member_names = backend->builder->CreateStructGEP(llvm_type, ptr, 5);
	auto member_types = backend->builder->CreateStructGEP(llvm_type, ptr, 6);
	auto zero = ConstantInt::get(*backend->context, llvm::APInt(64, 0, true));
	for(size_t i = 0; i < to_write.structure.member_count; ++i)
	{
		llvm::Value *idx_list[2] = {
			zero,
			ConstantInt::get(Type::getInt64Ty(*backend->context), i),
		};
		auto name_elem_ptr = backend->builder->CreateGEP(member_names->getType(), member_names,
				idx_list);
		auto name_ptr = write_string(to_write.structure.member_names[i], func, backend);
		store_inst = backend->builder->CreateStore(name_ptr, name_elem_ptr);
		store_inst->setAlignment(Align(8));

		auto type_elem_ptr = backend->builder->CreateGEP(member_types->getType(), member_types,
				idx_list);
		write_type_info_to_llvm(to_write.structure.member_types[i], type_elem_ptr,
				type_info_type, backend, func);
	}
}

void
write_array_to_llvm(Type_Info to_write, llvm::Value *ptr,
		Backend_State *backend, llvm::Function *func)
{
	auto llvm_type = get_type_info_kind("Type_Array", backend);
	write_type_info_pointer_to_llvm(to_write.array.type, ptr, llvm_type, backend, func);
	gep_and_write_val_int(ptr, llvm_type, backend, 2, to_write.array.elem_count, 64);
}

void
write_primitive_to_llvm(Type_Info to_write, llvm::Value *ptr, Backend_State *backend)
{
	auto llvm_type = get_type_info_kind("Type_Primitive", backend);
	gep_and_write_val_int(ptr, llvm_type, backend, 1, to_write.primitive.size, 32);
}

void
write_type_info_to_llvm(Type_Info to_write, llvm::Value *ptr, llvm::Type *llvm_type,
		Backend_State *backend, llvm::Function *func)
{
	if(to_write.type == T_UNTYPED_INTEGER)
	{
		to_write.type = T_INTEGER;
		to_write.primitive.size = byte8;
	}
	if(to_write.type == T_UNTYPED_FLOAT)
	{
		to_write.type = T_FLOAT;
		to_write.primitive.size = real64;
	}

	gep_and_write_val_int(ptr, (StructType *)llvm_type, backend, 0, to_write.type, 32);

	switch(to_write.type)
	{
		case T_FLOAT:
		case T_BOOLEAN:
		case T_INTEGER:
		{
			write_primitive_to_llvm(to_write, ptr, backend);
		} break;
		case T_STRUCT:
		{
			write_struct_to_llvm(to_write, ptr, backend, func, llvm_type);
		} break;
		case T_POINTER:
		{
			auto pointer_type = get_type_info_kind("Type_Pointer", backend);
			write_type_info_pointer_to_llvm(to_write.pointer.type, ptr, pointer_type, backend,
					func);
		} break;
		case T_ARRAY:
		{
			write_array_to_llvm(to_write, ptr, backend, func);
		} break;
		default:
		{
			Assert(false);
		} break;
	}
}

// @TODO: remove Function * argument
llvm::Constant *
interp_val_to_llvm(Interp_Val val, Backend_State *backend, Function *func)
{
	llvm::Constant *result = NULL;
	switch((int)val.type.type)
	{
		case T_UNTYPED_INTEGER:
		case T_INTEGER:
		{
			if(is_signed(val.type))
				result = ConstantInt::get(apoc_type_to_llvm(val.type, backend), val._i64, true);
			else
				result = ConstantInt::get(apoc_type_to_llvm(val.type, backend), val._u64, false);
		} break;
		case T_UNTYPED_FLOAT:
		case T_FLOAT:
		{
			auto ap = APFloat(val._f64);
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
			result = ConstantInt::get(apoc_type_to_llvm(val.type, backend), val._i64, false);
		} break;
		case T_POINTER:
		{
			result = ConstantInt::get(Type::getInt64Ty(*backend->context), (u64)val.pointed);
			Type_Info int_type = {};
			int_type.type = T_INTEGER;
			int_type.primitive.size = ubyte8;
			result = (Constant *)create_cast(val.type, int_type, result);
			//result = ConstantExpr::getIntToPtr(result, PointerType::get(*backend->context, 0));
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
	if(type.structure.is_union)
	{		
		//Type_Info biggest_type = union_get_biggest_type(type.structure);
		auto members = type.structure.member_types;
		auto names = type.structure.member_names;
		size_t member_count = type.structure.member_count;
		Metadata *member_data[member_count];
		b32 to_fix[member_count];
		for(size_t i = 0; i < member_count; ++i)
		{
			if(members[i].type == T_POINTER && members[i].pointer.type->type == T_STRUCT)
			{
				to_fix[i] = true;
				Type_Info opaque_pointer = members[i];
				opaque_pointer.pointer.type = NULL;
				member_data[i] = create_struct_field(debug, names[i], opaque_pointer, 0);
			}
			else
			{
				to_fix[i] = false;

				member_data[i] = create_struct_field(debug, names[i],
					members[i], 0);
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
				auto new_metadata = create_struct_field(debug, names[i], members[i], 0);
				member_array->replaceOperandWith(i, new_metadata);
			}
		}

		// @TODO: check if needed
		created->replaceElements(member_array);
		return created;
	}
	else
	{
		auto members = type.structure.member_types;
		size_t memory_address = 0;
		size_t member_count = type.structure.member_count;
		b32 is_packed = type.structure.is_packed;

		Metadata *member_data[member_count];
		b32 to_fix[member_count];
		int member_locations[member_count];
		for(size_t i = 0; i < member_count; ++i)
		{
			size_t member_size = get_type_size(members[i]);
			size_t actual_size = member_size;
			size_t align_size = member_size;
			if(members[i].type== T_STRUCT)
			{
				align_size = get_struct_alignment(members[i]);
			}
			else if(members[i].type== T_ARRAY)
			{
				align_size = get_type_alignment(*members[i].array.type);
			}
			if(!is_packed && memory_address % align_size != 0)
			{
				size_t align_addr = (memory_address + align_size) - 
					(memory_address % align_size);
				member_size += align_addr - memory_address;
			}

			int offset_in_bits = (memory_address + member_size - actual_size) * 8;
			member_locations[i] = offset_in_bits;
			if(members[i].type == T_POINTER && members[i].pointer.type->type == T_STRUCT)
			{
				to_fix[i] = true;
				Type_Info opaque_pointer = members[i];
				opaque_pointer.pointer.type = NULL;
				member_data[i] = create_struct_field(debug, type.structure.member_names[i], opaque_pointer, 
						offset_in_bits);
			}
			else
			{
				to_fix[i] = false;
				member_data[i] = create_struct_field(debug, type.structure.member_names[i],
						members[i], offset_in_bits);
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
				auto new_metadata = create_struct_field(debug, type.structure.member_names[i], members[i], member_locations[i]);
				member_array->replaceOperandWith(i, new_metadata);
			}
		}

		created->replaceElements(member_array);
		return created;
	}
}

llvm::FunctionType *
type_to_func_type(Type_Info type, Backend_State *backend)
{
	b32 is_apoc = type.func.calling_convention == CALL_APOC;
	size_t param_count = SDCount(type.func.param_types);
	if(is_apoc)
		param_count++;
	llvm::Type *param_types[param_count];
	memset(param_types, 0, param_count);
	b32 has_var_args = false;
	size_t i = 0;
	if(is_apoc)
	{
		param_types[i++] = PointerType::get(get_context_type(), 0);
	}
	for (; i < param_count; ++i)
	{
		Type_Info param_type = type.func.param_types[i - (is_apoc ? 1 : 0)];
		if (param_type.type == T_DETECT)
		{
			has_var_args = true;
			Assert(i == param_count - 1);
		}
		else
			param_types[i] = apoc_type_to_llvm(param_type, backend);
	}
	auto args = makeArrayRef((llvm::Type **)param_types, has_var_args ?
			param_count - 1 : param_count);
	return FunctionType::get(apoc_type_to_llvm(*type.func.return_type, backend),
			args, has_var_args);
}

llvm::Type *
apoc_type_to_llvm(Type_Info type, Backend_State *backend)
{
	if (is_untyped(type))
	{
		if(is_integer(type))
		{
			return llvm::Type::getInt64Ty(*backend->context);
		}
		else if(is_float(type))
		{
			return llvm::Type::getDoubleTy(*backend->context);
		}
	}
	if (is_integer(type))
	{
		Assert(type.primitive.size != 0);
		return llvm_int_types[type.primitive.size](*backend->context);
	}
	else if (is_float(type))
	{
		Assert(type.primitive.size != 0);
		if(type.primitive.size == real32) return llvm::Type::getFloatTy(*backend->context);
		else if(type.primitive.size == real64) return llvm::Type::getDoubleTy(*backend->context);
		Assert(false);
	}
	else if (type.type == T_BOOLEAN)
	{
		return llvm::Type::getInt8Ty(*backend->context);
	}
	else if (type.type == T_STRING)
	{
		llvm::Type *u8_type = llvm::Type::getInt8Ty(*backend->context);
		return llvm::PointerType::get(u8_type, 0);
	}
	else if (type.type == T_POINTER)
	{
		llvm::Type *base_type = apoc_type_to_llvm(*type.pointer.type, backend);
		if(!base_type)
			return llvm::PointerType::get(*backend->context, 0);
		return llvm::PointerType::get(base_type, 0);
	}
	else if (type.type == T_STRUCT)
	{
		auto struct_type = shget(backend->struct_types, type.identifier);
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
		return llvm::Type::getVoidTy(*backend->context);
	}
	else if (type.type == T_FUNC)
	{
		auto func_type = type_to_func_type(type, backend);
		return PointerType::get(func_type, 0);
	}
	Assert(false);
	return NULL;
}


LoadInst *
llvm_load(Type_Info *type, llvm::Value *ptr, const char *name, Backend_State *backend)
{
	auto llvm_type = apoc_type_to_llvm(*type, backend);
	auto load_inst = backend->builder->CreateLoad(llvm_type, ptr, name);
	load_inst->setAlignment(Align(get_type_alignment(*type)));
	return load_inst;
}

void
llvm_store(llvm::Value *ptr, llvm::Value *value, Backend_State *backend, int alignment)
{
	auto store_inst = backend->builder->CreateStore(value, ptr);
	store_inst->setAlignment(Align(alignment));
}

void
llvm_store(Type_Info *type, llvm::Value *ptr, llvm::Value *value, Backend_State *backend)
{
	llvm_store(ptr, value, backend, get_type_alignment(*type));
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
		Metadata *subscripts[1] = {};
		subscripts[0] = debug->builder->getOrCreateSubrange(0, type.array.elem_count);

		auto subscript_array = debug->builder->getOrCreateArray(subscripts);

		auto array_size = get_type_size(*type.array.type) * 8 * type.array.elem_count;
		auto align      = get_type_alignment(*type.array.type) * 8;
		auto array_type = debug->builder->createArrayType(array_size, align, to_debug_type(*type.array.type, debug), subscript_array);
		
		Assert(array_type);
		return array_type;
	}
	else if (type.type == T_VOID)
	{
		return 0;	
	}
	else if (type.type == T_FUNC)
	{
		auto func_type = debug->builder->createPointerType(0, sizeof(size_t) * 8);
		return func_type;
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
				//return Instruction::CastOps::SIToFP;
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
			else if (from.type == T_BOOLEAN)
			{
				return Instruction::CastOps::ZExt;
			}
			else
			{
				Assert(is_float(from));
				//return Instruction::CastOps::FPToSI;
				return Instruction::CastOps::FPToUI;
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

