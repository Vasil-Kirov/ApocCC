
#ifndef CODE_GEN_H
#define CODE_GEN_H

#include <Basic.h>
#include <Lexer.h>
#include <Parser.h>


void
llvm_backend_generate(File_Contents **files);

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
#include <llvm/IR/LegacyPassManager.h>
#include <llvm/IR/DebugInfo.h>
#include <llvm/IR/DIBuilder.h>
#include <llvm/Support/Host.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Support/FileSystem.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Target/TargetOptions.h>
#include <llvm/Target/TargetMachine.h>
#include <llvm/MC/TargetRegistry.h>
#include <llvm/Transforms/IPO/PassManagerBuilder.h>
#include <llvm/Transforms/InstCombine/InstCombine.h>
#include <llvm/Transforms/Utils.h>
#include <llvm/Transforms/Scalar/GVN.h>
#include <llvm/Transforms/Scalar.h>
#include <llvm/Analysis/LoopAnalysisManager.h>
#include <llvm/Analysis/CGSCCPassManager.h>
#include <llvm/Passes/PassBuilder.h>
#include <llvm/Pass.h>
#include <map>

#define DEBUG_INFO(x) if(f->build_commands.debug_info) { x }

using namespace llvm;

enum Variable_Types
{
	ID_INVALID,
	ID_LOCAL,
	ID_GLOBAL,
	ID_CONST_GLOBAL,
	ID_FUNCTION
};

struct Struct_Table
{
	u8 *key;
	StructType *value;
};

struct Variable_Info
{
	llvm::Value *value;
	Type_Info *type;
};

struct Variable_Lookup_Table
{
	u8 *key;
	Variable_Info *value;
};

struct Backend_State
{
	LLVMContext *context;
	IRBuilder<> *builder;
	Module *module;
	Variable_Lookup_Table *named_values;
	//legacy::FunctionPassManager *func_pass;
};

struct Type_Info_Array
{
	Type_Info **ptr;
	int count;
};

struct Symbol_Info
{
	unsigned int line_number;
	DINode::DIFlags flags;
	u32 allign_in_bits;
	u64 size_in_bits;
	DINodeArray node_array;
	DIType *derived_from;
	DIFile *file;
	DIScope *scope;
	StringRef name;
};

struct Debug_Symbol_Table
{
	u8 *key;
	llvm::DICompositeType *value;
};

struct File_And_Unit
{
	DIFile *file;
	DICompileUnit *unit;
};

struct Debug_File_Table
{
	u8 *key;
	File_And_Unit value;
};

struct Debug_Info
{
	DIBuilder *builder;
	Debug_Symbol_Table *struct_map;
	Debug_File_Table *file_map;
	Stack scope;
};

DISubroutineType *
create_func_debug_type(Type_Info *func_type);

Variable_Info *
get_identifier(File_Contents *f, u8 *name, Variable_Types *returned_type, b32 is_searching_modules = false);

void
generate_overloads(File_Contents *f);

llvm::Value *
generate_index(File_Contents *f, Ast_Node *node, Function *func, llvm::Value *rhs, b32 is_decl, Type_Info decl_type);

llvm::StructType *
get_context_type();

llvm::Value *
generate_lhs(File_Contents *f, Function *func, Ast_Node *lhs, llvm::Value *rhs, b32 is_decl, Type_Info decl_type, u8 **out_identifier = NULL);

// @TODO: remove
llvm::Constant *
interp_val_to_llvm(Interp_Val val, Backend_State backend, Function *func);

void
generate_struct_type(File_Contents *f, Type_Info type, llvm::StructType *opaque_struct);

void
generate_signatures(File_Contents **files);

llvm::Value *
generate_expression(File_Contents *f, Ast_Node *node, Function *func);

llvm::StructType *
generate_union_type(File_Contents *f, Type_Info passed_type);

llvm::Function **
generate_statement_list(File_Contents *f, Ast_Node *list, i32 *out_func_count);

Ast_Node *
generate_statement(File_Contents *f, Ast_Node *root);

llvm::Function *
generate_func(File_Contents *f, Ast_Node *node, Function *passed_func = NULL);

void
generate_prototyes(File_Contents *f);

Function *
generate_func_signature(File_Contents *f, Ast_Node *node, b32 is_overload = false);

void
generate_assignment(File_Contents *f, Function *func, Ast_Node *node);

llvm::Value *
create_cast(Type_Info to, Type_Info from, llvm::Value *castee);

BasicBlock *
generate_block(File_Contents *f, Ast_Node *node, Function *func, BasicBlock *passed_block,
		const char *block_name, BasicBlock *to_go, Ast_Node *list, u64 *idx);

llvm::BasicBlock *
generate_blocks_from_list(File_Contents *f, Ast_Node *list_node, Function *func,
		BasicBlock *passed_block, const char *block_name, BasicBlock *to_go);

void
generate_if_global_var(File_Contents *f, Ast_Node *node);

#endif
