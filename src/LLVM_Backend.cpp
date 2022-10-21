#include <LLVM_Backend.h>
#include <platform/platform.h>
#include <LLVM_Helpers.h>
#include <Analyzer.h>
#include <Memory.h>
#include <Stack.h>
#include <Log.h>

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

// @TODO: remove this
// @HACK
// @TODO: remove this
// @HACK
// @TODO: remove this
// @HACK
static File_Contents *basic_f;

#define __INTERNAL_CONTEXT_SIZE sizeof(size_t)

//#define ONLY_IR
void
do_passes(File_Contents *f)
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
	ModulePassManager mod_pass;
	if (f->build_commands.optimization == OPT_MAX)
		mod_pass = pass_builder.buildPerModuleDefaultPipeline(OptimizationLevel::O3);
	else if (f->build_commands.optimization == OPT_SOME)
		mod_pass = pass_builder.buildPerModuleDefaultPipeline(OptimizationLevel::O1);

	mod_pass.run(*backend.module, module_analysis);
#endif
}

Backend_State
llvm_initialize(File_Contents **files)
{
	Backend_State backend = {};
	backend.context = new LLVMContext();
	backend.module = new Module(platform_path_to_file_name((char *)files[0]->path), *backend.context);
	backend.builder = new IRBuilder<>(*backend.context);

	size_t file_count = SDCount(files);
	LOOP_FILES
	{
		File_Contents *f = files[file_idx];
		shdefault(f->struct_types, 0);
	}
	
	if (files[0]->build_commands.debug_info) {
		debug.builder = new DIBuilder(*backend.module);
		debug.scope = stack_allocate(DINode*);
		size_t file_count = SDCount(files);
		DICompileUnit* compile_unit = NULL;
		for (size_t i = 0; i < file_count; ++i)
		{
			char* name = platform_path_to_file_name((char*)files[i]->path);
			size_t file_name_len = vstd_strlen((char*)files[i]->path);
			u8* lookup_name = (u8*)AllocateCompileMemory(file_name_len + 1);
			memcpy(lookup_name, files[i]->path, file_name_len);
			char* scanner = (char*)lookup_name + file_name_len;
			while (*scanner != '\\' && *scanner != '/') --scanner;
			*scanner = 0;

			char* file_name = (char*)AllocateCompileMemory(vstd_strlen(name) + 3);
			if (compile_unit)
				vstd_strcat_multiple(file_name, 2, "./", name);
			else
				vstd_strcat(file_name, name); // @NOTE: kinda pointless

			File_And_Unit result = {};
			result.file = debug.builder->createFile(file_name, (char*)lookup_name);
			if (!compile_unit)
				compile_unit = debug.builder->createCompileUnit(dwarf::DW_LANG_C99,
					result.file, "Apoc Compiler", files[0]->build_commands.optimization > OPT_NONE,
					"", 0);
			result.unit = compile_unit;
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
	}
	
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

DIGlobalVariableExpression *
emit_global_var(File_Contents *f, Ast_Node *node, u8 *identifier, GlobalVariable *llvm_var)
{
	Assert(node->type == type_assignment);

	DEBUG_INFO (
			auto desc  = shget(debug.file_map, node->assignment.token.file);
			return debug.builder->createGlobalVariableExpression(desc.file, StringRef((char *)identifier), StringRef(), desc.file,
				node->assignment.token.line, to_debug_type(node->assignment.decl_type, &debug), true);

			)
		return NULL;
}

void
emit_assignment(File_Contents *f, Ast_Node *node, llvm::Value *location, u8 *identifier)
{
	Assert(node->type == type_assignment);

	if(f->build_commands.debug_info) {
		auto scope = stack_peek(debug.scope, DIScope *);
		auto desc  = shget(debug.file_map, node->assignment.token.file);
		DILocalVariable *debug_var = debug.builder->createAutoVariable(scope, StringRef((char *)identifier),
			desc.file, node->assignment.token.line, to_debug_type(node->assignment.decl_type, &debug),
			false, DINode::FlagZero, get_type_alignment(node->assignment.decl_type) * 8);

		debug.builder->insertDeclare(location, debug_var, debug.builder->createExpression(), 
			DILocation::get(*backend.context, node->assignment.token.line, node->assignment.token.column, scope),
			backend.builder->GetInsertBlock());
	}
}

void set_asm_syntax_to_intel()
{
    char const *args[] = { "some-exe-name", "--x86-asm-syntax=intel" };
    auto const res = llvm::cl::ParseCommandLineOptions(std::size(args), args);
    Assert(res);
}

bool
emit_file(TargetMachine* target_machine, CodeGenFileType file_type, char *file_name)
{
	bool result = true;
	std::error_code EC;
	raw_fd_ostream dest(file_name, EC, sys::fs::OF_None);
	if (EC)
	{
		LG_ERROR("%s", EC.message().c_str());
		return false;
	}
	legacy::PassManager pass;
	std::string error;
	backend.module->setDataLayout(target_machine->createDataLayout());
	if (target_machine->addPassesToEmitFile(pass, dest, nullptr, file_type))
	{
		result = false;
		LG_ERROR("Target machine can't emit file!");
	}

	pass.run(*backend.module);
	dest.flush();
	return result;
}

void
generate_obj(File_Contents* f)
{

	if (f->build_commands.optimization != OPT_NONE)
		do_passes(f);
	llvm::Target a_target = {};

	INITIALIZE_TARGET(AArch64);
	INITIALIZE_TARGET(X86);
	INITIALIZE_TARGET(WebAssembly);

	auto target_triple = sys::getDefaultTargetTriple();

	char* features = (char *)"";
	if (f->build_commands.target == TG_X64)
	{
		backend.module->setTargetTriple(target_triple);
		features = LLVMGetHostCPUFeatures();
	}
	else if (f->build_commands.target == TG_WASM)
	{
		backend.module->setTargetTriple(std::string("wasm32"));
	}

	std::string error;
	auto target = TargetRegistry::lookupTarget(target_triple, error);
	if (!target) {
		errs() << error;
		LG_FATAL("Couldn't find target triple");
	}

	const char* cpu = "generic";
	if(f->build_commands.target == TG_X64)
		cpu = "x86-64-v2";

	TargetOptions opt;
	auto rm = Optional<Reloc::Model>();
	auto target_machine = target->createTargetMachine(target_triple, cpu, features, opt, rm);
	backend.module->setDataLayout(target_machine->createDataLayout());
	backend.module->setTargetTriple(target_triple);

	char* obj_file = change_file_extension(
		platform_path_to_file_name((char*)f->path), (char*)"o");
	f->obj_name = obj_file;
	char* asm_file = change_file_extension(
		platform_path_to_file_name((char*)f->path), (char*)"asm");

#if !defined(ONLY_IR)
	
	emit_file(target_machine, CGFT_ObjectFile, obj_file);
	emit_file(target_machine, CGFT_AssemblyFile, asm_file);

#endif

#if defined(DEBUG)
	std::error_code std_err;
	raw_fd_ostream ir_dest("test.ll", std_err);

	backend.module->print(ir_dest, nullptr);
#endif
}

void
llvm_backend_generate(File_Contents **files)
{
	backend = llvm_initialize(files);

	if(sizeof(size_t) == 8)
		backend.module->setDataLayout(StringRef("i64:64:64"));

	generate_signatures(files);
	size_t file_count = SDCount(files);

	// Loop through all the global statements in all the files
	// and generate any global variables since they can be cross
	// refrenced in other files
	LOOP_FILES {
		File_Contents *f = files[file_idx];
		auto list = f->ast_root->statements.list;
		size_t list_size = SDCount(list);
		for(int i = 0; i < list_size; ++i)
		{
			generate_if_global_var(f, list[i]);
		}
	}

	// Loop through all and generate overload signatures
	LOOP_FILES {
		File_Contents *f = files[file_idx];
		generate_overloads(f);
	}

	// Loop through all files and generate the code
	LOOP_FILES {
		File_Contents *f = files[file_idx];
		i32 func_count = 0;
		generate_statement_list(f, f->ast_root, &func_count);
	}

	if(files[0]->build_commands.debug_info)
		debug.builder->finalize();

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
	generate_obj(files[0]);
}

void
generate_struct_type(File_Contents *f, Type_Info type, llvm::StructType *opaque_struct)
{
	auto members = type.structure.member_types;
	auto member_count = type.structure.member_count;

	llvm::Type *mem_types[member_count];
	DIType *debug_types[member_count];
	for (size_t i = 0; i < member_count; ++i)
	{
		if(f && f->build_commands.debug_info) {
				// emit_location(f, type.token);
				debug_types[i] = to_debug_type(members[i], &debug);
		}

		mem_types[i] = apoc_type_to_llvm(members[i], &backend);
	}
	auto array_ref = makeArrayRef(mem_types, member_count);

	opaque_struct->setBody(array_ref, type.structure.is_packed);
	if(f && f->build_commands.debug_info)
	{
		to_debug_type(type, &debug);
	}
}

void
generate_union_type(File_Contents *f, Type_Info passed_type, llvm::StructType *opaque_struct)
{
	auto type = union_get_biggest_type(passed_type);
	Assert(type.type != T_INVALID);

	llvm::Type *llvm_type = NULL;
	if(type.type != T_STRUCT)
	{
		llvm_type = apoc_type_to_llvm(type, &backend);
		auto array_ref = makeArrayRef(&llvm_type, 1);
		opaque_struct->setBody(array_ref);
	}
	else
	{
		generate_struct_type(f, type, opaque_struct);
	}
}

llvm::StructType *
generate_opaque_struct(u8 *name)
{
	return StructType::create(*backend.context, StringRef((char *)name, vstd_strlen((char *)name)));
}

// @TODO: DELETE ALL THIS vvv
// @TODO: DELETE ALL THIS vvv
// @TODO: DELETE ALL THIS vvv
// @TODO: DELETE ALL THIS vvv
// @TODO: DELETE ALL THIS vvv
// @TODO: DELETE ALL THIS vvv
// @TODO: DELETE ALL THIS vvv
// @TODO: DELETE ALL THIS vvv
// @TODO: DELETE ALL THIS vvv
// @TODO: DELETE ALL THIS vvv
// @TODO: DELETE ALL THIS vvv

u8 *
generate_module_name(u8 *name, Ast_Node *id)
{
	if(!id)
		return name;
	Assert(id->type == type_identifier);
	int name_len = vstd_strlen((char *)name);
	int mod_len  = vstd_strlen((char *)id->identifier.name);
	u8 *result = (u8 *)AllocateCompileMemory(name_len + mod_len + 10);
	memcpy(result, name, name_len);
	result[name_len] = '!';
	memcpy(result + name_len + 1, id->identifier.name, mod_len);
	result[name_len + mod_len + 1] = '\0';
	return result;
}

b32
is_name_mangled(u8 *name)
{
	for(int i = 0; name[i] != 0; ++i)
		if(name[i] == '!')
			return true;

	return false;
}

Type_Info *
fix_type_name_spaces(File_Contents *f, Type_Info *type, Ast_Node *to_append, int depth = 0)
{
	Assert(to_append->type == type_identifier);
	Assert(type->f_nullable);
	if(depth == 4)
		return type;

	u8 *identifier = type->identifier;
	Type_Info *result = type;
	if(!is_name_mangled(result->identifier) && result->f_nullable == f)
	{
		result = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
		memcpy(result, type, sizeof(Type_Info));
		result->identifier = generate_module_name(type->identifier, to_append);
		type->identifier = result->identifier;
	}
	switch(result->type)
	{
		case T_STRUCT:
		{
			int member_count = result->structure.member_count;
			result->structure.name = result->identifier;
			result->structure.member_types = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info) * member_count);
			for(int i = 0; i < member_count; ++i)
			{
				if(!is_name_mangled(type->structure.member_types[i].identifier))
					result->structure.member_types[i] = *fix_type_name_spaces(f, &type->structure.member_types[i], to_append, depth + 1);
			}
		} break;
		case T_POINTER:
		{
			result->identifier = identifier;
			type->identifier = identifier;
			result->pointer.type = fix_type_name_spaces(f, result->pointer.type, to_append, depth + 1);
		} break;
		case T_ARRAY:
		{
			result->identifier = identifier;
			type->identifier = identifier;
			result->array.type = fix_type_name_spaces(f, result->array.type, to_append, depth + 1);
		} break;
		case T_ENUM:
		{
			result->enumerator.type = fix_type_name_spaces(f, result->enumerator.type, to_append, depth + 1);
		} break;
		case T_FUNC:
		{
			result->identifier = identifier;
			type->identifier = identifier;
			int param_count = SDCount(result->func.param_types);
			result->func.param_types = SDCreate(Type_Info);
			result->func.return_type = fix_type_name_spaces(f, result->func.return_type, to_append, depth + 1);
			for(int i = 0; i < param_count; ++i)
			{
				auto fixed_type = fix_type_name_spaces(f, &type->func.param_types[i], to_append, depth + 1);
				SDPush(result->func.param_types, fixed_type);
			}
		} break;
		case T_MODULE:
		{
			Assert(false);
		} break;
		case T_INVALID:
		case T_DETECT:
		case T_STRING:
		case T_UNTYPED_INTEGER:
		case T_UNTYPED_FLOAT:
		case T_INTEGER:
		case T_FLOAT:
		case T_VOID:
		case T_BOOLEAN:
		{
			result->identifier = identifier;
			type->identifier = identifier;
		} break;
	}
	return result;
}

void
unmangle_type_name(Type_Info *type)
{
	for(int i = 0; type->identifier[i] != '\0'; ++i)
		if(type->identifier[i] == '!')
		{
			type->identifier[i] = 0;
			return;
		}
}

void
generate_opaque_structs(File_Contents *f)
{
	Type_Table *type_table = f->type_table;
	size_t type_len = shlen(type_table);

	for(size_t i = 0; i < type_len; ++i)
	{
		Type_Info *type = &type_table[i].value;
		if(type->type == T_STRUCT)
		{
			Assert(type->f_nullable);
			Assert(type->identifier);

			auto opaque_struct = generate_opaque_struct(type->identifier);
			shput(f->struct_types, type->identifier, opaque_struct);
		}
	}
}

void
generate_structs(File_Contents *f)
{
	Type_Table *type_table = f->type_table;
	size_t type_len = shlen(type_table);

	// @NOTE: fill out the opaque structs
	for(size_t i = 0; i < type_len; ++i)
	{
		Type_Info *type = &type_table[i].value;
		if(type->type == T_STRUCT)
		{
			auto opaque_struct = shget(f->struct_types, type->identifier);
			if(type->structure.is_union)
				generate_union_type(f, *type, opaque_struct);
			else
				generate_struct_type(f, *type, opaque_struct);
		}
	}
}

void
generate_signatures(File_Contents **files)
{
	// @NOTE: generate opaque structs and then fill them out
	// so that structs that contain pointers or hold other structs
	// are easily made

	size_t file_count = SDCount(files);
	LOOP_FILES {
		File_Contents *f = files[file_idx];
		// @TODO: remove this
		// @HACK
		// @TODO: remove this
		// @HACK
		// @TODO: remove this
		// @HACK
		if(vstd_str_ends_with((char *)f->path, (char *)"\\Basic.apoc") || vstd_str_ends_with((char *)f->path, (char *)"/Basic.apoc"))
			basic_f = f;

		generate_opaque_structs(f);
	}

	LOOP_FILES {
		File_Contents *f = files[file_idx];
		generate_structs(f);
	}

	LOOP_FILES {
		File_Contents *f = files[file_idx];
		Scope_Info *scopes = f->scopes;
		size_t scope_count = SDCount(scopes);
		for(size_t i = 0; i < scope_count; ++i)
		{
			Symbol *sym_table = scopes[i].symbol_table;
			size_t sym_count = scopes[i].sym_count;
			for(size_t j = 0; j < sym_count; ++j)
			{
				Symbol symbol = sym_table[j];
				if(symbol.tag == S_FUNCTION)
				{
					Assert(symbol.node->type == type_func);
					if(symbol.node->function.overloads)
					{
						auto overloads = symbol.node->function.overloads;
						size_t overload_count = SDCount(overloads);
						llvm::Function *func = NULL;
						for(size_t k = 0; k < overload_count; ++k)
						{
							func = generate_func_signature(f, overloads[k]);

							Variable_Info *var_info = (Variable_Info *)AllocateCompileMemory(sizeof(Variable_Info));
							var_info->value = func;
							var_info->type  = overloads[k]->function.type;

							shput(f->func_table, overloads[k]->function.identifier.name, var_info);
						}
						//put_not_overloaded(symbol.node->function.identifier.name, func);

						Variable_Info *var_info = (Variable_Info *)AllocateCompileMemory(sizeof(Variable_Info));
						var_info->value = func;
						var_info->type  = symbol.node->function.type;

						shput(f->func_table, get_non_overloaded_name(symbol.node->function.identifier.name), var_info);
					}
					else
					{
						llvm::Function *func = generate_func_signature(f, symbol.node);

						Variable_Info *var_info = (Variable_Info *)AllocateCompileMemory(sizeof(Variable_Info));
						var_info->value = func;
						var_info->type  = symbol.node->function.type;

						shput(f->func_table, symbol.node->function.identifier.name, var_info);
					}
				}
			}
		}
	}
}

void
generate_if_global_var(File_Contents *f, Ast_Node *node)
{
	if (node->type == type_assignment)
	{
		// @NOTE: recomputing the expression is probably faster than looking it up, maybe not?
		Constant *const_val = NULL;
		if(node->assignment.rhs)
		{
			b32 failed = false;
			auto interp_val = interpret_expression(node->assignment.rhs, &failed);
			if(failed)
			{
				raise_interpret_error("Global decleration must be constant",
						node->assignment.token);
				LG_FATAL(".");
			}
			const_val = interp_val_to_llvm(interp_val, &backend, NULL);
		}
		if(!const_val)
		{
			const_val = llvm::Constant::getNullValue(apoc_type_to_llvm(node->assignment.decl_type, &backend));
		}

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

		auto global_type = apoc_type_to_llvm(node->assignment.decl_type, &backend);
		auto global_var = new GlobalVariable(
				*backend.module, global_type, node->assignment.is_const,
				GlobalValue::LinkageTypes::ExternalLinkage,
				const_val, "global_var");

		Type_Info *type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
		memcpy(type, &node->assignment.decl_type, sizeof(Type_Info));

		Variable_Info *var_info = (Variable_Info *)AllocateCompileMemory(sizeof(Variable_Info));
		var_info->value = global_var;
		var_info->type  = type;
		shput(f->named_globals, node->assignment.token.identifier, var_info);
		if (f->build_commands.debug_info) {
			auto d_info = emit_global_var(f, node,
					node->assignment.token.identifier, global_var);
			if (d_info)
				global_var->addDebugInfo(d_info);
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
			if(!((node->function.flags & FF_IS_INTERP_ONLY) || (node->function.flags & FF_IS_INTRINSIC)) && node->function.body)
				return node;
		} break;
		case type_assignment:
		{
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

void
generate_overloads(File_Contents *f)
{
	f->overload_gens = SDCreate(Function *);
	size_t overload_count = SDCount(f->overloads);
	for(size_t i = 0; i < overload_count; ++i)
	{
		auto func = generate_func_signature(f, f->overloads[i]->overload.function, true);
		func->addFnAttr(Attribute::AlwaysInline);
		SDPush(f->overload_gens, func);
	}
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
	
	size_t overload_count = SDCount(f->overloads);
	for(size_t i = 0; i < overload_count; ++i)
	{	
		generate_func(f, f->overloads[i]->overload.function, f->overload_gens[i]);
	}

	// @NOTE: delay function generation so all global symbols can be declared
	size_t func_count = SDCount(functions);
	auto func_results = SDCreate(Function *);
	*out_func_count = func_count;
	for(size_t i = 0; i < func_count; ++i)
	{
		auto func = functions[i];
		if(func->function.overloads)
			func = func->function.overloads[0];

		auto result = generate_func(f, func);
		SDPush(func_results, result);
	}

	return func_results;
}

llvm::Value *
create_cast(Type_Info to, Type_Info from, llvm::Value *castee)
{
	if(to.type == T_BOOLEAN && from.type != T_BOOLEAN)
	{
		auto zero = ConstantInt::get(apoc_type_to_llvm(from, &backend), 0);
		return backend.builder->CreateICmpNE(castee, zero);
	}
	b32 should_cast = true;
	auto to_cast = get_cast_type(to, from, &should_cast);

	if (should_cast)
	{
		castee = backend.builder->CreateCast(to_cast, castee, apoc_type_to_llvm(to, &backend), "cast");
	}
	return castee;
}

DISubroutineType *
create_func_debug_type(Type_Info *func_type)
{
	auto arguments = func_type->func.param_types;
	size_t param_count = SDCount(func_type->func.param_types) + 1;
	Metadata *types[param_count];
	types[0] = to_debug_type(*func_type->func.return_type, &debug);
	i32 j = 0;
	b32 found_var_args = false;
	for(size_t i = 1; i < param_count; ++i)
	{
		Type_Info type = arguments[j];
		if(type.type == T_DETECT)
			found_var_args = true;
		else
			types[i] = to_debug_type(type, &debug);
		if(!found_var_args)
			j++;
	}
	param_count -= found_var_args ? 1 : 0;
	return debug.builder->createSubroutineType(debug.builder->getOrCreateTypeArray(makeArrayRef((Metadata **)types, param_count)));
}

llvm::Function *
generate_func_signature(File_Contents *f, Ast_Node *node, b32 is_overload)
{
	Assert(node->type == type_func);
	auto got_function = shget(f->func_table, node->function.identifier.name);
	if(got_function)
		return (llvm::Function *)got_function->value;
	
	b32 is_apoc = node->function.conv == CALL_APOC && !is_overload;
	b32 send_ptr = !is_standard_size(node->function.type->func.return_type);

	if(send_ptr)
	{
		node->function.flags |= FF_PASS_RETURN_PTR;
	}

	FunctionType *func_type = type_to_func_type(*node->function.type, &backend);
	Function *func = Function::Create(func_type, Function::ExternalLinkage,
			(char *)node->function.identifier.name, backend.module);
	
	size_t arg_index = 0;
	for (auto &arg : func->args())
	{
		if((is_apoc || send_ptr) && arg_index == 0)
			arg.setName("__apoc_internal_context");
		else
			arg.setName((char *)node->function.arguments[arg_index - (is_apoc || send_ptr ? 1 : 0)]->variable.identifier.name);
		arg_index++;
	}
	
	return func;
}


llvm::StructType *
get_type_info_type()
{
	auto struct_type = shget(basic_f->struct_types, "Type_Info");
	if(!struct_type)
		LG_FATAL("Type_Info struct is not defined, it is necessary for using\n"
				"apoc calling convention var args functions and the Any type.\n"
				"Type_Info is defined in the Basic library");
	return struct_type;
}

llvm::AllocaInst *
generate_type_info(Type_Info type, llvm::Function *func)
{
	auto llvm_type = get_type_info_kind(basic_f, "Type_Info", &backend);
	IRBuilder<> temp_builder(&func->getEntryBlock(), func->getEntryBlock().begin());
	auto ptr = temp_builder.CreateAlloca(llvm_type, 0, (char *)"runtime_type_info");
	ptr->setAlignment(Align(16));
	write_type_info_to_llvm(basic_f, type, ptr, llvm_type, &backend, func);
	return ptr;
}

llvm::StructType *
get_context_type()
{
	/*
	auto type = shget(backend.struct_types, "__Internal_Context");
	if(!type)
		LG_FATAL("__Internal_Context struct is not defined, it is necessary for using\n"
				"apoc calling convention functions");

				*/
	static auto struct_type = llvm::StructType::create(*backend.context, llvm::PointerType::get(*backend.context, 0), StringRef("__Internal_Context"), false);
	return struct_type;
}

llvm::Value *
create_context(llvm::Function *func)
{
	auto type = get_context_type();
	IRBuilder<> temp_builder(&func->getEntryBlock(), func->getEntryBlock().begin());
	auto location = temp_builder.CreateAlloca(type, 0, (char *)"__apoc_internal_context");
	location->setAlignment(Align(8));
	backend.builder->CreateStructGEP(type, location, 0);
	return location;
}

llvm::Value *
get_context(llvm::Function *func)
{
	auto got = shget(backend.named_values, "__apoc_internal_context");
	return got->value;
}


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

	backend.builder->SetInsertPoint(cond);
	auto eval = generate_boolean_expression(f, node->for_loop.expr2, func);
	backend.builder->CreateCondBr(eval, body, aftr);
	
	auto list = statements->statements.list;
	*idx += 1;

	if(node->for_loop.expr3)
		incr = BasicBlock::Create(*backend.context, "for.incr", func);

	auto after_body = node->for_loop.expr3 ? incr : cond;

	auto break_block = f->break_block;
	auto continue_block = f->continue_block;
	f->break_block = aftr;
	f->continue_block = after_body;

	backend.builder->SetInsertPoint(body);
	Assert(list[*idx]->type == type_scope_start);

	generate_blocks_from_list(f, list[*idx]->scope_desc.body, func, body, "for.body",
			after_body);

	f->break_block = break_block;
	f->continue_block = continue_block;

	*idx += 1;
	if(body->getTerminator() == NULL)
		backend.builder->CreateBr(after_body);

	if(node->for_loop.expr3)
	{
		backend.builder->SetInsertPoint(incr);
		generate_expression(f, node->for_loop.expr3, func);
		backend.builder->CreateBr(cond);
	}


	{
		backend.builder->SetInsertPoint(aftr);
		size_t count = SDCount(list);
		for(; *idx < count; *idx += 1)
			generate_block(f, list[*idx], func, aftr, "for.aftr", to_go, statements, idx);
		create_branch(aftr, to_go, &backend);
	}


	DEBUG_INFO(
			emit_location(f, *node->for_loop.token);
			)
}

llvm::Value *
to_any(llvm::AllocaInst *type, llvm::AllocaInst *value, llvm::Function *func)
{
	auto any_type  = get_type_info_kind(basic_f, "Any", &backend);
	auto result    = allocate_with_llvm(func, (u8 *)"to_any", any_type, 8);
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
	else if(vstd_strcmp(name, (char *)"var_arg_stop"))
	{
		return backend.builder->CreateCall(Intrinsic::getDeclaration(backend.module,
					llvm::Intrinsic::vaend, None),
				generate_expression(f, call_node->func_call.arguments[0], func));
	}
	else if(vstd_strcmp(name, (char *)"get_type"))
	{
		Assert(call_node->func_call.expr_types[0].type == T_POINTER);
		return generate_type_info(*call_node->func_call.expr_types[0].pointer.type, func);
	}
	else
		raise_semantic_error(f, "Function marked as intrinsic is not an intrinsic", *intrinsic_sym->token);
	return NULL;
}

llvm::FunctionCallee
get_callee_maybe_overloaded(File_Contents *f, llvm::Value *operand, Ast_Node *call_node)
{
	if(call_node->func_call.overload_name)
	{
		Variable_Types val_type = ID_INVALID;
		auto func_val = get_identifier(f, call_node->func_call.overload_name, &val_type);
		Assert(val_type == ID_FUNCTION);
		auto func_pointer_type = type_to_func_type(call_node->func_call.operand_type, &backend);
		auto callee = FunctionCallee(func_pointer_type, func_val->value);
		return callee;
	}
	else
	{
		auto func_pointer_type = type_to_func_type(call_node->func_call.operand_type, &backend);
		auto callee = FunctionCallee(func_pointer_type, operand);
		return callee;
	}

}

llvm::Value *
copy_argument_to_ptr(llvm::Value *arg, Function *func, Type_Info type)
{
	auto result = allocate_variable(func, (u8 *)"arg_copy", type, &backend);
	llvm_memcpy(result, arg, &type, &backend);
#if 0
	auto llvm_type = apoc_type_to_llvm(type, &backend);
	auto pointer_to_result = allocate_with_llvm(func, (u8 *)"arg_copy&",
			llvm::PointerType::get(llvm_type, 0), sizeof(size_t));
	llvm_store(pointer_to_result, result, &backend, sizeof(size_t));
#endif
	return result;
}

llvm::Value *
generate_func_call(File_Contents *f, Ast_Node *call_node, Function *func)
{
	Assert(call_node->func_call.operand_type.type == T_FUNC);
	llvm::Value *operand = NULL;

	File_Contents *search_f = f;
	if(call_node->func_call.operand->type == type_overload)
	{
		auto overload = call_node->func_call.operand;
		operand = overload->overload.f->overload_gens[overload->overload.index];
		search_f = overload->overload.f;
	}
	else if(call_node->func_call.operand->type == type_selector)
	{
		if(call_node->func_call.operand->selector.flags & SEL_MODULE)
		{
			search_f = call_node->func_call.operand->selector.operand_type->f_nullable;
		}
	}

	if(call_node->func_call.operand->type == type_identifier)
	{
		auto sym = get_symbol_spot(f, *call_node->func_call.operand->identifier.token, false);
		if(sym && sym->tag == S_FUNCTION)
		{
			if(sym->node->function.flags & FF_IS_INTRINSIC)
			{
				return generate_intrinsic(f, sym, call_node, func);
			}
		}
	}
	if(!operand)
		operand = generate_expression(f, call_node->func_call.operand, func);

	Type_Info saved_ret = {};
	b32 ret_ptr = false;
	b32 is_apoc = false;
	if(!is_standard_size(call_node->func_call.operand_type.func.return_type))
	{
		ret_ptr = true;
		saved_ret = *call_node->func_call.operand_type.func.return_type;
		*call_node->func_call.operand_type.func.return_type = *get_type(f, (u8 *)"void");
	}
	if(call_node->func_call.operand_type.func.calling_convention == CALL_APOC)
		is_apoc = true;

	auto callee = get_callee_maybe_overloaded(search_f, operand, call_node);
	size_t arg_count = SDCount(call_node->func_call.arguments);
	size_t i = 0;
	size_t j = 0;
	if(is_apoc || ret_ptr)
	{
		++i;
		arg_count++;
	}

	b32 has_attribute[arg_count];
	llvm::Attribute attribs[arg_count];
	for(int i = 0; i < arg_count; ++i)
		has_attribute[i] = false;
	llvm::Value *arg_exprs[arg_count];
	llvm::Value *ret = NULL;
	if(is_apoc)
	{
		auto func_context = create_context(func);
		if(ret_ptr)
		{
			auto context_type = get_context_type();
			ret = allocate_variable(func, (u8 *)"to_return", saved_ret, &backend);
			auto ret_ptr_ptr = backend.builder->CreateStructGEP(context_type, func_context, 0, "ptr_to_ret_ptr");
			backend.builder->CreateStore(ret, ret_ptr_ptr);
		}
		arg_exprs[0] = func_context;
	}
	else if(ret_ptr)
	{
		ret = allocate_variable(func, (u8 *)"to_return", saved_ret, &backend);
		arg_exprs[0] = ret;
	}
	auto arg_types = call_node->func_call.arg_types;
	auto expr_types = call_node->func_call.expr_types;
	
	b32 found_var_args = false;
	for (; i < arg_count; ++i)
	{
		b32 expr_i = i - (is_apoc || ret_ptr ? 1 : 0);
		arg_exprs[i] = generate_expression(f, call_node->func_call.arguments[expr_i], func);

		if(arg_types[j].type != T_DETECT)
		{
			arg_exprs[i] = create_cast(arg_types[j], expr_types[expr_i], arg_exprs[i]);
		}

		if((expr_types[expr_i].type == T_STRUCT || expr_types[expr_i].type == T_ARRAY) && !is_standard_size(&expr_types[expr_i]))
		{
			//arg_exprs[i] = copy_argument_to_ptr(arg_exprs[i], func, expr_types[expr_i]);

			auto llvm_type = apoc_type_to_llvm(expr_types[expr_i], &backend);
			Assert(llvm_type->isSized());
			attribs[i] = llvm::Attribute::get(*backend.context, Attribute::AttrKind::ByVal, llvm_type);
			has_attribute[i] = true;
		}
		else if(!found_var_args && expr_types[expr_i].type == T_STRUCT && is_standard_size(&expr_types[expr_i]))
		{
			arg_exprs[i] = llvm_load(&expr_types[expr_i], arg_exprs[i], "loaded_arg_struct", &backend);
		}

		if(arg_types[j].type == T_DETECT)
		{
			found_var_args = true;
			if(call_node->func_call.operand_type.func.calling_convention == CALL_APOC)
			{
				auto type_ptr = generate_type_info(expr_types[i - 1], func);
				auto val_ptr  = allocate_variable(func, (u8 *)"any_val", expr_types[i - 1],
						&backend);
				backend.builder->CreateStore(arg_exprs[i], val_ptr);
				arg_exprs[i] = to_any(type_ptr, val_ptr, func);
			}
		}
		if(!found_var_args)
			j++;
	}
	if(ret_ptr)
	{
		*call_node->func_call.operand_type.func.return_type = saved_ret;
		auto call = backend.builder->CreateCall(callee, makeArrayRef((llvm::Value **)arg_exprs, arg_count));
		for(int i = 0; i < arg_count; ++i)
			if(has_attribute[i])
				call->addAttributeAtIndex(i + 1, attribs[i]);
#if 0
		auto ret_type = apoc_type_to_llvm(saved_ret,
				backend);
		return backend.builder->CreateLoad(ret_type, ret);
#else
		return ret;
#endif
	}
	else
	{
		auto call = backend.builder->CreateCall(callee, makeArrayRef((llvm::Value **)arg_exprs, arg_count));
		auto ret = (llvm::Value *)call;
		for(int i = 0; i < arg_count; ++i)
			if(has_attribute[i])
				call->addAttributeAtIndex(i + 1, attribs[i]);

		if(call_node->func_call.operand_type.func.return_type->type == T_STRUCT)
		{
			auto ptr = allocate_variable(func, (u8 *)"", *call_node->func_call.operand_type.func.return_type, &backend);
			llvm_store(ptr, ret, &backend, get_type_alignment(*call_node->func_call.operand_type.func.return_type));
			ret = ptr;
		}
		return ret;
	}
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
			DEBUG_INFO (
				emit_location(f, *node->func_call.token);
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
			if(node->ret.func_type.type != T_VOID && func->getReturnType()->isVoidTy())
			{
				Assert(node->ret.expression);
				auto context = get_context(func);
				auto context_type = get_context_type();
				Assert(context);
				auto ret_ptr_ptr = backend.builder->CreateStructGEP(context_type, context, 0, "ret_ptr"); // address of void *
				
				auto ret_ptr = backend.builder->CreateLoad(PointerType::get(*backend.context, 0), ret_ptr_ptr);
				ret_ptr->setAlignment(Align(sizeof(size_t)));

				auto to_ret = generate_expression(f, node->ret.expression, func);
				//llvm_store(&node->ret.func_type, ret_ptr, to_ret, &backend);
				// @TODO: memcpy maybe?
				auto alignment = Align(get_type_alignment(node->ret.func_type));
				backend.builder->CreateMemCpy(ret_ptr, alignment, to_ret, alignment, get_type_size(node->ret.func_type));
				backend.builder->CreateRetVoid();
			}
			else if(node->ret.expression)
			{
				llvm::Value *ret_val = generate_expression(f, node->ret.expression, func);
				ret_val = create_cast(node->ret.func_type, node->ret.expression_type, ret_val);
				if(node->ret.expression_type.type == T_STRUCT)
				{
					ret_val = llvm_load(&node->ret.func_type, ret_val, "ret_loaded_struct", &backend);
				}
				backend.builder->CreateRet(ret_val);
			}
			else
				backend.builder->CreateRetVoid();
		} break;
		case type_break:
		{
			if(f->break_block == NULL) {
				// @TODO: put into the analyzer
				raise_semantic_error(f, "break statement outside a loop/switch statement", *node->brk.token);
			}
			create_branch(passed_block, f->break_block, &backend);
		} break;
		case type_continue:
		{
			if(f->continue_block == NULL) {
				// @TODO: put into the analyzer
				raise_semantic_error(f, "continue statement outside a loop statement", *node->cont.token);
			}
			create_branch(passed_block, f->continue_block, &backend);

		} break;
		case type_for:
		{
			DEBUG_INFO(
			emit_location(f, *node->for_loop.token);
			)
			generate_for_loop(f, node, func, passed_block, to_go, list,idx);
		} break;
		case type_if:
		{
			DEBUG_INFO (
					emit_location(f, *node->condition.token);
			)
			llvm::Value *evaluation =
				generate_boolean_expression(f, node->condition.expr, func);

			llvm::BasicBlock *b_true = BasicBlock::Create(*backend.context, "if.true", func);
			llvm::BasicBlock *b_aftr = BasicBlock::Create(*backend.context, "if.aftr", func);
			llvm::BasicBlock *b_else = NULL;
			*idx += 1;
			auto body = list->statements.list[*idx];
			if(body->type == type_scope_start)
			{
				generate_blocks_from_list(f, body->scope_desc.body, func,
						b_true, "if.true", b_aftr);
			}
			else
			{
				Assert(false);
			}
			*idx += 1;
			auto else_node = list->statements.list[*idx];
			if(else_node->type == type_else)
			{
				*idx += 1;
				auto else_body = list->statements.list[*idx];
				*idx += 1;
				Assert(else_body->type == type_scope_start);
				b_else = generate_blocks_from_list(f, else_body->scope_desc.body, func, NULL, "if.else", b_aftr);
			}

			{
				backend.builder->SetInsertPoint(b_aftr);
				size_t count = SDCount(list->statements.list);
				for(; *idx < count; *idx += 1)
				{
					generate_block(f, list->statements.list[*idx], func, b_aftr, "if.aftr", to_go, list, idx);
					if(b_aftr->getTerminator() != NULL)
					{
						break;
					}
				}
				create_branch(b_aftr, to_go, &backend);
			}
			backend.builder->SetInsertPoint(passed_block);
			backend.builder->CreateCondBr(evaluation, b_true,
					b_else ? b_else : b_aftr);
			result = b_aftr;
		} break;
		case type_scope_start:
		{
			DEBUG_INFO ( emit_location(f, *node->scope_desc.token); )
			auto body = node->scope_desc.body;
			size_t count = SDCount(body->statements.list);
			Ast_Node *node;
			for(size_t i = 0; i < count; ++i)
			{
				node = body->statements.list[i];
				generate_block(f, node, func, passed_block, block_name, to_go,
						body, &i);
				if(passed_block->getTerminator() != NULL)
					break;
			}
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
	Ast_Node *node;
	for(size_t i = 0; i < count; ++i)
	{
		node = list[i];
		generate_block(f, node, func, body_block, block_name, to_go,
				list_node, &i);
		if(body_block->getTerminator() != NULL)
			break;
	}

	create_branch(body_block, to_go, &backend);
	return body_block;
}

llvm::Value *
generate_index(File_Contents *f, Ast_Node *node, Function *func, llvm::Value *rhs, b32 is_decl, Type_Info decl_type)
{
	auto zero = ConstantInt::get(*backend.context, llvm::APInt(64, 0, true));
	llvm::Value *idx = generate_expression(f, node->index.expression, func);
	llvm::Value *array = NULL;
	auto array_type = apoc_type_to_llvm(node->index.operand_type, &backend);
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
		auto elem_ptr = apoc_type_to_llvm(*node->index.operand_type.pointer.type, &backend);
		array = generate_lhs(f, func, node->index.operand, rhs, is_decl, decl_type); 
		array = llvm_load(&node->index.operand_type, array, "ptr_load", &backend);
		//array = backend.builder->CreateLoad(array_type, array, "ptr_load");
		return backend.builder->CreateGEP(elem_ptr, array, idx_list, "elem_ptr");
	}
	else
		Assert(false);
	return NULL;
}

llvm::Function *
generate_func(File_Contents *f, Ast_Node *node, Function *passed_func)
{
	Function *func = NULL;
	if(passed_func)
		func = passed_func;
	else
		func = generate_func_signature(f, node);

	DISubprogram *subprogram = NULL;
	File_And_Unit debug_unit = {};
	if(f->build_commands.debug_info) {
			Assert(node->function.body);
			auto debug_name = StringRef((char *)node->function.identifier.name, vstd_strlen((char *)node->function.identifier.name));
			debug_unit = shget(debug.file_map, node->function.identifier.token->file);
			Assert(debug_unit.file != NULL);
			u64 line = node->function.identifier.token->line;
			u64 scope_line = node->function.body->scope_desc.token->line;
			subprogram = debug.builder->createFunction((DIScope *)debug_unit.file, debug_name, StringRef(),
					debug_unit.file, line, create_func_debug_type(node->function.type), scope_line, DINode::FlagZero, DISubprogram::SPFlagDefinition);
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
	if(backend.named_values)
		shfree(backend.named_values);

	{
		b32 is_apoc = node->function.conv == CALL_APOC;
		b32 send_ptr = (node->function.flags & FF_PASS_RETURN_PTR) != 0;
		size_t arg_index = 0;
		for (auto &arg : func->args())
		{
			llvm::Value *variable = NULL;
			Type_Info *type = NULL;
			u8 *arg_string = NULL;
			if((is_apoc || send_ptr) && arg_index == 0)
			{
				arg_string = (u8 *)"__apoc_internal_context";
				auto context_type = get_context_type();
				auto ptr_to_context = allocate_with_llvm(func, (u8 *)"__ptr_context",
						PointerType::get(context_type, 0), 8);
				llvm_store(ptr_to_context, &arg, &backend, 8);
				auto value_size = ConstantInt::get(*backend.context, APInt(64, __INTERNAL_CONTEXT_SIZE));
				variable = allocate_with_llvm(func, arg_string, context_type, 8);
				auto align = Align(8);
				auto loaded_ptr = backend.builder->CreateLoad(PointerType::get(*backend.context, 0), ptr_to_context);
				backend.builder->CreateMemCpy(variable, align, loaded_ptr, align, value_size);
				if(f->build_commands.debug_info)
				{
					Type_Info *void_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
					void_type->type = T_VOID;

					Type_Info ptr_type = {};
					ptr_type.type = T_POINTER;
					ptr_type.pointer.type = void_type;

					Type_Info *context_debug_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
					context_debug_type->type = T_STRUCT;
					context_debug_type->identifier = (u8 *)"__Internal_Context";
					context_debug_type->structure.name = (u8 *)"__Internal_Context";
					context_debug_type->structure.member_count = 1;
					context_debug_type->structure.member_names = (u8 **)AllocateCompileMemory(sizeof(u8 *));
					context_debug_type->structure.member_types = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));

					context_debug_type->structure.member_names[0] = (u8 *)"return_val";
					context_debug_type->structure.member_types[0] = ptr_type;

					DILocalVariable *debug_var = debug.builder->createParameterVariable(subprogram, arg.getName().str(),
							arg_index, debug_unit.file,
							node->function.identifier.token->line, to_debug_type(*context_debug_type, &debug));
					debug.builder->insertDeclare(variable, debug_var, debug.builder->createExpression(),
							DILocation::get(subprogram->getContext(), node->function.identifier.token->line, 0, subprogram),
							backend.builder->GetInsertBlock());
				}
			}
			else
			{
				Ast_Node *apoc_arg = node->function.arguments[arg_index - (is_apoc || send_ptr ? 1 : 0)];
				type = &apoc_arg->variable.type;
				arg_string = (u8 *)AllocateCompileMemory(arg.getName().size() + 1);
				memcpy(arg_string, arg.getName().str().c_str(), arg.getName().size());

				if((apoc_arg->variable.type.type == T_STRUCT || apoc_arg->variable.type.type == T_ARRAY) && !is_standard_size(&apoc_arg->variable.type))
				{
					//auto derefrence = backend.builder->CreateLoad(apoc_type_to_llvm(apoc_arg->variable.type, &backend), &arg);
					//derefrence->setAlignment(Align(get_type_alignment(apoc_arg->variable.type)));
					//llvm_store(&apoc_arg->variable.type, variable, derefrence, &backend);
					auto llvm_type = apoc_type_to_llvm(*type, &backend);
					func->addAttributeAtIndex(arg_index + 1, Attribute::get(*backend.context, Attribute::AttrKind::ByVal, llvm_type));
					variable = &arg;
				}
				else
				{
					variable = allocate_variable(func, arg_string, apoc_arg->variable.type, &backend);
					llvm_store(&apoc_arg->variable.type, variable, &arg, &backend);
				}

				if(f->build_commands.debug_info)
				{
						DILocalVariable *debug_var = debug.builder->createParameterVariable(subprogram, arg.getName().str(),
							arg_index, debug_unit.file,
							apoc_arg->variable.identifier.token->line, to_debug_type(apoc_arg->variable.type, &debug));
						debug.builder->insertDeclare(variable, debug_var, debug.builder->createExpression(),
							DILocation::get(subprogram->getContext(), apoc_arg->variable.identifier.token->line, 0, subprogram),
							backend.builder->GetInsertBlock());
				}

			}
			arg_index++;
			Variable_Info *var_info = (Variable_Info *)AllocateCompileMemory(sizeof(Variable_Info));
			var_info->value = variable;
			var_info->type = type;
			shput(backend.named_values, arg_string, var_info);
		}
	}
	Assert(node->function.body);

	DEBUG_INFO (
			emit_location(f, *node->function.body->scope_desc.token);
		   )

	
	generate_blocks_from_list(f, node->function.body->scope_desc.body, func, body_block, "main", NULL);

	DEBUG_INFO ( _stack_pop(&debug.scope); 
		debug.builder->finalizeSubprogram(subprogram);
		)
		return func;
}

b32
has_f_been_checked(File_Contents *f, File_Contents **checked_fs, int check_count)
{
	for(int i = 0; i < check_count; ++i)
	{
		if(checked_fs[i] == f)
			return true;
	}
	return false;
}

Variable_Info *
get_identifier(File_Contents *f, u8 *name, Variable_Types *returned_type, b32 is_searching_modules)
{
	static File_Contents **checked_fs = (File_Contents **)AllocateCompileMemory(MB(1));
	static int current_f = 0;
	if(!is_searching_modules)
		current_f = 0;

	auto var_location = shget(backend.named_values, name);
	if(var_location == NULL)
	{
		auto global_var = shget(f->named_globals, name);
		if(global_var == NULL)
		{
			auto function = shget(f->func_table, name);
			if(function == NULL)
			{
				size_t modeul_count = SDCount(f->modules);
				Variable_Info *result = NULL;
				for(size_t module_idx = 0; module_idx < modeul_count; ++module_idx)
				{
					// @TODO: in the analyzer or somewhere make a way to check if on include there are
					// namespace conflictions
					// @TODO: in the analyzer or somewhere make a way to check if on include there are
					// namespace conflictions
					// @TODO: in the analyzer or somewhere make a way to check if on include there are
					// namespace conflictions
					// @TODO: in the analyzer or somewhere make a way to check if on include there are
					// namespace conflictions
					// @TODO: in the analyzer or somewhere make a way to check if on include there are
					// namespace conflictions
					// @TODO: in the analyzer or somewhere make a way to check if on include there are
					// namespace conflictions
					Import_Module *mod = &f->modules[module_idx];
					if(mod->identifier_nullable == NULL && !has_f_been_checked(mod->f, checked_fs, current_f)) {
						Assert(mod->f);
						checked_fs[current_f++] = mod->f;
						result = get_identifier(mod->f, name, returned_type, true);
						if(result)
						{
							return result;
						}
					}
				}
				return result;

				*returned_type = ID_INVALID;
				return NULL;
			}
			*returned_type = ID_FUNCTION;
			return function;
		}
		*returned_type = ((GlobalVariable *)global_var->value)->isConstant() ? ID_CONST_GLOBAL : ID_GLOBAL;
		return global_var;
	}
	*returned_type = ID_LOCAL;
	return var_location;
}

llvm::Value *
generate_selector(File_Contents *f, Ast_Node *node, Function *func)
{
	llvm::Value *operand = NULL;
	Type_Info *op_type = node->selector.operand_type;
	if(op_type->type == T_POINTER)
	{
		if(node->selector.operand->type != type_identifier)
			operand = generate_lhs(f, func, node->selector.operand,
					NULL, false, (Type_Info){});
		else
			operand = shget(backend.named_values, node->selector.operand->identifier.name)->value;
	}

	while(op_type->type == T_POINTER)
	{
		operand = llvm_load(op_type, operand, "derefrence struct", &backend);
		op_type = op_type->pointer.type;
	}

	if(op_type->type == T_STRUCT)
	{
		auto struct_type = apoc_type_to_llvm(*op_type, &backend);
		if(!operand)
		{
			if(node->selector.operand->type == type_identifier)
				operand = shget(backend.named_values, node->selector.operand->identifier.name)->value;
			else
				operand = generate_lhs(f, func, node->selector.operand,
						NULL, false, (Type_Info){});
		}
		if(op_type->structure.is_union)
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
	else if(op_type->type == T_ENUM)
	{
		auto enumerator = op_type->enumerator.node->enumerator;
		auto member = enumerator.members[node->selector.selected_index];
		llvm::Value *val = interp_val_to_llvm(member->interp_val.val, &backend, func);
		return create_cast(enumerator.type, member->interp_val.val.type, val);
	}
	else
		Assert(false);
	return NULL;
}

b32
should_load(Type_Info *type)
{
	return !(type->type == T_STRUCT || type->type == T_ARRAY || type->type == T_FUNC);
}

llvm::Value *
load_got_identifier(Variable_Info *variable, Variable_Types type)
{
	switch(type)
	{
		case ID_CONST_GLOBAL:
		{
			return ((GlobalVariable *)variable->value)->getInitializer();
		} break;
		case ID_FUNCTION:
			return variable->value;
		case ID_GLOBAL:
		{
			if(should_load(variable->type))
				return llvm_load(variable->type, variable->value, "", &backend);

			return variable->value;
		} break;
		case ID_LOCAL:
		{
			if(variable->type->type == T_FUNC || variable->type->type == T_STRUCT)
				return variable->value;
			return backend.builder->CreateLoad(
					apoc_type_to_llvm(*variable->type, &backend), variable->value);

			//return variable->value;
		} break;
		case ID_INVALID:
		{
			Assert(false);
		} break;
	}
	Assert(false);

}

llvm::Value *
generate_operand(File_Contents *f, Ast_Node *node, Function *func)
{
	switch (node->type)
	{
		case type_identifier:
		{
			Variable_Types type;
			auto variable = get_identifier(f, node->identifier.name, &type);
			Assert(type != ID_INVALID);
			return load_got_identifier(variable, type);
		} break;
		case type_run:
		{
			auto constant_val = interp_val_to_llvm(node->run.ran_val, &backend, func);
			if(!is_integer(node->run.ran_val.type) && !is_float(node->run.ran_val.type))
			{
				Type_Info val_type = node->run.ran_val.type;
				auto llvm_type = apoc_type_to_llvm(val_type, &backend);
				auto to_global = new llvm::GlobalVariable(*backend.module, llvm_type, true,
						GlobalValue::LinkageTypes::PrivateLinkage,
						constant_val, "constant_array");

				auto location = allocate_variable(func, (u8 *)"compile_time_array", node->run.ran_val.type, &backend);

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
			char *name = (char *)node->atom.identifier.name;
			if(node->atom.type == LIT_CHAR)
			{
				auto ap = APInt(8, (u64)str_to_u64(name), false);
				return ConstantInt::get(apoc_type_to_llvm(*get_type(f, (u8 *)"u8"), &backend), ap);
			}
			Type_Info type = number_to_untyped_type((u8 *)name);
			if(is_float(type))
			{
				//double value = vstd_str_to_double(name);
				auto llvm_type = apoc_type_to_llvm(type, &backend);
				return ConstantFP::get(llvm_type, StringRef(name, vstd_strlen(name)));
			}
			auto ap = APInt(64, (u64)str_to_i64(name), true);
			return ConstantInt::get(apoc_type_to_llvm(type, &backend), ap);
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
			if(node->selector.operand_type->type == T_ENUM)
			{
				return generate_selector(f, node, func);
			}
			else if(node->selector.operand_type->type == T_MODULE)
			{
				Assert(node->selector.operand_type->f_nullable);
				Variable_Types var_type;
				auto got = get_identifier(node->selector.operand_type->f_nullable, node->selector.identifier->identifier.name, &var_type); 
				Assert(got);
				Assert(var_type == ID_CONST_GLOBAL || var_type == ID_GLOBAL || var_type == ID_FUNCTION);
				return load_got_identifier(got, var_type);
			}
			else
			{
				auto elem_ptr = generate_selector(f, node, func);
				return llvm_load(node->selector.selected_type, elem_ptr, "selected", &backend);
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
					node->array_list.type, &backend);
		
			llvm::Type *array_type = apoc_type_to_llvm(node->array_list.type, &backend);
			llvm::Value *zero = ConstantInt::get(Type::getInt64Ty(*backend.context), 0);
			for(size_t i = 0; i < list_count; ++i)
			{
				llvm::Value *idx_list[2] = {
					zero,
					ConstantInt::get(Type::getInt64Ty(*backend.context), i),
				};
				auto element_ptr = backend.builder->CreateGEP(array_type, 
						array_loc, idx_list, "array_elem");
				
				auto casted = create_cast(*node->array_list.type.array.type, node->array_list.expr_types[i], values[i]);
				llvm_store(node->array_list.type.array.type, element_ptr, casted, &backend);
			}
			auto arr_size = node->array_list.type.array.elem_count;

			Type_Info untyped_type = {};
			untyped_type.type = T_UNTYPED_INTEGER;

			// @NOTE: fill the rest with 0
			if(list_count < arr_size)
			{
				llvm::Value *index_to_end[] = {
					zero,
					ConstantInt::get(Type::getInt64Ty(*backend.context), list_count)
				};
				auto slots_to_fill = arr_size - list_count;
				auto size_to_fill = slots_to_fill * get_type_size(*node->array_list.type.array.type);
				auto llvm_size = ConstantInt::get(*backend.context, APInt(64, size_to_fill, false));
				auto ptr = backend.builder->CreateGEP(array_type, array_loc, index_to_end);
				backend.builder->CreateMemSet(ptr, ConstantInt::get(*backend.context, APInt(8, 0)), llvm_size, Align(get_type_alignment(node->array_list.type)));
			}
			/*
			for(size_t i = list_count; i < arr_size; ++i)
			{

				llvm::Value *idx_list[2] = {
					ConstantInt::get(Type::getInt64Ty(*backend.context), 0),
					ConstantInt::get(Type::getInt64Ty(*backend.context), i),
				};
				auto element_ptr = backend.builder->CreateGEP(array_type, 
						array_loc, idx_list, "array_elem");

				llvm_store(node->array_list.type.array.type, element_ptr, zero, &backend);
				//backend.builder->CreateStore(zero, element_ptr);
			}
			*/
			
			return array_loc;
		} break;
		case type_struct_init:
		{
			Assert(node->struct_init.type.type == T_STRUCT);
			AllocaInst *struct_loc = allocate_variable(func, node->struct_init.operand->identifier.name, node->struct_init.type, &backend);
			
			// @NOTE: fast path
			if(node->struct_init.is_empty_init)
			{
				llvm_memset(struct_loc, 0, get_type_size(node->struct_init.type), get_type_alignment(node->struct_init.type), &backend);
			}
			else
			{
				StructType *type = llvm::dyn_cast<StructType>(apoc_type_to_llvm(node->struct_init.type, &backend));
				size_t expr_count = SDCount(node->struct_init.expressions);
				auto expressions = node->struct_init.expressions;

				auto members = node->struct_init.type.structure.member_types;

				if(expr_count < node->struct_init.type.structure.member_count)
				{
					auto size_to_fill = get_type_size(node->struct_init.type);
					auto alignment    = get_type_alignment(node->struct_init.type);
					llvm_memset(struct_loc, 0, size_to_fill, alignment, &backend);
				}

				for(i64 i = expr_count - 1; i >= 0; --i)
				{
					llvm::Value *expr_val = generate_expression(f, expressions[i], func);
					expr_val = create_cast(members[i], node->struct_init.expr_types[i], expr_val);
				
					llvm::Value *member_loc = backend.builder->CreateStructGEP(type, struct_loc, i);
					llvm_store(&node->struct_init.expr_types[i], member_loc, expr_val, &backend);
				}
			}
			return struct_loc;
		} break;
		case type_index:
		{
			auto elem_ptr = generate_index(f, node, func, NULL, false, (Type_Info){});
			return llvm_load(&node->index.idx_type, elem_ptr, "indexed_val", &backend);
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
		llvm::Value *expr = NULL;
		if(node->unary_expr.op->type != '@')
			expr = generate_expression(f, node->unary_expr.expression, func);
		Type_Info expr_type = node->unary_expr.expr_type;
		switch((int)node->unary_expr.op->type)
		{
			case '@':
			{
				return generate_lhs(f, func, node->unary_expr.expression, NULL, false, node->unary_expr.expr_type);
			} break;
			case '*':
			{
				Assert(expr_type.type == T_POINTER);
				result = llvm_load(expr_type.pointer.type, expr, "derefrenced", &backend);
			} break;
			case tok_minus:
			{
				if(is_float(node->unary_expr.expr_type))
					result = backend.builder->CreateFNeg(expr);
				else
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

				Variable_Types returned_type = ID_INVALID;
				auto to_store = get_identifier(f, node->unary_expr.expression->identifier.name,
						&returned_type);
				Assert(returned_type == ID_LOCAL || returned_type == ID_GLOBAL);
				Assert(to_store);
				if(is_float(expr_type))
					result = backend.builder->CreateFAdd(expr, one);
				else
					result = backend.builder->CreateAdd(expr, one);
				llvm_store(&expr_type, to_store->value, result, &backend);
			} break;
			case tok_minusminus:
			{
				llvm::Value *one = backend.builder->getInt64(1);
				Type_Info one_type = {};
				one_type.type = T_INTEGER;
				one_type.primitive.size = byte8;
				one = create_cast(expr_type, one_type, one);
				 
				auto to_store = shget(backend.named_values, node->unary_expr.expression->identifier.name);
				Assert(to_store);
				if(is_float(expr_type))
					result = backend.builder->CreateFSub(expr, one);
				else
					result = backend.builder->CreateSub(expr, one);
				llvm_store(&expr_type, to_store->value, result, &backend);
			} break;
			default:
			{
				LG_FATAL("Unhandled unary expr %c", node->unary_expr.op->type);
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
			auto ptr_type = apoc_type_to_llvm(node->cast.expr_type, &backend);
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
		else if(node->binary_expr.left.type != T_POINTER)
			right = create_cast(node->binary_expr.left, node->binary_expr.right, right);

		llvm::Value *result = NULL;
		switch ((int)node->binary_expr.op)
		{
			case '+':
			{
				if(node->binary_expr.left.type == T_POINTER) {
					auto type = apoc_type_to_llvm(*node->binary_expr.left.pointer.type,
							&backend);
					llvm::Value *idx_list[] = {
						right
					};
					result = backend.builder->CreateGEP(type, left, idx_list);
				}
				else if(is_float(node->binary_expr.left))
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
			case tok_logical_or:
			{
				result = backend.builder->CreateLogicalOr(left, right);
			} break;
			case tok_bits_rshift:
			{
				if(is_signed(node->binary_expr.left)) {
					result = backend.builder->CreateAShr(left, right);
				} else {
					result = backend.builder->CreateLShr(left, right);
				}
			} break;
			case tok_bits_lshift:
			{
				result = backend.builder->CreateShl(left, right);
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
			Assert(lhs->unary_expr.op->type == tok_star);
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
				Type_Info *type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
				memcpy(type, &decl_type, sizeof(Type_Info));
				result = allocate_variable(func, lhs->identifier.name, decl_type, &backend);
				Variable_Info *var_info = (Variable_Info *)AllocateCompileMemory(sizeof(Variable_Info));
				var_info->value = result;
				var_info->type  = type;
				shput(backend.named_values, lhs->identifier.name, var_info);
			}
			else
			{
				Variable_Types id_type;
				result = get_identifier(f, lhs->identifier.name, &id_type)->value;
				Assert(id_type != ID_INVALID);

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
		case type_func_call:
		{
			// @NOTE: should probably remove this, like idk
			return generate_func_call(f, lhs, func);
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
	llvm::Value *location = NULL;
	llvm::Value *expression_value;
	if(node->assignment.rhs)
		expression_value = generate_expression(f, node->assignment.rhs, func);


	if(!node->assignment.rhs)
	{
		Assert(node->assignment.is_declaration == true);
		location = allocate_variable(func, node->assignment.token.identifier, node->assignment.decl_type, &backend);
		llvm_zero_out_memory(location, get_type_size(node->assignment.decl_type), Align(get_type_alignment(node->assignment.decl_type)), backend.builder);

		Variable_Info *var_info = (Variable_Info *)AllocateCompileMemory(sizeof(Variable_Info));
		var_info->value = location;
		var_info->type  = &node->assignment.decl_type;

		shput(backend.named_values, node->assignment.token.identifier, var_info);
	}
	else if(expression_value->getType()->isPointerTy() == NULL ||
			node->assignment.decl_type.type == T_POINTER)
	{
		// @NOTE: structs and arrays are handled in their initialization
		location = generate_lhs(f, func, node->assignment.lhs, expression_value, node->assignment.is_declaration, node->assignment.decl_type, &identifier);
		if (is_untyped(node->assignment.rhs_type))
		{
			Type_Info var_type = node->assignment.decl_type;
			Type_Info cast_type = node->assignment.rhs_type;
			Assert(var_type.type != 0);
			expression_value = create_cast(var_type, cast_type, expression_value);
		}

		llvm_store(&node->assignment.decl_type, location, expression_value, &backend);
	}
	else
	{
		location = generate_lhs(f, func, node->assignment.lhs, expression_value, node->assignment.is_declaration, node->assignment.decl_type, &identifier);

		Type_Info *type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
		memcpy(type, &node->assignment.decl_type, sizeof(Type_Info));
		
		if(node->assignment.decl_type.type == T_POINTER && node->assignment.decl_type.pointer.type->type == T_FUNC)
		{
			llvm_store(location, expression_value, &backend, sizeof(size_t));
		}
		else
		{
			llvm_memcpy(location, expression_value, &node->assignment.decl_type, &backend);
		}

		Variable_Info *var_info = (Variable_Info *)AllocateCompileMemory(sizeof(Variable_Info));
		var_info->value = location;
		var_info->type  = type;
		shput(backend.named_values, node->assignment.token.identifier, var_info);
	}
	// @TODO: Implement volatile variable	
	if(node->assignment.is_declaration)
		emit_assignment(f, node, location, identifier);
}

