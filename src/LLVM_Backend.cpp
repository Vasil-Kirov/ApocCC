#include "llvm-c/Target.h"
#include "llvm-c/TargetMachine.h"
#include "llvm/ADT/ArrayRef.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Instructions.h"
#include <LLVM_Backend.h>
#include <platform/platform.h>
#include <LLVM_Helpers.h>
#include <Analyzer.h>
#include <Memory.h>
#include <Stack.h>

#define INITIALIZE_TARGET(X) do {         \
  LLVMInitialize ## X ## AsmParser();     \
  LLVMInitialize ## X ## AsmPrinter();    \
  LLVMInitialize ## X ## Disassembler();  \
  LLVMInitialize ## X ## TargetInfo();    \
  LLVMInitialize ## X ## Target();        \
  LLVMInitialize ## X ## TargetMC();      \
 } while(0)


static Backend_State backend;
static Debug_Info debug;
static Token_Iden emergency_token;

//#define ONLY_IR

Backend_State
llvm_initialize(File_Contents *f)
{
	Backend_State backend = {};
	backend.context = new LLVMContext();
	backend.module = new Module(platform_path_to_file_name((char *)f->path), *backend.context);
	backend.builder = new IRBuilder<>(*backend.context);


	// Create a new pass manager attached to it.
	backend.func_pass = new legacy::FunctionPassManager(backend.module);

	// Do simple "peephole" optimizations and bit-twiddling optzns.
	backend.func_pass->add(createInstructionCombiningPass());
	// Reassociate expressions.
	backend.func_pass->add(createReassociatePass());
	// Eliminate Common SubExpressions.
	backend.func_pass->add(createGVNPass());
	// Simplify the control flow graph (deleting unreachable blocks, etc).
	backend.func_pass->add(createCFGSimplificationPass());

	backend.func_pass->doInitialization();

	shdefault(backend.struct_types, 0);
	
	if(f->build_commands.debug_info) {
		//char *file_name = platform_path_to_file_name((char *)f->path);
		//char *debug_file = change_file_extension(file_name, "debug_info");

		backend.module->addModuleFlag(Module::Warning, "Debug Info Version", DEBUG_METADATA_VERSION);

		char *debug_file = platform_path_to_file_name((char *)f->path);
		size_t path_len = vstd_strlen((char *)f->path);
		char *file_path = (char *)AllocateCompileMemory(path_len);
		memcpy(file_path, f->path, path_len);
		char *scanner = file_path + path_len;
		while(*scanner != '\\' && *scanner != '/') scanner--;
		*(scanner + 1) = 0;
		debug.builder = new DIBuilder(*backend.module);
		auto file = debug.builder->createFile(debug_file, file_path);
		debug.unit = debug.builder->createCompileUnit(dwarf::DW_LANG_C, file, "Apoc Compiler",
			f->build_commands.optimization > OPT_NONE ? true : false,  "", 0);
		debug.scope = stack_allocate(DINode *);
	}
	
	return backend;
}

void
emit_location(unsigned int line, unsigned int col)
{
	DINode *_internal_scope = NULL;
	if(is_stack_empty(debug.scope))
		_internal_scope = debug.unit;
	else
		_internal_scope = stack_peek(debug.scope, DINode *);
	backend.builder->SetCurrentDebugLocation(DILocation::get(_internal_scope->getContext(), line, col, _internal_scope)); 
}

void
do_passes()
{
	size_t func_count = shlen(backend.func_table);
	for(size_t i = 0; i < func_count; ++i)
	{
		backend.func_pass->run(*backend.func_table[i].value);	
	}
}

void
generate_obj(File_Contents *f)
{
	if(f->build_commands.optimization != OPT_NONE)
		do_passes();
	llvm::Target a_target = {};

	INITIALIZE_TARGET(AArch64);
	INITIALIZE_TARGET(X86);
	INITIALIZE_TARGET(WebAssembly);

	auto target_triple = sys::getDefaultTargetTriple();
	const char *c_str_triplet;

	const char *features;
	if(f->build_commands.target == TG_X64)
	{
		backend.module->setTargetTriple(target_triple);
		c_str_triplet = target_triple.c_str();
		features = LLVMGetHostCPUFeatures();
	}
	else if(f->build_commands.target == TG_WASM)
	{
		backend.module->setTargetTriple(std::string("wasm32"));
		c_str_triplet = "wasm32";
		features = (char *)"";
	}

	char *error = NULL;
	LLVMTargetRef c_target = NULL;
	if (LLVMGetTargetFromTriple(c_str_triplet, &c_target, &error) != 0)
	{
		LG_FATAL("Target not found %s", error);
	}

	const char *cpu = "generic";

	LLVMCodeGenOptLevel opt;
	// @TODO: optimization flag
	switch(f->build_commands.optimization)
	{
		case OPT_NONE: opt = LLVMCodeGenLevelNone; break;
		case OPT_SOME: opt = LLVMCodeGenLevelDefault; break;
		case OPT_MAX:  opt = LLVMCodeGenLevelAggressive; break;
	}
	LLVMTargetMachineRef machine = LLVMCreateTargetMachine(c_target, c_str_triplet, cpu, features,
		opt, LLVMRelocDefault, LLVMCodeModelDefault);
	
	LLVMModuleRef file_mod = llvm::wrap(backend.module);

	LLVMSetTarget(file_mod, c_str_triplet);
	LLVMTargetDataRef data_layout = LLVMCreateTargetDataLayout(machine);
	char *data_layout_str = LLVMCopyStringRepOfTargetData(data_layout);
	LLVMSetDataLayout(file_mod, data_layout_str);
	LLVMDisposeMessage(data_layout_str);

	if (f->build_commands.debug_info)
	{
		debug.builder->finalize();
	}
	char *obj_file = change_file_extension(
			platform_path_to_file_name((char *)f->path), (char *)"o");
	f->obj_name = obj_file;
#if !defined(ONLY_IR)
	LLVMTargetMachineEmitToFile(machine, file_mod, obj_file, LLVMObjectFile, &error);
	LLVMTargetMachineEmitToFile(machine, file_mod, "asm.s", LLVMAssemblyFile, &error);
#endif	

	std::error_code std_err;
	raw_fd_ostream ir_dest("test.ll", std_err);
	backend.module->print(ir_dest, nullptr);
}

void
llvm_backend_generate(File_Contents *f, Ast_Node *root)
{
	backend = llvm_initialize(f);

	generate_signatures(f);
	generate_statement_list(f, root);
	generate_obj(f);
}


void
generate_signatures(File_Contents *f)
{
	Type_Table *type_table = f->type_table;
	size_t type_len = shlen(type_table);
	for(size_t i = 0; i < type_len; ++i)
	{
		Type_Info type = type_table[i].value;
		if(type.type == T_STRUCT)
		{
			int struct_size = 0;
			llvm::Type *mem_types[REASONABLE_MAXIMUM];
			DIType *debug_types[REASONABLE_MAXIMUM];

			auto members = type.structure->structure.members;
			auto member_count = type.structure->structure.member_count;
			for (size_t i = 0; i < member_count; ++i)
			{
				DEBUG_INFO ( 
					emit_location(type.token.line, type.token.column);
					struct_size += get_type_size(members[i].type);
					debug_types[i] = to_debug_type(members[i].type, &debug);
				)
				mem_types[i] = apoc_type_to_llvm(members[i].type, backend);
			}
			auto array_ref = makeArrayRef(mem_types, member_count);
			auto struct_type = StructType::create(*backend.context, array_ref, StringRef((const char *)type.identifier), type.is_packed);
			shput(backend.struct_types, type.identifier, struct_type);

			DEBUG_INFO (
			Symbol_Info sym = {};
			if(type.is_packed)
				sym.allign_in_bits = 0;
			else
				sym.allign_in_bits = sizeof(size_t);
		
			sym.flags = DINode::DIFlags::FlagPublic;
			sym.file = debug.unit->getFile();
			sym.line_number = type.token.line;
			sym.name = StringRef((char *)type.identifier);
			sym.scope = debug.unit->getScope();
			sym.size_in_bits = struct_size * 8;
			sym.node_array = debug.builder->getOrCreateArray(makeArrayRef((Metadata **)debug_types, member_count));
			)
		}
	}
	Scope_Info *scopes = f->scopes;
	size_t scope_count = SDCount(scopes);
	for(size_t i = 0; i < scope_count; ++i)
	{
		Symbol *sym_table = scopes[i].symbol_table;
		size_t sym_count = SDCount(sym_table);
		for(size_t j = 0; j < sym_count; ++j)
		{
			Symbol symbol = sym_table[j];
			if(symbol.tag == S_FUNCTION)
			{
				Assert(symbol.node->type == type_func);
				llvm::Function *func = generate_func_signature(f, symbol.node);
				shput(backend.func_table, symbol.node->function.identifier.name, func);
			}
		}
	}
}

Ast_Node *
generate_statement(File_Contents *f, Ast_Node *node)
{
	switch((int)node->type)
	{
		case type_func:
		{
			if(!node->function.is_interpret_only && node->function.body)
				return node;

			// Generate prototypes before
		} break;
		case type_assignment:
		{
			b32 failed = false;
			auto interp_val = interpret_expression(node->assignment.rhs, &failed);
			if(failed)
			{
				raise_interpret_error("Global decleration must be constant",
						node->assignment.token);
				LG_FATAL(".");
			}
			Constant* const_val = interp_val_to_llvm(interp_val, backend, NULL);
			auto global_type = apoc_type_to_llvm(node->assignment.decl_type, backend);
			auto global_var = new GlobalVariable(
					*backend.module, global_type, node->assignment.is_const,
					GlobalValue::LinkageTypes::ExternalLinkage,
					const_val, "global_var");
			backend.named_globals[std::string((char *)node->assignment.token.identifier)] = global_var;
		} break;
		case type_enum: break;
		case type_struct: break;
		case type_scope_start: break;
		default:
		{
			LG_ERROR("Statement of type %s not handled in code generation", type_to_str(node->type));
		} break;
	}
	return NULL;
}

void
generate_statement_list(File_Contents *f, Ast_Node *list)
{
	Ast_Node **functions = SDCreate(Ast_Node *);
	size_t list_size = SDCount(list->statements.list);
	for(size_t i = 0; i < list_size; ++i)
	{
		Ast_Node *maybe_func = generate_statement(f, list->statements.list[i]);
		if(maybe_func)
			SDPush(functions, maybe_func);
	}
	// @NOTE: delay function generation so all global symbols can be declared
	size_t func_count = SDCount(functions);
	for(size_t i = 0; i < func_count; ++i)
		generate_func(f, functions[i]);
}

llvm::Value *
create_cast(Type_Info to, Type_Info from, llvm::Value *castee)
{
	b32 should_cast;
	auto to_cast = get_cast_type(to, from, &should_cast);

	if (should_cast)
		castee = backend.builder->CreateCast(to_cast, castee, apoc_type_to_llvm(to, backend), "cast");
	return castee;
}

DISubroutineType *
create_func_type(Ast_Node *node)
{
	auto arguments = node->function.arguments;
	size_t param_count = SDCount(node->function.arguments) + 1;
	Metadata *types[param_count];
	types[0] = to_debug_type(node->function.type, &debug);
	for(size_t i = 1; i < param_count; ++i)
	{
		types[i] = to_debug_type(arguments[i-1]->variable.type, &debug);
	}
	return debug.builder->createSubroutineType(debug.builder->getOrCreateTypeArray(makeArrayRef((Metadata **)types, param_count)));
}

Function *
generate_func_signature(File_Contents *f, Ast_Node *node)
{
	Assert(node->type == type_func);
	Function *signature = shget(backend.func_table, node->function.identifier.name);
	if(signature)
		return signature;

	
	size_t param_count = SDCount(node->function.arguments);
	llvm::Type *param_types[param_count];
	memset(param_types, 0, param_count);
	b32 has_var_args = false;
	for (size_t i = 0; i < param_count; ++i)
	{
		Type_Info param_type = node->function.arguments[i]->variable.type;
		if (param_type.type == T_DETECT)
		{
			has_var_args = true;
			Assert(i == param_count - 1);
		}
		else
			param_types[i] = apoc_type_to_llvm(param_type, backend);
	}

	llvm::ArrayRef<llvm::Type *> params_ref = llvm::makeArrayRef((llvm::Type **)param_types, has_var_args ? param_count - 1 : param_count);
	llvm::Type *ret_type = apoc_type_to_llvm(node->function.type, backend);
	FunctionType *func_type = FunctionType::get(ret_type, params_ref, has_var_args);
	Function *func = Function::Create(func_type, Function::ExternalLinkage,
									  (char *)node->function.identifier.name, backend.module);

	size_t arg_index = 0;
	for (auto &arg : func->args())
		arg.setName((char *)node->function.arguments[arg_index++]->variable.identifier.name);
	
	return func;
}

llvm::Value *
generate_boolean_expression(File_Contents *f, Ast_Node *expression, Function *func)
{
	llvm::Value *evaluation = generate_expression(f, expression, func);
	if (evaluation->getType() != Type::getInt1Ty(*backend.context))
	{
		Type_Info boolean_type = {};
		boolean_type.type = T_BOOLEAN;

		evaluation = backend.builder->CreateCast(Instruction::CastOps::Trunc, evaluation, apoc_type_to_llvm(boolean_type, backend), "boolean_expr");
	}
	return evaluation;
}

void
generate_for_loop(File_Contents *f, Ast_Node *node, Function *func,
		BasicBlock *block, BasicBlock *to_go, Ast_Node *list, u64 *idx)
{
	if(node->for_loop.expr1)
		generate_assignment(f, func, node->for_loop.expr1);

	auto evaluation = generate_boolean_expression(f, node->for_loop.expr2, func);

	BasicBlock *jmp_block = BasicBlock::Create(*backend.context, "for_true_jump", func);
	BasicBlock *for_false = NULL;
	BasicBlock *for_true  = NULL;
	
	*idx += 1;
	auto loop_body = list->statements.list[*idx];
	*idx += 1;
	{
		for_false = BasicBlock::Create(*backend.context, "for_false", func);
		backend.builder->SetInsertPoint(for_false);
		size_t count = SDCount(list->statements.list);

		for(; *idx < count; *idx += 1)
			generate_block(f, list->statements.list[*idx], func,
					for_false, "for_false", to_go, list, idx);

		if(to_go)
			backend.builder->CreateBr(to_go);
	}

	if(loop_body->type == type_scope_start)
	{
		for_true = generate_blocks_from_list(f, loop_body->scope_desc.body, func,
				NULL, "for_true", jmp_block);
	}
	else
	{
		for_true = BasicBlock::Create(*backend.context, "for_true", func);
		backend.builder->SetInsertPoint(for_true);
		generate_block(f, loop_body, func, NULL, "for_true", jmp_block, list, idx);
		backend.builder->CreateBr(jmp_block);
	}

	backend.builder->SetInsertPoint(jmp_block);

	if(node->for_loop.expr3)
		generate_expression(f, node->for_loop.expr3, func);

	auto inner_eval = generate_boolean_expression(f, node->for_loop.expr2, func);
	backend.builder->CreateCondBr(inner_eval, for_true, for_false);

	backend.builder->SetInsertPoint(block);
	backend.builder->CreateCondBr(evaluation, for_true, for_false);
}

BasicBlock *
generate_block(File_Contents *f, Ast_Node *node, Function *func, BasicBlock *passed_block,
		const char *block_name, BasicBlock *to_go, Ast_Node *list, u64 *idx)
{
	BasicBlock *result = NULL;
	switch((int)node->type)
	{
		case type_func_call:
		{
			// @TODO: func pointers
			Assert(node->func_call.operand->type == type_identifier);
			auto callee = FunctionCallee(shget(backend.func_table, node->func_call.operand->identifier.name));

			size_t arg_count = SDCount(node->func_call.arguments);
			llvm::Value *arg_exprs[arg_count];
			auto arg_types = node->func_call.arg_types;
			auto expr_types = node->func_call.expr_types;
			for (size_t i = 0; i < arg_count; ++i)
			{
				arg_exprs[i] = generate_expression(f, node->func_call.arguments[i], func);
				if(arg_types[i].type != T_DETECT)
					arg_exprs[i] = create_cast(arg_types[i], expr_types[i], arg_exprs[i]);
			}
			backend.builder->CreateCall(callee, makeArrayRef((llvm::Value **)arg_exprs, arg_count));
		} break;
		case type_assignment:
		{
			generate_assignment(f, func, node);
		} break;
		case type_return:
		{
			if(node->ret.expression)
			{
				llvm::Value *ret_val = generate_expression(f, node->ret.expression, func);
				if (is_untyped(node->ret.expression_type))
				{
					ret_val = create_cast(node->ret.func_type, node->ret.expression_type, ret_val);
				}
				backend.builder->CreateRet(ret_val);
			}
			else
				backend.builder->CreateRetVoid();
		} break;
		case type_for:
		{
			generate_for_loop(f, node, func, passed_block, to_go, list,idx);
		} break;
		case type_if:
		{
			llvm::Value *evaluation =
				generate_boolean_expression(f, node->condition.expr, func);

			llvm::BasicBlock *if_true = NULL;
			llvm::BasicBlock *if_false = NULL;
			llvm::BasicBlock *to_go_if = NULL;

			*idx += 1;
			auto body_node = list->statements.list[*idx];
			*idx += 1;
			auto next_node = list->statements.list[*idx];
			
			if(next_node->type == type_else)
			{
				*idx += 1;
				auto else_node = list->statements.list[*idx];
				if(else_node->type == type_scope_start)
				{
					to_go_if = BasicBlock::Create(*backend.context, "to_go_if", func);
					if_false = generate_blocks_from_list(f, else_node->scope_desc.body,
							func, NULL, "else", to_go_if);
					backend.builder->SetInsertPoint(to_go_if);
					size_t count = SDCount(list->statements.list);

					for(; *idx < count; *idx += 1)
						generate_block(f, list->statements.list[*idx], func,
								to_go_if, "to_go_if", to_go, list, idx);
				}
				else if(else_node->type == type_if)
				{
					if_false = BasicBlock::Create(*backend.context, "if_false", func);
					backend.builder->SetInsertPoint(if_false);
					to_go_if = generate_block(f, else_node, func, if_false, "", to_go_if, list, idx);
				}
				else
				{
					to_go_if = BasicBlock::Create(*backend.context, "to_go_if", func);
					if_false = BasicBlock::Create(*backend.context, "if_false", func);
					backend.builder->SetInsertPoint(if_false);
					generate_block(f, else_node, func, if_false, "", to_go_if, list, idx);
					backend.builder->CreateBr(to_go_if);
					*idx += 1;	
					backend.builder->SetInsertPoint(to_go_if);
					size_t count = SDCount(list->statements.list);

					for(; *idx < count; *idx += 1)
						generate_block(f, list->statements.list[*idx], func, to_go_if, "to_go_if",
								to_go, list, idx);
					
					if(to_go)
						backend.builder->CreateBr(to_go);
				}
			}
			else	
			{
				if_false = BasicBlock::Create(*backend.context, "if_false", func);
				backend.builder->SetInsertPoint(if_false);
				size_t count = SDCount(list->statements.list);

				for(; *idx < count; *idx += 1)
					generate_block(f, list->statements.list[*idx], func,
							if_false, "if_false", to_go, list, idx);
				
				if(to_go)
					backend.builder->CreateBr(to_go);

				to_go_if = if_false;
			}

			if(body_node->type == type_scope_start)
			{
				if_true = generate_blocks_from_list(f, body_node->scope_desc.body, func,
						NULL, "if_true", to_go_if);
			}
			else
			{
				if_true = BasicBlock::Create(*backend.context, "if_true", func);
				backend.builder->SetInsertPoint(if_true);
				generate_block(f, body_node, func, if_true, "if_true", to_go_if, list, idx);
				if(if_true->getTerminator() == NULL)
					backend.builder->CreateBr(to_go_if);
			}
			backend.builder->SetInsertPoint(passed_block);
			backend.builder->CreateCondBr(evaluation, if_true, if_false);
			result = to_go_if;
		} break;
		case type_scope_end: {} break;
		default:
		{
			LG_ERROR("Statement of type %s not handled in code generation", type_to_str(node->type));
		} break;
	}
	return result;
}

llvm::BasicBlock *
generate_blocks_from_list(File_Contents *f, Ast_Node *list_node, Function *func,
		BasicBlock *passed_block, const char *block_name, BasicBlock *to_go)
{
	BasicBlock *body_block = NULL;
	if(!passed_block)
	{
		body_block = BasicBlock::Create(*backend.context, block_name, func);
	}
	else
		body_block = passed_block;

	backend.builder->SetInsertPoint(body_block);
	size_t count = SDCount(list_node->statements.list);
	auto list = list_node->statements.list;
	for(size_t i = 0; i < count; ++i)
		generate_block(f, list[i], func, body_block, block_name, to_go,
				list_node, &i);

	if(to_go)
		backend.builder->CreateBr(to_go);
	return body_block;
}

llvm::Value *
generate_index(File_Contents *f, Ast_Node *node, Function *func, llvm::Value *rhs, b32 is_decl, Type_Info decl_type)
{
	auto zero = ConstantInt::get(*backend.context, llvm::APInt(64, 0, true));
	llvm::Value *idx = generate_expression(f, node->index.expression, func);
	llvm::Value *array = NULL;
	auto array_type = apoc_type_to_llvm(node->index.operand_type, backend);
	if(node->index.operand_type.type == T_ARRAY)
	{
		llvm::Value *idx_list[] = {
			zero,
			idx
		};
		array = generate_lhs(f, func, node->index.operand, rhs, is_decl, decl_type); 
		return backend.builder->CreateGEP(array_type, array, idx_list, "elem_ptr");
	}
	else if(node->index.operand_type.type == T_POINTER)
	{
		llvm::Value *idx_list[] = {
			idx
		};
		auto elem_ptr = apoc_type_to_llvm(*node->index.operand_type.pointer.type, backend);
		array = generate_lhs(f, func, node->index.operand, rhs, is_decl, decl_type); 
		array = backend.builder->CreateLoad(array_type, array, "ptr_load");
		return backend.builder->CreateGEP(elem_ptr, array, idx_list, "elem_ptr");
	}
	else
		Assert(false);
	return NULL;
}

void
generate_func(File_Contents *f, Ast_Node *node)
{
	Function *func = generate_func_signature(f, node);

	if(f->build_commands.target == TG_WASM)
		func->addFnAttr( llvm::Attribute::get(*backend.context, "wasm-export-name", func->getName()) );

	// @TODO: put source info in the function
	DEBUG_INFO(
		auto file_name = debug.unit->getFilename();
		auto directory = debug.unit->getDirectory();
		DIFile *unit = debug.builder->createFile(file_name,
												 directory);
		DIScope *context = (DIScope *)unit;

		DISubprogram *debug_func = debug.builder->createFunction(context, (char *)node->function.identifier.name, StringRef(), unit,
														node->function.identifier.token.line, create_func_type(node), 
														node->function.identifier.token.line);

		stack_push(debug.scope, debug_func);
		emit_location(0, 0);
		) // DEBUG_INFO
	BasicBlock *body_block = BasicBlock::Create(*backend.context, "entry", func);
	backend.builder->SetInsertPoint(body_block);
	backend.named_values.clear();

	{
		size_t arg_index = 0;
		for (auto &arg : func->args())
		{
			auto arg_string = arg.getName().str();
			auto variable = allocate_variable(func, (u8 *)arg_string.c_str(), node->function.arguments[arg_index++]->variable.type, backend);
			backend.named_values[arg_string] = variable;
			backend.builder->CreateStore(&arg, variable);
		}
	}
	Assert(node->function.body);
	
	generate_blocks_from_list(f, node->function.body->scope_desc.body, func, body_block, "main", NULL);

	std::error_code error_code;
	raw_fd_ostream std_out_fd("-", error_code);
	if (verifyFunction(*func, &std_out_fd))
	{
#if !defined (ONLY_IR)
		LG_FATAL("Incorrect function");
#endif
	}
	DEBUG_INFO (
		emit_location(emergency_token.line, emergency_token.column);
		_stack_pop(&debug.scope);
		//stack_pop(debug.scope, DINode *);
	)
}

llvm::Value *
get_identifier(u8 *name, b32 *is_const_global)
{
	std::string identifier_name = std::string((char *)name);
	AllocaInst *var_location = backend.named_values[identifier_name];
	if(var_location == NULL)
	{
		auto global_var = backend.named_globals[identifier_name];
		*is_const_global = global_var->isConstant();
		return global_var;
	}
	return var_location;
}

llvm::Value *
generate_operand(File_Contents *f, Ast_Node *node, Function *func)
{
	switch (node->type)
	{
		case type_identifier:
		{
			b32 is_const_global = false;
			llvm::AllocaInst *value =
			(llvm::AllocaInst *)get_identifier(node->identifier.name, &is_const_global);
			auto allocated_type = value->getAllocatedType();
			if(is_const_global)
			{
				auto const_global = (GlobalVariable *)value;
				return const_global->getInitializer();
			}
			else
				return backend.builder->CreateLoad(
						allocated_type, value);
		} break;
		case type_run:
		{
			auto constant_val = interp_val_to_llvm(node->run.ran_val, backend, func);
			if(!is_integer(node->run.ran_val.type) && !is_float(node->run.ran_val.type))
			{
				Type_Info val_type = node->run.ran_val.type;
				auto llvm_type = apoc_type_to_llvm(val_type, backend);
				auto to_global = new llvm::GlobalVariable(*backend.module, llvm_type, true,
						GlobalValue::LinkageTypes::PrivateLinkage,
						constant_val, "constant_array");

				auto location = allocate_variable(func, (u8 *)"compile_time_array", node->run.ran_val.type, backend);

				auto zero = ConstantInt::get(*backend.context, llvm::APInt(64, 0, true));
				llvm::Value *idx_list[] = {
					zero,
					zero
				};
				auto first_elem = backend.builder->CreateGEP(llvm_type, location, 
						idx_list, "", true);
				const DataLayout layout = backend.module->getDataLayout();
				auto alignment = location->getAlign();//Align(get_type_alignment(val_type));
				backend.builder->CreateMemCpy(first_elem, alignment, to_global, alignment, get_type_size(node->run.ran_val.type));

				return location;
			}
			return constant_val;
		} break;
		case type_literal:
		{
			// check size in case of uint64 sized integer
			// @NOTE: don't
			char *name = (char *)node->atom.identifier.name;
			Type_Info type = number_to_untyped_type((u8 *)name);
			if(is_float(type))
			{
				auto ap = APFloat(vstd_str_to_double(name));
				return ConstantFP::get(apoc_type_to_llvm(type, backend), ap);;
			}
			auto ap = APInt(64, (u64)str_to_i64(name), true);
			return ConstantInt::get(apoc_type_to_llvm(type, backend), ap);
		} break;
		case type_func_call:
		{
			// @TODO: function pointer
			Assert(node->func_call.operand->type == type_identifier);
			auto callee = FunctionCallee(shget(backend.func_table, node->func_call.operand->identifier.name));

			size_t arg_count = SDCount(node->func_call.arguments);
			llvm::Value *arg_exprs[arg_count];

			auto arg_types = node->func_call.arg_types;
			auto expr_types = node->func_call.expr_types;
			for(size_t i = 0; i < arg_count; ++i)
			{
				arg_exprs[i] = generate_expression(f, node->func_call.arguments[i], func);
				arg_exprs[i] = create_cast(arg_types[i], expr_types[i], arg_exprs[i]);
			}
			return backend.builder->CreateCall(callee, makeArrayRef((llvm::Value **)arg_exprs, arg_count));
		} break;
		case type_const_str:
		{
			u8 *const_str = node->atom.identifier.name;
			size_t str_size = vstd_strlen((char *)const_str);
			auto str_ref = new llvm::StringRef((char *)const_str, str_size);
			// @TODO: god I hate LLVM
			/*
			auto str_array = llvm::ArrayType::get(llvm::Type::getInt8Ty(*backend.context), str_size);
			std::vector<llvm::Constant *> const_array;
			for(size_t i = 0; i < str_size; ++i)
			{
				llvm::Constant *c = llvm::Constant::getIntegerValue(llvm::Type::getInt8Ty(*backend.context),
																		APInt((u64)const_str[i], 8));
				const_array.push_back(c);

			}
			auto vec_view = makeArrayRef(const_array);

			auto llvm_str = ConstantArray::get(str_array, vec_view);
			*/
			GlobalVariable *global_str_lit = backend.builder->CreateGlobalString(*str_ref);
			return global_str_lit;
		} break;
		case type_selector:
		{

			llvm::Value *operand = NULL;
			Type_Info op_type = node->selector.operand_type;
			if(op_type.type == T_POINTER)
			{
				if(node->selector.operand->type == type_struct_init)
					operand = generate_expression(f, node->selector.operand, func);
				else
					operand = backend.named_values[std::string(
							(char *)node->selector.operand->identifier.name)];
			}

			while(op_type.type == T_POINTER)
			{
				auto llvm_type = apoc_type_to_llvm(op_type, backend);
				operand = backend.builder->CreateLoad(llvm_type, operand, "derefrence struct");
				op_type = *op_type.pointer.type;
			}

			if(op_type.type == T_STRUCT)
			{
				auto struct_type = shget(backend.struct_types, op_type.identifier);
				if(!operand)
				{
					if(node->selector.operand->type == type_struct_init)
					{
						operand = generate_expression(f, node->selector.operand, func);
					}
					else
						operand = backend.named_values[std::string(
								(char *)node->selector.operand->identifier.name)];
				}
				auto elem_ptr = backend.builder->CreateStructGEP(
						struct_type, operand, node->selector.selected_index,
						"struct_member_ptr");
				auto llvm_op_type = apoc_type_to_llvm(node->selector.selected_type, backend);
				return backend.builder->CreateLoad(llvm_op_type, elem_ptr, "struct_member");
			}
			else if(op_type.type == T_ENUM)
			{
				auto enumerator = op_type.enumerator.node->enumerator;
				auto member = enumerator.members[node->selector.selected_index];
				return interp_val_to_llvm(member->interp_val.val, backend, func);
			}
			else
				Assert(false);
		} break;
		case type_array_list:
		{
			auto list = node->array_list.list;
			size_t list_count = SDCount(list);
			Value *values[list_count];
			for(size_t i = 0; i < list_count; ++i)
			{
				values[i] = generate_expression(f, list[i], func);
			}
			auto array_loc = allocate_variable(func, (u8 *)"array_list",
					node->array_list.type, backend);
		
			llvm::Type *array_type = apoc_type_to_llvm(node->array_list.type, backend);
			llvm::Value *zero = ConstantInt::get(Type::getInt64Ty(*backend.context), 0);
			for(size_t i = 0; i < list_count; ++i)
			{
				llvm::Value *idx_list[2] = {
					zero,
					ConstantInt::get(Type::getInt64Ty(*backend.context), i),
				};
				auto element_ptr = backend.builder->CreateGEP(array_type, 
						array_loc, idx_list, "array_elem");
				backend.builder->CreateStore(values[i], element_ptr);
			}
			auto arr_size = node->array_list.type.array.elem_count;

			// @NOTE: fill the rest with 0
			for(size_t i = list_count; i < arr_size; ++i)
			{

				llvm::Value *idx_list[2] = {
					ConstantInt::get(Type::getInt64Ty(*backend.context), 0),
					ConstantInt::get(Type::getInt64Ty(*backend.context), i),
				};
				auto element_ptr = backend.builder->CreateGEP(array_type, 
						array_loc, idx_list, "array_elem");
				backend.builder->CreateStore(zero, element_ptr);
			}
			
			return array_loc;
		} break;
		case type_struct_init:
		{
			AllocaInst *struct_loc = allocate_variable(func, node->struct_init.operand->identifier.name, node->struct_init.type, backend);
			StructType *type = shget(backend.struct_types, node->struct_init.operand->identifier.name);
			if(node->struct_init.is_empty_init)
			{
				auto data_layout = backend.module->getDataLayout();
				auto struct_layout = data_layout.getStructLayout(type);
				auto u8_zero = backend.builder->getInt8(0);
				backend.builder->CreateMemSet(struct_loc, u8_zero, struct_layout->getSizeInBytes()
						,struct_layout->getAlignment()); 
			}
			else
			{
				size_t expr_count = SDCount(node->struct_init.expressions);
				auto expressions = node->struct_init.expressions;

				auto members = node->struct_init.type.structure->structure.members;

				for(size_t i = 0; i < expr_count; ++i)
				{
					llvm::Value *expr_val = generate_expression(f, expressions[i], func);
					expr_val = create_cast(members[i].type, node->struct_init.expr_types[i], expr_val);
				
					llvm::Value *member_loc = backend.builder->CreateStructGEP(type, struct_loc, i);
					backend.builder->CreateStore(expr_val, member_loc);
				}
			}
			return struct_loc;
		} break;
		case type_index:
		{
			auto elem_type = apoc_type_to_llvm(node->index.idx_type, backend);
			auto elem_ptr = generate_index(f, node, func, NULL, false, (Type_Info){});
			return backend.builder->CreateLoad(elem_type,
					elem_ptr, "indexed_val");
		} break;
		
		default:
		{
			LG_FATAL("Unhandled operand type %d", node->type);
		} break;
	}
	return NULL;
}

llvm::Value *
generate_unary(File_Contents *f, Ast_Node *node, Function *func)
{
	if(node->type == type_unary_expr)
	{
		llvm::Value *result = NULL;
		llvm::Value *expr = generate_expression(f, node->unary_expr.expression, func);
		Type_Info expr_type = node->unary_expr.expr_type;
		switch((int)node->unary_expr.op.type)
		{
			case '@':
			{
				b32 is_const_global = false;
				Assert(node->unary_expr.expression->type == type_identifier);
				llvm::Value *address =
					get_identifier(node->unary_expr.expression->identifier.name,
							&is_const_global);
				return address;
			} break;
			case '*':
			{
				result = backend.builder->CreateLoad(apoc_type_to_llvm(expr_type, backend), expr);
			} break;
			case tok_minus:
			{
				result = backend.builder->CreateNeg(expr);
			} break;
			case tok_bits_not:
			{
				result = backend.builder->CreateNot(expr);
			} break;
			case tok_plusplus:
			{
				llvm::Value *one = backend.builder->getInt64(1);
				Type_Info one_type = {};
				one_type.type = T_INTEGER;
				one_type.primitive.size = byte8;
				one = create_cast(expr_type, one_type, one);

				AllocaInst *to_store = backend.named_values[std::string((char *)node->unary_expr.expression->identifier.name)];
				Assert(to_store);
				if(is_float(expr_type))
					result = backend.builder->CreateFAdd(expr, one);
				else
					result = backend.builder->CreateAdd(expr, one);
				backend.builder->CreateStore(result, to_store);
			} break;
			case tok_minusminus:
			{
				llvm::Value *one = backend.builder->getInt64(1);
				Type_Info one_type = {};
				one_type.type = T_INTEGER;
				one_type.primitive.size = byte8;
				one = create_cast(expr_type, one_type, one);
				 
				AllocaInst *to_store = backend.named_values[std::string((char *)node->unary_expr.expression->identifier.name)];
				Assert(to_store);
				if(is_float(expr_type))
					result = backend.builder->CreateFSub(expr, one);
				else
					result = backend.builder->CreateSub(expr, one);
				backend.builder->CreateStore(result, to_store);
			} break;
			default:
			{
				LG_FATAL("Unhandled unary expr %c", node->unary_expr.op.type);
			} break;
		}
		return result;
	}
	else if(node->type == type_size)
	{
		int type_size = get_type_size(node->size.operand_type);
		return backend.builder->getInt64((u64)type_size);
	}
	else if(node->type == type_cast)
	{
		Type_Info cast_type = node->cast.type;
		Type_Info casted = node->cast.expr_type;
		if(node->cast.expr_type.type == T_ARRAY && node->cast.type.type == T_POINTER)
		{
			auto zero = ConstantInt::get(*backend.context, llvm::APInt(64, 0, true));
			llvm::Value *idx_list[] = {
				zero,
			};
			auto ptr_type = apoc_type_to_llvm(node->cast.expr_type, backend);
			auto ptr = generate_lhs(f, func, node->cast.expression, NULL, false, (Type_Info){}); 
			return backend.builder->CreateGEP(ptr_type, ptr, idx_list, "elem_ptr");
		}
		else
		{
			llvm::Value *cast_expr = generate_expression(f, node->cast.expression, func);

			cast_expr = create_cast(cast_type, casted, cast_expr);
			return cast_expr;
		}
	}
	else return generate_operand(f, node, func);
}

llvm::Value *
generate_expression(File_Contents *f, Ast_Node *node, Function *func)
{
	if(node->type == type_binary_expr)
	{
		b32 has_casted = false;
		// @TODO: potential u64
		Type_Info untyped_int_type = {T_INTEGER};
		untyped_int_type.primitive.size = byte8;
		Type_Info untyped_float_type = {T_FLOAT};
		untyped_float_type.primitive.size = real64;
		llvm::Value *left = generate_expression(f, node->left, func);
		llvm::Value *right = generate_expression(f, node->right, func);

		Type_Info from_cast = {};

		if(is_untyped(node->binary_expr.left))
		{
			has_casted = true;
			if(is_untyped(node->binary_expr.right))
				goto END_UNTYPED_CAST;
			if(is_float(node->binary_expr.left))
			{
				from_cast = untyped_float_type;
			}
			else
			{
				from_cast = untyped_int_type;
			}
			left = create_cast(node->binary_expr.right, from_cast, left);
		}

		if(is_untyped(node->binary_expr.right))
		{
			has_casted = true;
			if(is_float(node->binary_expr.right))
			{
				from_cast = untyped_float_type;
			}
			else
			{
				from_cast = untyped_int_type;
			}
			right = create_cast(node->binary_expr.left, from_cast, right);
		}
		END_UNTYPED_CAST:;

		llvm::Value *result = NULL;
		switch ((int)node->binary_expr.op)
		{
			case '+':
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFAdd(left, right);
				else
					result = backend.builder->CreateAdd(left, right);
			} break;
			case '-':
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFSub(left, right);
				else
					result = backend.builder->CreateSub(left, right);
			} break;
			case '*':
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFMul(left, right);
				else
					result = backend.builder->CreateMul(left, right);
			} break;
			case '/':
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFDiv(left, right);
				else if(is_signed(node->binary_expr.left))
					result = backend.builder->CreateSDiv(left, right);
				else
					result = backend.builder->CreateUDiv(left, right);
			} break;
			case '%':
			{
				// @TODO: test
				// @TODO: this has undefined behaviour with 0 division
				if(is_float(node->binary_expr.left))
				{
					result = backend.builder->CreateFRem(left, right);
				}
				else if(is_signed(node->binary_expr.left))
				{
					result = backend.builder->CreateSRem(left, right);
				}
				else
				{
					result = backend.builder->CreateURem(left, right);
				}
			} break;
			case tok_logical_is:
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFCmpUEQ(left, right);
				else
					result = backend.builder->CreateICmpEQ(left, right);
			} break;
			case tok_logical_isnot:
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFCmpUNE(left, right);
				else
					result = backend.builder->CreateICmpNE(left, right);
			} break;
			case tok_logical_and:
			{
				result = backend.builder->CreateAnd(left, right, "&&");
			} break;
			case tok_bits_rshift:
			{
				result = backend.builder->CreateShl(left, right);
			} break;
			case tok_bits_lshift:
			{
				result = backend.builder->CreateLShr(left, right);
			} break;
			case '<':
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFCmpULT(left, right);
				else if(is_signed(node->binary_expr.left))
					result = backend.builder->CreateICmpSLT(left, right);
				else
					result = backend.builder->CreateICmpULT(left, right);
			} break;
			case '>':
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFCmpUGT(left, right);
				else if(is_signed(node->binary_expr.left))
					result = backend.builder->CreateICmpSGT(left, right);
				else
					result = backend.builder->CreateICmpUGT(left, right);
			} break;
			case tok_logical_gequal:
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFCmpUGE(left, right);
				else if(is_signed(node->binary_expr.left))
					result = backend.builder->CreateICmpSGE(left, right);
				else 
					result = backend.builder->CreateICmpUGE(left, right);
			} break;
			case tok_logical_lequal:
			{
				if(is_float(node->binary_expr.left))
					result = backend.builder->CreateFCmpULE(left, right);
				else if(is_signed(node->binary_expr.left))
					result = backend.builder->CreateICmpSLE(left, right);
				else 
					result = backend.builder->CreateICmpULE(left, right);
			} break;
			case tok_bits_and:
			{
				result = backend.builder->CreateAnd(left, right);
			} break;
			case tok_bits_xor:
			{
				result = backend.builder->CreateXor(left, right);
			} break;
			case tok_bits_or:
			{
				result = backend.builder->CreateOr(left, right);
			} break;	
			default:
			{
				LG_FATAL("Unimplemented binary operator %c", node->binary_expr.op);
			} break;
		}
		Assert(result);
		if(is_logical_op(node->binary_expr.op))
		{
			Type_Info boolean_type = {};
			boolean_type.type = T_BOOLEAN;

			result = backend.builder->CreateCast(Instruction::CastOps::Trunc, result, apoc_type_to_llvm(boolean_type, backend), "boolean_expr");
		}
		else if(has_casted)
		{
			Type_Info to = {};
			if(is_untyped(node->binary_expr.left))
			{
				if(is_untyped(node->binary_expr.right))
					return result;
				to = node->binary_expr.right;
			}
			else
				to = node->binary_expr.left;
			
			result = create_cast(to, from_cast, result);
		}

		return result;
	}
	else
		return generate_unary(f, node, func);
}

llvm::Value *
generate_lhs(File_Contents *f, Function *func, Ast_Node *lhs,
			 llvm::Value *rhs, b32 is_decl, Type_Info decl_type)
{
	switch((int)lhs->type)
	{
		case type_unary_expr:
		{
			Assert(lhs->unary_expr.op.type == tok_star);
			Assert(lhs->unary_expr.expr_type.type == T_POINTER);
			llvm::Value *id = generate_lhs(f, func, lhs->unary_expr.expression, rhs,
											   is_decl, decl_type);
			
			return backend.builder->CreateLoad(id->getType(),
											   id, "ptr_addr");
		} break;
		case type_identifier:
		{
			llvm::Value *result;
			if(is_decl)
			{
				result = allocate_variable(func, lhs->identifier.name, decl_type, backend);
				backend.named_values[std::string((char *)lhs->identifier.name)] = 
				(AllocaInst *)result;
			}
			else
			{
				b32 is_const_global = false;
				result = get_identifier(lhs->identifier.name, &is_const_global);
			}
			return result;
		} break;
		case type_index:
		{
			return generate_index(f, lhs, func, rhs, is_decl, decl_type);
		} break;
		case type_selector:
		{
			auto selector =generate_lhs(f, func, lhs->selector.operand, rhs, is_decl, decl_type);
			Type_Info op_type = lhs->selector.operand_type;
			while(op_type.type == T_POINTER)
			{
				llvm::Type *llvm_op_type = apoc_type_to_llvm(op_type, backend);
				selector = backend.builder->CreateLoad(llvm_op_type, selector);
				op_type = *op_type.pointer.type;
			}
			auto struct_type = shget(backend.struct_types, op_type.identifier);
			return backend.builder->CreateStructGEP(struct_type, selector,
					lhs->selector.selected_index);
		} break;
	}
	Assert(false);
	return NULL;
}

void
generate_assignment(File_Contents *f, Function *func, Ast_Node *node)
{
	Assert(node->type == type_assignment);
	
	
	llvm::Value *expression_value;
	if(node->assignment.rhs)
		expression_value = generate_expression(f, node->assignment.rhs, func);
	else
	{
		Assert(node->assignment.is_declaration == true);
		expression_value = backend.builder->getInt64(0);
	}
	// @NOTE: structs and arrays are handled in their initialization
	if(node->assignment.decl_type.type != T_STRUCT && node->assignment.decl_type.type != T_ARRAY)
	{
		llvm::Value *variable = generate_lhs(f, func, node->assignment.lhs, expression_value, node->assignment.is_declaration, node->assignment.decl_type);
		if (is_untyped(node->assignment.rhs_type))
		{
			Type_Info var_type = node->assignment.decl_type;
			Type_Info cast_type = node->assignment.rhs_type;
			Assert(var_type.type != 0);
			expression_value = create_cast(var_type, cast_type, expression_value);
		}

		backend.builder->CreateStore(expression_value, variable);
	}
	else
	{
		Assert(node->assignment.is_declaration);
		// @TODO: change to find identifier in case of use with arrays
		backend.named_values[std::string((char *)node->assignment.token.identifier)] = (llvm::AllocaInst *)expression_value;
	}
/*
	DEBUG_INFO ( node->assignment.token.line, node->assignment.token.column,
		DIScope *scope = NULL;
		if(is_stack_empty(debug.scope))
			scope = debug.unit;
		else
			scope = stack_peek(debug.scope, DIScope *);

		debug.builder->createAutoVariable(scope, (char *)node->assignment.token.identifier, debug.unit->getFile(), node->assignment.token.line,
			to_debug_type(node->assignment.decl_type, &debug));
	)*/

	// @TODO: Implement volatile variable
}

