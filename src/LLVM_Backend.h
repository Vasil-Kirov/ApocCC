
#ifndef CODE_GEN_H
#define CODE_GEN_H

#include <Basic.h>
#include <Lexer.h>
#include <Parser.h>


void
llvm_backend_generate(File_Contents *f, Ast_Node *root);

#include <llvm-c/Core.h>
#include <llvm-c/TargetMachine.h>

#include <llvm/ADT/APFloat.h>
#include <llvm/ADT/STLExtras.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Type.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Support/Host.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/MC/TargetRegistry.h>
#include <llvm/Target/TargetOptions.h>
#include <llvm/Target/TargetMachine.h>
#include <llvm/Support/FileSystem.h>
#include <llvm/IR/LegacyPassManager.h>
#include <map>

using namespace llvm;
struct Backend_State
{
	LLVMContext *context;
	IRBuilder<> *builder;
	Module *module;
	std::map<std::string, AllocaInst *> named_values;
};

llvm::Value *
generate_expression(File_Contents *f, Ast_Node *node);

void
generate_statement(File_Contents *f, Ast_Node *root);

void
generate_func(File_Contents *f, Ast_Node *node);

void
generate_prototyes(File_Contents *f);

Function *
generate_func_signature(File_Contents *f, Ast_Node *node);

void
generate_assignment(File_Contents *f, Function *func, Ast_Node *node);

#endif