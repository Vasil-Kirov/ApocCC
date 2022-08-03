
#ifndef _LLVM_HELPERS_H
#define _LLVM_HELPERS_H
#include <LLVM_Backend.h>

AllocaInst *
allocate_variable(Function *func, u8 *var_name, Type_Info type, Backend_State backend);

llvm::Type *
apoc_type_to_llvm(Type_Info type, Backend_State backend);

Instruction::CastOps
get_cast_type(Type_Info to, Type_Info from, b32 *should_cast);

#endif // _LLVM_HELPERS_H
