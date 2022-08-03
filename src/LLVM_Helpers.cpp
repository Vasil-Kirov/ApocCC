#include <LLVM_Backend.h>
#include <Type.h>
#include <Memory.h>

typedef IntegerType *(*LLVM_Integer_Types)(LLVMContext &);

static const LLVM_Integer_Types llvm_int_types[] = {NULL, llvm::Type::getInt8Ty, llvm::Type::getInt16Ty,
												llvm::Type::getInt32Ty, llvm::Type::getInt64Ty,
												llvm::Type::getInt8Ty, llvm::Type::getInt16Ty,
												llvm::Type::getInt32Ty, llvm::Type::getInt64Ty};

AllocaInst *
allocate_variable(Function *func, u8 *var_name, Type_Info type, Backend_State backend)
{
	IRBuilder<> temp_builder(&func->getEntryBlock(), func->getEntryBlock().begin());
	return temp_builder.CreateAlloca(apoc_type_to_llvm(type, backend), 0, (char *)var_name);
}

llvm::Type *
apoc_type_to_llvm(Type_Info type, Backend_State backend)
{
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
	else if (type.type == T_STRING)
	{
		llvm::Type *u8_type = llvm::Type::getInt8Ty(*backend.context);
		return llvm::PointerType::get(u8_type, 0);
	}
	else if (type.type == T_POINTER)
	{
		llvm::Type *base_type = apoc_type_to_llvm(*type.pointer.type, backend);
		return llvm::PointerType::get(base_type, 0);
	}
	else if (type.type == T_STRUCT)
	{

	}
	Assert(false);
	return NULL;
}

Instruction::CastOps
get_cast_type(Type_Info to, Type_Info from, b32 *should_cast)
{
	*should_cast = true;
	if(is_float(to))
	{
		if(is_float(from))
		{
			if(from.primitive.size > to.primitive.size)
				return Instruction::CastOps::FPTrunc;
			if(from.primitive.size < to.primitive.size)
				return Instruction::CastOps::FPExt;
			*should_cast = false;
			return Instruction::CastOps::ZExt;
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
						return Instruction::CastOps::ZExt;
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
			else
			{
				Assert(is_float(from));
				return Instruction::CastOps::FPToSI;
			}
		}
		else
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
						return Instruction::CastOps::ZExt;
					}
				}
				else
				{
					size_t signed_size = from.primitive.size - 4;
					
					if(signed_size < to.primitive.size)
					{
						return Instruction::CastOps::ZExt;
					}
					else if(signed_size > to.primitive.size)
					{
						return Instruction::CastOps::Trunc;
					}
					else
					{
						*should_cast = false;
						return Instruction::CastOps::ZExt;
					}
				}
			}
			else
			{
				Assert(is_float(from));
				return Instruction::CastOps::FPToSI;
			}
		}
	}
	else
	{
		Assert(to.type == T_POINTER);
		*should_cast = false;
		return Instruction::CastOps::ZExt;
	}
	*should_cast = false;
	return Instruction::CastOps::ZExt;
}