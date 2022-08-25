#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Value.h"
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

//#define ONLY_IR
void
do_passes()
{
	#if 0
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
	// Eliminate redundant instructions
	backend.func_pass->add(createEarlyCSEPass(true));
	// Unroll loops
	backend.func_pass->add(createLoopUnrollPass());
	// Optimize memcpys and memsets
	backend.func_pass->add(createMemCpyOptPass());	
	// Couldn't tell you
	backend.func_pass->add(createSCCPPass());
	// Change memory refrences to registers
	backend.func_pass->add(createPromoteMemoryToRegisterPass());
	// For all exits of a for loop it creates one block to redistribute them or something
	backend.func_pass->add(createUnifyLoopExitsPass());
	// Removes Expect instrinsics which are bad or something
	backend.func_pass->add(createLowerExpectIntrinsicPass());

	backend.func_pass->doInitialization();
#else
	
	// Create the analysis managers.
	LoopAnalysisManager loop_analysis;
	FunctionAnalysisManager func_analysis;
	CGSCCAnalysisManager cg_analysis;
	ModuleAnalysisManager module_analysis;

	// Create the new pass manager builder.
	// Take a look at the PassBuilder constructor parameters for more
	// customization, e.g. specifying a TargetMachine or various debugging
	// options.
	PassBuilder pass_builder;

	// Register all the basic analyses with the managers.
	pass_builder.registerModuleAnalyses(module_analysis);
	pass_builder.registerCGSCCAnalyses(cg_analysis);
	pass_builder.registerFunctionAnalyses(func_analysis);
	pass_builder.registerLoopAnalyses(loop_analysis);
	pass_builder.crossRegisterProxies(loop_analysis, func_analysis,
								cg_analysis, module_analysis);

	// Create the pass manager.
	// This one corresponds to a typical -O2 optimization pipeline.
	auto mod_pass = pass_builder.buildPerModuleDefaultPipeline(OptimizationLevel::O2);

	mod_pass.run(*backend.module, module_analysis);
#endif
}

Backend_State
llvm_initialize(File_Contents *f, File_Contents **files)
{
	Backend_State backend = {};
	backend.context = new LLVMContext();
	backend.module = new Module(platform_path_to_file_name((char *)f->path), *backend.context);
	backend.builder = new IRBuilder<>(*backend.context);


	shdefault(backend.struct_types, 0);
	
	DEBUG_INFO (
		debug.builder = new DIBuilder(*backend.module);
		debug.scope = stack_allocate(DINode *);
		size_t file_count = SDCount(files);
		for(size_t i = 0; i < file_count; ++i)
		{
			char *name = platform_path_to_file_name((char *)files[i]->path);
			size_t file_name_len = vstd_strlen((char *)files[i]->path);
			u8 *lookup_name = (u8 *)AllocateCompileMemory(file_name_len + 1);
			memcpy(lookup_name, files[i]->path, file_name_len);
			char *scanner = (char *)lookup_name + file_name_len;
			while(*scanner != '\\' && *scanner != '/') --scanner;
			*scanner = 0;

			File_And_Unit result = {};
			result.file = debug.builder->createFile(name, (char *)lookup_name);
			result.unit = debug.builder->createCompileUnit(dwarf::DW_LANG_C99, 
				result.file, "Apoc Compiler", f->build_commands.optimization > OPT_NONE,
				"", 0);
			shput(debug.file_map, files[i]->path, result);
		}

	backend.module->addModuleFlag(Module::Warning, "Debug Info Version", DEBUG_METADATA_VERSION);
#if defined (_WIN32)
	backend.module->addModuleFlag(Module::Warning, "CodeView", 1);
#elif defined (CM_LINUX)
	backend.module->addModuleFlag(Module::Warning, "Dwarf Version", 13);
#else
#error Unkown debug fromat for this OS
#endif
	)
	
	return backend;
}

void
emit_location(File_Contents *f, Token_Iden token)
{
	if(f->build_commands.debug_info)
	{
		if(token.file == NULL)
			backend.builder->SetCurrentDebugLocation(DebugLoc());
		else {
			DIScope *scope = NULL;
			if(debug.scope.top == -1)
				scope = shget(debug.file_map, token.file).unit;
			else
				scope = stack_peek(debug.scope, DIScope *);
			// @NOTE: I think it's better to not use token.column
			//backend.builder->SetCurrentDebugLocation(DILocation::get(*backend.context, token.line, 0, scope)); 
			backend.builder->SetCurrentDebugLocation(DILocation::get(*backend.context, token.line, token.column, scope));
		}
	}
}

void
emit_global_var(File_Contents *f, Ast_Node *node, u8 *identifier, GlobalVariable *llvm_var)
{
	Assert(node->type == type_assignment);

	DEBUG_INFO (
			auto desc  = shget(debug.file_map, node->assignment.token.file);
			debug.builder->createGlobalVariableExpression(desc.file, StringRef((char *)identifier), StringRef(), desc.file,
				node->assignment.token.line, to_debug_type(node->assignment.decl_type, &debug), true);
			)
}

void
emit_assignment(File_Contents *f, Ast_Node *node, llvm::Value *location, u8 *identifier)
{
	Assert(node->type == type_assignment);

	DEBUG_INFO (
		auto scope = stack_peek(debug.scope, DIScope *);
		auto desc  = shget(debug.file_map, node->assignment.token.file);
		DILocalVariable *debug_var = debug.builder->createAutoVariable(scope, StringRef((char *)identifier),
			desc.file, node->assignment.token.line, to_debug_type(node->assignment.decl_type, &debug),
			false, DINode::FlagZero, get_type_alignment(node->assignment.decl_type) * 8);

		debug.builder->insertDeclare(location, debug_var, debug.builder->createExpression(), 
			DILocation::get(*backend.context, node->assignment.token.line, node->assignment.token.column, scope),
			backend.builder->GetInsertBlock());
	)
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

	char *obj_file = change_file_extension(
			platform_path_to_file_name((char *)f->path), (char *)"o");
	f->obj_name = obj_file;
#if !defined(ONLY_IR)
	LLVMTargetMachineEmitToFile(machine, file_mod, obj_file, LLVMObjectFile, &error);
	LLVMTargetMachineEmitToFile(machine, file_mod, (char *)"asm.s", LLVMAssemblyFile, &error);
#endif	

#if defined(DEBUG)
	std::error_code std_err;
	raw_fd_ostream ir_dest("test.ll", std_err);

	backend.module->print(ir_dest, nullptr);
#endif
}

void
llvm_backend_generate(File_Contents *f, Ast_Node *root, File_Contents **files)
{
	backend = llvm_initialize(f, files);

	generate_signatures(f);
	i32 func_count = 0;
	generate_statement_list(f, root, &func_count);

	DEBUG_INFO(
		debug.builder->finalize();
			)

#if defined(DEBUG)
	std::error_code error_code;
	auto std_out_fd = new raw_fd_ostream("-", error_code);
	bool debug_info_error = false;
	if(verifyModule(*backend.module, std_out_fd, &debug_info_error))
	{
#if !defined(ONLY_IR)
		LG_FATAL("Module is incorrect");
#endif
	}
	if(debug_info_error)
		LG_ERROR("Debug Info Error");
#endif
	generate_obj(f);
}

llvm::StructType *
generate_struct_type(File_Contents *f, Type_Info type)
{
	Assert(type.identifier);
	auto maybe_generated = shget(backend.struct_types, type.identifier);
	if(maybe_generated != NULL)
		return maybe_generated;

	llvm::Type *mem_types[REASONABLE_MAXIMUM];
	DIType *debug_types[REASONABLE_MAXIMUM];

	auto members = type.structure.member_types;
	auto member_count = type.structure.member_count;
	for (size_t i = 0; i < member_count; ++i)
	{
		DEBUG_INFO ( 
				// emit_location(f, type.token);
				debug_types[i] = to_debug_type(members[i], &debug);
				)
		mem_types[i] = apoc_type_to_llvm(members[i], backend);
		if(mem_types[i] == NULL)
		{
			if(members[i].type== T_STRUCT)
				mem_types[i] = generate_struct_type(f, members[i]);
			else
				Assert(false);
		}
	}
	auto array_ref = makeArrayRef(mem_types, member_count);
	llvm::StructType *def_type;
	if(type.structure.is_union)
		def_type = generate_union_type(f, type);
	else
		def_type = StructType::create(*backend.context, array_ref, StringRef((const char *)type.identifier), type.structure.is_packed);

	if(f->build_commands.debug_info)
	{
		to_debug_type(type, &debug);
	}

	return def_type;
}

llvm::StructType *
generate_union_type(File_Contents *f, Type_Info passed_type)
{
	auto type = union_get_biggest_type(passed_type);
	if(type.type == T_INVALID)
		return StructType::create(*backend.context, (char *)passed_type.structure.name);

	llvm::Type *llvm_type = NULL;
	if(type.type != T_STRUCT)
		llvm_type = apoc_type_to_llvm(type, backend);
	else
		llvm_type = generate_struct_type(f, type);
	auto array_ref = makeArrayRef(&llvm_type, 1);
	return StructType::create(*backend.context, array_ref, (char *)passed_type.structure.name);
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
			auto def_type = generate_struct_type(f, type);
			shput(backend.struct_types, type.identifier, def_type);
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
	f->overload_gens = SDCreate(Function *);
	size_t overload_count = SDCount(f->overloads);
	for(size_t i = 0; i < overload_count; ++i)
	{	
		auto func = generate_func(f, f->overloads[i]->overload.function);
		func->addFnAttr(Attribute::AlwaysInline);
		SDPush(f->overload_gens, func);
	}
}

Ast_Node *
generate_statement(File_Contents *f, Ast_Node *node)
{
	switch((int)node->type)
	{
		case type_func:
		{
			if(!((node->function.flags & FF_IS_INTERP_ONLY) || (node->function.flags & FF_IS_INTRINSIC)) && node->function.body)
				return node;
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

			Type_Info from = node->assignment.decl_type;
			if(is_integer(from))
			{
				if(is_signed(from))
				{
					from.primitive.size = byte8;
					from.identifier = (u8 *)"i64";
				}
				else
				{
					from.primitive.size = ubyte8;
					from.identifier = (u8 *)"u64";
				}
			}
			else if(is_float(from))
			{
				from.primitive.size = real64;
				from.identifier = (u8 *)"f64";
			}
			const_val = (Constant *)create_cast(node->assignment.decl_type, from, const_val);

			auto global_type = apoc_type_to_llvm(node->assignment.decl_type, backend);
			auto global_var = new GlobalVariable(
					*backend.module, global_type, node->assignment.is_const,
					GlobalValue::LinkageTypes::ExternalLinkage,
					const_val, "global_var");
			shput(backend.named_globals, node->assignment.token.identifier, global_var);
			emit_global_var(f, node, node->assignment.token.identifier, global_var);
		} break;
		case type_enum: break;
		case type_struct: break;
		case type_scope_start: break;
		case type_overload: break;
		default:
		{
			LG_ERROR("Statement of type %s not handled in code generation", type_to_str(node->type));
		} break;
	}
	return NULL;
}

llvm::Function **
generate_statement_list(File_Contents *f, Ast_Node *list, i32 *out_func_count)
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
	auto func_results = (Function **)AllocateCompileMemory(sizeof(Function *) * func_count);
	*out_func_count = func_count;
	for(size_t i = 0; i < func_count; ++i)
		func_results[i] = generate_func(f, functions[i]);

	return func_results;
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
create_func_debug_type(Ast_Node *node)
{
	auto arguments = node->function.arguments;
	size_t param_count = SDCount(node->function.arguments) + 1;
	Metadata *types[param_count];
	types[0] = to_debug_type(node->function.type, &debug);
	i32 j = 0;
	b32 found_var_args = false;
	for(size_t i = 1; i < param_count; ++i)
	{
		Type_Info type = arguments[j]->variable.type;
		if(type.type == T_DETECT)
			found_var_args = true;
		else
			types[i] = to_debug_type(arguments[j]->variable.type, &debug);
		if(!found_var_args)
			j++;
	}
	param_count -= found_var_args ? 1 : 0;
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

	llvm::ArrayRef<llvm::Type *> params_ref = makeArrayRef((llvm::Type **)param_types, has_var_args ? param_count - 1 : param_count);
	llvm::Type *ret_type = apoc_type_to_llvm(node->function.type, backend);
	FunctionType *func_type = FunctionType::get(ret_type, params_ref, has_var_args);
	Function *func = Function::Create(func_type, Function::ExternalLinkage,
									  (char *)node->function.identifier.name, backend.module);
	
	size_t arg_index = 0;
	for (auto &arg : func->args())
		arg.setName((char *)node->function.arguments[arg_index++]->variable.identifier.name);
	
	return func;
}


llvm::StructType *
get_type_info_type()
{
	auto struct_type = shget(backend.struct_types, "Type_Info");
	if(!struct_type)
		LG_FATAL("Type_Info struct is not defined, it is necessary for using\n"
				"apoc calling convention var args functions and the Any type.\n"
				"Type_Info is defined in the Basic library");
	return struct_type;
}

llvm::AllocaInst *
generate_type_info(Type_Info type, llvm::Function *func)
{
	auto llvm_type = get_type_info_kind("Type_Info", backend);
	IRBuilder<> temp_builder(&func->getEntryBlock(), func->getEntryBlock().begin());
	auto ptr = temp_builder.CreateAlloca(llvm_type, 0, (char *)"runtime_type_info");
	ptr->setAlignment(Align(16));
	write_type_info_to_llvm(type, ptr, llvm_type, backend, func);
	return ptr;
}
#if 0
llvm::Value *
get_context(llvm::Function *func)
{
	auto got = shget(backend.named_values, "__apoc_internal_context");
	if(got)
		return got;
	auto type = shget(backend.struct_types, "__Internal_Context");
	if(!type)
		LG_FATAL("__Internal_Context struct is not defined, it is necessary for using\n"
				"apoc calling convention functions");

	IRBuilder<> temp_builder(&func->getEntryBlock(), func->getEntryBlock().begin());
	auto location = temp_builder.CreateAlloca(type, 0, (char *)"__Internal_Context");
	location->setAlignment(Align(16));
	backend.builder->CreateStructGEP(type, location, 0);
	return location;
}
#endif


llvm::Value *
generate_boolean_expression(File_Contents *f, Ast_Node *expression, Function *func)
{
	llvm::Value *evaluation = generate_expression(f, expression, func);
	if (evaluation->getType() != Type::getInt1Ty(*backend.context))
	{
		evaluation = backend.builder->CreateCast(Instruction::CastOps::Trunc, evaluation, llvm::Type::getInt1Ty(*backend.context), "boolean_expr");
	}
	return evaluation;
}

void
generate_for_loop(File_Contents *f, Ast_Node *node, Function *func,
		BasicBlock *block, BasicBlock *to_go, Ast_Node *statements, u64 *idx)
{
	if(node->for_loop.expr1)
		generate_assignment(f, func, node->for_loop.expr1);

	BasicBlock *cond = BasicBlock::Create(*backend.context, "for.cond", func);
	BasicBlock *body = BasicBlock::Create(*backend.context, "for.body", func);
	BasicBlock *incr = NULL;
	BasicBlock *aftr = BasicBlock::Create(*backend.context, "for.aftr", func);
	backend.builder->CreateBr(cond);

	if(node->for_loop.expr3)
	{
		incr = BasicBlock::Create(*backend.context, "for.incr", func);
		backend.builder->SetInsertPoint(incr);
		generate_expression(f, node->for_loop.expr3, func);
		backend.builder->CreateBr(cond);
	}

	backend.builder->SetInsertPoint(cond);
	auto eval = generate_boolean_expression(f, node->for_loop.expr2, func);
	backend.builder->CreateCondBr(eval, body, aftr);
	
	auto list = statements->statements.list;
	*idx += 1;

	auto after_body = incr ? incr : cond;
	backend.builder->SetInsertPoint(body);
	if(list[*idx]->type == type_scope_start)
	{
		generate_blocks_from_list(f, list[*idx]->scope_desc.body, func, body, "for.body",
				after_body);
	}
	else
	{
		generate_block(f, list[*idx], func, body, "for.body", after_body, statements, idx);
	}
	if(body->getTerminator() == NULL)
		backend.builder->CreateBr(after_body);

	backend.builder->SetInsertPoint(aftr);
	if(aftr->getTerminator() == NULL)
	{
		size_t count = SDCount(list);
		for(; *idx < count; *idx += 1)
			generate_block(f, list[*idx], func, body, "for.body", aftr, statements, idx);
	}


	DEBUG_INFO(
			emit_location(f, node->for_loop.token);
			)
}

llvm::Value *
to_any(llvm::AllocaInst *type, llvm::AllocaInst *value, llvm::Function *func)
{
	auto any_type  = get_type_info_kind("Any", backend);
	auto result    = allocate_with_llvm(func, (u8 *)"to_any", any_type, backend, 16, 16);
	auto type_ptr  = backend.builder->CreateStructGEP(any_type, result, 0);
	auto value_ptr = backend.builder->CreateStructGEP(any_type, result, 1);
	backend.builder->CreateStore(type, type_ptr);
	backend.builder->CreateStore(value, value_ptr);
	return backend.builder->CreateLoad(any_type, result, "any_pass");
}

llvm::Value *
generate_intrinsic(File_Contents *f, Symbol *intrinsic_sym, Ast_Node *call_node,
		llvm::Function *func)
{
	char *name = (char *)intrinsic_sym->identifier;
	if(vstd_strcmp(name, (char *)"var_arg_start"))
	{
		return backend.builder->CreateCall(Intrinsic::getDeclaration(backend.module,
					llvm::Intrinsic::vastart, None), 
				generate_expression(f, call_node->func_call.arguments[0], func));
	}
	else if(vstd_strcmp(name, (char *)"get_next_arg"))
	{
		auto list = generate_expression(f, call_node->func_call.arguments[0], func);
		return backend.builder->CreateVAArg(list, get_type_info_kind("Any", backend));
	}
	else if(vstd_strcmp(name, (char *)"get_type"))
	{
		auto type = generate_type_info(call_node->func_call.expr_types[0], func);
		return type;
	}
	else
		raise_semantic_error(f, "Function marked as intrinsic is not an intrinsic", intrinsic_sym->token);
	return NULL;
}

#if 0
llvm::Value *
generate_func_call(File_Contents *f, Ast_Node *call_node, Function *func)
{
	// @TODO: func pointers
	//Assert(call_node->func_call.operand->type == type_identifier);
	//auto callee = FunctionCallee(shget(backend.func_table, call_node->func_call.operand->identifier.name));
	auto operand = generate_expression(f, call_node->func_call.operand, func);
	auto call_type = type_to_func_type(call_node->func_call.operand_type, backend);
	auto callee = FunctionCallee(call_type, operand);

	size_t arg_count = SDCount(call_node->func_call.arguments);
	llvm::Value *arg_exprs[arg_count];
	auto arg_types = call_node->func_call.arg_types;
	auto expr_types = call_node->func_call.expr_types;
	for (size_t i = 0; i < arg_count; ++i)
	{
		arg_exprs[i] = generate_expression(f, call_node->func_call.arguments[i], func);
		if(arg_types[i].type != T_DETECT)
		{
			//arg_exprs[i] = backend.builder->CreateCast(, Value *V, Type *DestTy)
			arg_exprs[i] = create_cast(arg_types[i], expr_types[i], arg_exprs[i]);
		}
	}
	return backend.builder->CreateCall(callee, makeArrayRef((llvm::Value **)arg_exprs, arg_count));
}
#else
llvm::Value *
generate_func_call(File_Contents *f, Ast_Node *call_node, Function *func)
{
	Assert(call_node->func_call.operand_type.type == T_FUNC);
	llvm::Value *operand = NULL;

	if(call_node->func_call.operand->type == type_overload)
	{
		auto overload = call_node->func_call.operand;
		operand = f->overload_gens[overload->overload.index];
	}

	if(call_node->func_call.operand->type == type_identifier)
	{
		auto sym = get_symbol_spot(f, call_node->func_call.operand->identifier.token);
		if(sym->tag == S_FUNCTION)
		{
			if(sym->node->function.flags & FF_IS_INTRINSIC)
			{
				return generate_intrinsic(f, sym, call_node, func);
			}
		}
	}
	if(!operand)
		operand = generate_expression(f, call_node->func_call.operand, func);
	auto func_pointer_type = type_to_func_type(call_node->func_call.operand_type, backend);
	auto callee = FunctionCallee(func_pointer_type, operand);

	size_t arg_count = SDCount(call_node->func_call.arguments);
	llvm::Value *arg_exprs[arg_count];
	auto arg_types = call_node->func_call.arg_types;
	auto expr_types = call_node->func_call.expr_types;
	
	b32 found_var_args = false;
	size_t j = 0;
	for (size_t i = 0; i < arg_count; ++i)
	{
		arg_exprs[i] = generate_expression(f, call_node->func_call.arguments[i], func);
		if(arg_types[j].type != T_DETECT)
		{
			arg_exprs[i] = create_cast(arg_types[j], expr_types[i], arg_exprs[i]);
		}
		else
		{
			found_var_args = true;
			if(call_node->func_call.operand_type.func.calling_convention == CALL_APOC)
			{
				auto type_ptr = generate_type_info(expr_types[i], func);
				auto val_ptr  = allocate_variable(func, (u8 *)"any_val", expr_types[i],
						backend);
				backend.builder->CreateStore(arg_exprs[i], val_ptr);
				arg_exprs[i] = to_any(type_ptr, val_ptr, func);
			}
		}
		if(!found_var_args)
			j++;
	}
	return backend.builder->CreateCall(callee, makeArrayRef((llvm::Value **)arg_exprs, arg_count));
}
#endif

BasicBlock *
generate_block(File_Contents *f, Ast_Node *node, Function *func, BasicBlock *passed_block,
		const char *block_name, BasicBlock *to_go, Ast_Node *list, u64 *idx)
{
	BasicBlock *result = NULL;
	switch((int)node->type)
	{
		case type_func_call:
		{
			DEBUG_INFO (
				emit_location(f, node->func_call.token);
			)
			generate_func_call(f, node, func);
		} break;
		case type_assignment:
		{
			DEBUG_INFO (
				emit_location(f, node->assignment.token);
			)
			generate_assignment(f, func, node);
		} break;
		case type_return:
		{
			DEBUG_INFO (
			emit_location(f, node->ret.token);
			)
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
			DEBUG_INFO(
			emit_location(f, node->for_loop.token);
			)
			generate_for_loop(f, node, func, passed_block, to_go, list,idx);
		} break;
		case type_if:
		{
			DEBUG_INFO (
					emit_location(f, node->condition.token);
			)
			llvm::Value *evaluation =
				generate_boolean_expression(f, node->condition.expr, func);

			llvm::BasicBlock *if_true = NULL;
			llvm::BasicBlock *if_false = NULL;
			llvm::BasicBlock *to_go_if = to_go ? to_go : NULL;

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
					DEBUG_INFO(
						emit_location(f, else_node->scope_desc.token);
							)
					if(!to_go_if)
						to_go_if = BasicBlock::Create(*backend.context, "to_go_if", func);
					if_false = generate_blocks_from_list(f, else_node->scope_desc.body,
							func, NULL, "else", NULL);
					backend.builder->SetInsertPoint(to_go_if);
					*idx += 1;
					size_t count = SDCount(list->statements.list);

					if(!to_go)
					{
						for(; *idx < count; *idx += 1)
							generate_block(f, list->statements.list[*idx], func,
									to_go_if, "to_go_if", to_go, list, idx);
					}

					backend.builder->SetInsertPoint(if_false);
					if(to_go_if->empty())
					{
						create_branch(if_false, to_go, backend);
						to_go_if->eraseFromParent();
						to_go_if = if_false;
					}
					else
						create_branch(if_false, to_go_if, backend);
				}
				else if(else_node->type == type_if)
				{
					if_false = BasicBlock::Create(*backend.context, "if_false", func);
					backend.builder->SetInsertPoint(if_false);
					to_go_if = generate_block(f, else_node, func, if_false, "", to_go_if, list, idx);
				}
				else
				{
					if(!to_go_if)
						to_go_if = BasicBlock::Create(*backend.context, "to_go_if", func);
					if_false = BasicBlock::Create(*backend.context, "if_false", func);
					backend.builder->SetInsertPoint(if_false);
					generate_block(f, else_node, func, if_false, "", to_go_if, list, idx);
					*idx += 1;
					backend.builder->SetInsertPoint(to_go_if);
					size_t count = SDCount(list->statements.list);

					if(!to_go)
					{
						for(; *idx < count; *idx += 1)
							generate_block(f, list->statements.list[*idx], func, to_go_if,
									"to_go_if",to_go, list, idx);
					}
					
					create_branch(to_go_if, to_go, backend);
					backend.builder->SetInsertPoint(if_false);
					if(to_go_if->empty())
					{
						create_branch(if_false, to_go, backend);
						to_go_if->eraseFromParent();
						to_go_if = if_false;
					}
					else
						create_branch(if_false, to_go_if, backend);
				}
			}
			else	
			{
				DEBUG_INFO(
						emit_location(f, node->condition.token);
						);
				if(to_go_if)
					if_false = to_go_if;
				else
					if_false = BasicBlock::Create(*backend.context, "if_false", func);
				backend.builder->SetInsertPoint(if_false);
				size_t count = SDCount(list->statements.list);

				if(!to_go)
				{
					for(; *idx < count; *idx += 1)
						generate_block(f, list->statements.list[*idx], func,
								if_false, "if_false", to_go, list, idx);
					to_go_if = if_false;
				}
				else 
					if_false = to_go;
				
			}

			if(body_node->type == type_scope_start)
			{
				DEBUG_INFO(
						emit_location(f, body_node->scope_desc.token);
						)
				if_true = generate_blocks_from_list(f, body_node->scope_desc.body, func,
						NULL, "if_true", to_go_if);
			}
			else
			{
				if_true = BasicBlock::Create(*backend.context, "if_true", func);
				if(if_true->getTerminator() == NULL)
				{
					backend.builder->SetInsertPoint(if_true);
					generate_block(f, body_node, func, if_true, "if_true", to_go_if, list, idx);
					
					create_branch(if_true, to_go_if, backend);
				}
			}
			DEBUG_INFO (
					emit_location(f, node->condition.token);
			)
			backend.builder->SetInsertPoint(passed_block);
			backend.builder->CreateCondBr(evaluation, if_true, if_false);
			result = to_go_if;
		} break;
		case type_scope_start: { DEBUG_INFO ( emit_location(f, node->scope_desc.token); ) } break;
		case type_scope_end: { DEBUG_INFO ( emit_location(f, node->scope_desc.token); ) } break;
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
	Ast_Node *node;
	for(size_t i = 0; i < count; ++i)
	{
		node = list[i];
		generate_block(f, node, func, body_block, block_name, to_go,
				list_node, &i);
		if(node->type == type_return)
			break;
	}

	create_branch(body_block, to_go, backend);
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

llvm::Function *
generate_func(File_Contents *f, Ast_Node *node)
{
	Function *func = generate_func_signature(f, node);

	DISubprogram *subprogram = NULL;
	File_And_Unit debug_unit = {};
	if(f->build_commands.debug_info) {
			Assert(node->function.body);
			auto debug_name = StringRef((char *)node->function.identifier.name, vstd_strlen((char *)node->function.identifier.name));
			debug_unit = shget(debug.file_map, node->function.identifier.token.file);
			Assert(debug_unit.file != NULL);
			u64 line = node->function.identifier.token.line;
			u64 scope_line = node->function.body->scope_desc.token.line;
			subprogram = debug.builder->createFunction((DIScope *)debug_unit.file, debug_name, StringRef(),
					debug_unit.file, line, create_func_debug_type(node), scope_line, DINode::FlagPrototyped, DISubprogram::SPFlagDefinition);
			Assert(subprogram);
			func->setSubprogram(subprogram);
			stack_push(debug.scope, subprogram);
			emit_location(f, (Token_Iden){});
	}

	if(f->build_commands.target == TG_WASM)
		func->addFnAttr( llvm::Attribute::get(*backend.context, "wasm-export-name", func->getName()) );

	// @TODO: put source info in the function
	BasicBlock *body_block = BasicBlock::Create(*backend.context, "entry", func);
	backend.builder->SetInsertPoint(body_block);
	shfree(backend.named_values);

	{
		size_t arg_index = 0;
		for (auto &arg : func->args())
		{
			auto apoc_arg = node->function.arguments[arg_index++];
			u8 *arg_string = (u8 *)AllocateCompileMemory(arg.getName().size() + 1);
			memcpy(arg_string, arg.getName().str().c_str(), arg.getName().size());
			auto variable = allocate_variable(func, arg_string, apoc_arg->variable.type, backend);
			DEBUG_INFO (
				DILocalVariable *debug_var = debug.builder->createParameterVariable(subprogram, arg.getName().str(),
					arg_index - 1, debug_unit.file,
					apoc_arg->variable.identifier.token.line, to_debug_type(apoc_arg->variable.type, &debug));
				debug.builder->insertDeclare(variable, debug_var, debug.builder->createExpression(),
					DILocation::get(subprogram->getContext(), apoc_arg->variable.identifier.token.line, 0, subprogram),
					backend.builder->GetInsertBlock());
			)

			backend.builder->CreateStore(&arg, variable);
			shput(backend.named_values, arg_string, variable);
		}
	}
	Assert(node->function.body);

	DEBUG_INFO (
			emit_location(f, node->function.body->scope_desc.token);
			)

	
	generate_blocks_from_list(f, node->function.body->scope_desc.body, func, body_block, "main", NULL);

	DEBUG_INFO ( _stack_pop(&debug.scope); 
		debug.builder->finalizeSubprogram(subprogram);
		)
		return func;
}

llvm::Value *
get_identifier(u8 *name, Variable_Types *returned_type)
{
	AllocaInst *var_location = shget(backend.named_values, name);
	if(var_location == NULL)
	{
		auto global_var = shget(backend.named_globals, name);
		if(global_var == NULL)
		{
			auto function = shget(backend.func_table, name);
			Assert(function);
			*returned_type = ID_FUNCTION;
			return function;
		}
		*returned_type = global_var->isConstant() ? ID_CONST_GLOBAL : ID_GLOBAL;
		return global_var;
	}
	*returned_type = ID_LOCAL;
	return var_location;
}

llvm::Value *
generate_selector(File_Contents *f, Ast_Node *node, Function *func)
{
	llvm::Value *operand = NULL;
	Type_Info op_type = node->selector.operand_type;
	if(op_type.type == T_POINTER)
	{
		if(node->selector.operand->type != type_identifier)
			operand = generate_lhs(f, func, node->selector.operand,
					NULL, false, (Type_Info){});
		else
			operand = shget(backend.named_values, node->selector.operand->identifier.name);
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
			if(node->selector.operand->type == type_identifier)
				operand = shget(backend.named_values, node->selector.operand->identifier.name);
			else
				operand = generate_lhs(f, func, node->selector.operand,
						NULL, false, (Type_Info){});
		}
		if(op_type.structure.is_union)
		{
			auto elem_ptr = backend.builder->CreateStructGEP(
					struct_type, operand, 0,
					"union member ptr");
			return elem_ptr;
		}
		else 
		{
			auto elem_ptr = backend.builder->CreateStructGEP(
					struct_type, operand, node->selector.selected_index,
					"struct member ptr");
			return elem_ptr;
		}
	}
	else if(op_type.type == T_ENUM)
	{
		auto enumerator = op_type.enumerator.node->enumerator;
		auto member = enumerator.members[node->selector.selected_index];
		llvm::Value *val = interp_val_to_llvm(member->interp_val.val, backend, func);
		return create_cast(enumerator.type, member->interp_val.val.type, val);
	}
	else
		Assert(false);
	return NULL;
}

llvm::Value *
generate_operand(File_Contents *f, Ast_Node *node, Function *func)
{
	switch (node->type)
	{
		case type_identifier:
		{
			Variable_Types type;
			llvm::Value *value = get_identifier(node->identifier.name, &type);
			
			if(type == ID_CONST_GLOBAL)
				return ((GlobalVariable *)value)->getInitializer();
			else if(type == ID_FUNCTION)
				return value;
			else
				return backend.builder->CreateLoad(
						((llvm::AllocaInst *)value)->getAllocatedType(), value);
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
				//auto first_elem = backend.builder->CreateGEP(llvm_type, location, 
				//		idx_list, "", true);
				auto first_elem = backend.builder->CreateInBoundsGEP(llvm_type, location, idx_list);
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
			return generate_func_call(f, node, func);
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
			if(node->selector.operand_type.type == T_ENUM)
			{
				return generate_selector(f, node, func);
			}
			else
			{
				auto elem_ptr = generate_selector(f, node, func);
				auto llvm_op_type = apoc_type_to_llvm(node->selector.selected_type, backend);
				return backend.builder->CreateLoad(llvm_op_type, elem_ptr, "selected");
			}
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
			}
			else
			{
				size_t expr_count = SDCount(node->struct_init.expressions);
				auto expressions = node->struct_init.expressions;

				auto members = node->struct_init.type.structure.member_types;

				for(size_t i = 0; i < expr_count; ++i)
				{
					llvm::Value *expr_val = generate_expression(f, expressions[i], func);
					expr_val = create_cast(members[i], node->struct_init.expr_types[i], expr_val);
				
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
				return generate_lhs(f, func, node->unary_expr.expression, NULL, false, node->unary_expr.expr_type);
			} break;
			case '*':
			{
				Assert(expr_type.type == T_POINTER);
				result = backend.builder->CreateLoad(apoc_type_to_llvm(*expr_type.pointer.type, backend), expr);
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

				AllocaInst *to_store = shget(backend.named_values, node->unary_expr.expression->identifier.name);
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
				 
				AllocaInst *to_store = shget(backend.named_values, node->unary_expr.expression->identifier.name);
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
		// @TODO: potential u64
		Type_Info untyped_int_type = {T_INTEGER};
		untyped_int_type.primitive.size = byte8;
		Type_Info untyped_float_type = {T_FLOAT};
		untyped_float_type.primitive.size = real64;
		llvm::Value *left = generate_expression(f, node->left, func);
		llvm::Value *right = generate_expression(f, node->right, func);

		if(node->binary_expr.op == tok_logical_and || node->binary_expr.op == tok_logical_or)
		{
			left  = backend.builder->CreateCast(Instruction::CastOps::Trunc, left , llvm::Type::getInt1Ty(*backend.context), "left_logical" );
			right = backend.builder->CreateCast(Instruction::CastOps::Trunc, right, llvm::Type::getInt1Ty(*backend.context), "right_logical");
		}
		else
			right = create_cast(node->binary_expr.left, node->binary_expr.right, right);

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
		// @TODO: remove this? we already have generate_boolean_expression
		if(is_logical_op(node->binary_expr.op))
		{
			result = backend.builder->CreateCast(Instruction::CastOps::Trunc, result, llvm::Type::getInt1Ty(*backend.context), "boolean_expr");
		}

		return result;
	}
	else
		return generate_unary(f, node, func);
}

llvm::Value *
generate_lhs(File_Contents *f, Function *func, Ast_Node *lhs, llvm::Value *rhs, b32 is_decl, Type_Info decl_type, u8 **out_identifier)
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
			if(out_identifier)
				*out_identifier = lhs->identifier.name;
			llvm::Value *result;
			if(is_decl)
			{
				result = allocate_variable(func, lhs->identifier.name, decl_type, backend);
				shput(backend.named_values, lhs->identifier.name, (AllocaInst *)result);
			}
			else
			{
				Variable_Types id_type;
				result = get_identifier(lhs->identifier.name, &id_type);

				// @TODO: compiler error for this
				Assert(id_type != ID_FUNCTION);
			}
			return result;
		} break;
		case type_index:
		{
			return generate_index(f, lhs, func, rhs, is_decl, decl_type);
		} break;
		case type_selector:
		{
			return generate_selector(f, lhs, func);
		} break;
	}
	Assert(false);
	return NULL;
}

b32
expression_has_list(Ast_Node *node)
{
	if(!node)
		return false;

	switch((int)node->type)
	{
		case type_binary_expr:
		{
			b32 left  = expression_has_list(node->left);
			b32 right = expression_has_list(node->right);
			return left > right ? left : right;
		} break;
		case type_unary_expr:
		{
			return expression_has_list(node->unary_expr.expression);
		} break;
		case type_cast:
		{
			return expression_has_list(node->cast.expression);
		} break;
		case type_size:
		{
			return expression_has_list(node->size.operand);
		} break;
		case type_struct_init:
		case type_array_list:
		{
			return true;
		} break;
		default:
		{
			return false;
		} break;
	}
}

void
generate_assignment(File_Contents *f, Function *func, Ast_Node *node)
{
	Assert(node->type == type_assignment);

	u8 *identifier = NULL;
	llvm::Value *expression_value;
	if(node->assignment.rhs)
		expression_value = generate_expression(f, node->assignment.rhs, func);
	else
	{
		Assert(node->assignment.is_declaration == true);
		if(node->assignment.decl_type.type == T_STRUCT)
		{
			expression_value = allocate_variable(func, (u8 *)"zero_init_struct",
					node->assignment.decl_type, backend);
		}
		else
		{
			expression_value = backend.builder->getInt64(0);
		}
	}
	llvm::Value *location = NULL;
	// @TODO: remove this and place a flag field in generate_expression so we don't have to iterate the expression twice
	b32 has_list = expression_has_list(node->assignment.rhs);

	// @NOTE: structs and arrays are handled in their initialization
	if(!has_list)
	{
		location = generate_lhs(f, func, node->assignment.lhs, expression_value, node->assignment.is_declaration, node->assignment.decl_type, &identifier);
		if (is_untyped(node->assignment.rhs_type))
		{
			Type_Info var_type = node->assignment.decl_type;
			Type_Info cast_type = node->assignment.rhs_type;
			Assert(var_type.type != 0);
			expression_value = create_cast(var_type, cast_type, expression_value);
		}

		backend.builder->CreateStore(expression_value, location);
	}
	else
	{
		Assert(node->assignment.is_declaration);
		location = expression_value;
		// @TODO: change to find identifier in case of use with arrays
		identifier = node->assignment.token.identifier;
		shput(backend.named_values, node->assignment.token.identifier, (llvm::AllocaInst *)expression_value);
	}
	// @TODO: Implement volatile variable	
	emit_assignment(f, node, location, identifier);
}

