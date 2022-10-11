
#ifndef _LLVM_HELPERS_H
#define _LLVM_HELPERS_H
#include <LLVM_Backend.h>
#include <llvm-c/DebugInfo.h>

LoadInst *
llvm_load(Type_Info *type, llvm::Value *ptr, const char *name, Backend_State *backend);

void
llvm_store(Type_Info *type, llvm::Value *ptr, llvm::Value *value, Backend_State *backend);

void
llvm_store(llvm::Value *ptr, llvm::Value *value, Backend_State *backend, int alignment);

void
llvm_zero_out_memory(llvm::Value *ptr, u64 size, llvm::Align alignment, IRBuilder<> *builder);

llvm::FunctionType *
type_to_func_type(Type_Info type, Backend_State *backend);

void
write_type_info_to_llvm(Type_Info to_write, llvm::Value *ptr, llvm::Type *llvm_type,
		Backend_State *backend, llvm::Function *func);

llvm::StructType *
get_type_info_kind(const char *name, Backend_State *backend);

llvm::Value *
bit_cast_llvm_type(llvm::Value *value, llvm::Type *to, Backend_State *backend);

void
create_branch(llvm::BasicBlock *from, llvm::BasicBlock *to, Backend_State *backend);

void
llvm_memset(llvm::Value *dst, u8 value, size_t size, int alignment, Backend_State *backend);

void
llvm_memcpy(llvm::Value *dst, llvm::Value *src, Type_Info *type, Backend_State *backend);

AllocaInst *
allocate_with_llvm(Function *func, u8 *var_name, llvm::Type *type, u64 align);

AllocaInst *
allocate_variable(Function *func, u8 *var_name, Type_Info type, Backend_State *backend);

llvm::Type *
apoc_type_to_llvm(Type_Info type, Backend_State *backend);

Instruction::CastOps
get_cast_type(Type_Info to, Type_Info from, b32 *should_cast);

DIType *
to_debug_type(Type_Info type, Debug_Info *debug);

llvm::Constant *
interp_val_to_llvm(Interp_Val val, Backend_State *backend, Function *func);

#endif // _LLVM_HELPERS_H
