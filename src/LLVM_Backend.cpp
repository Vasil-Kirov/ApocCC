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

typedef enum 
{
	AMD64,
	UNSUPPORTED	
} Arch;

Backend_State
llvm_initialize(File_Contents *f)
{
	Backend_State backend = {};
	backend.context = new LLVMContext();
	backend.module = new Module(platform_path_to_file_name((char *)f->path), *backend.context);
	backend.builder = new IRBuilder<>(*backend.context);

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
generate_obj(File_Contents *f)
{
	llvm::Target a_target = {};

	INITIALIZE_TARGET(AArch64);
	INITIALIZE_TARGET(X86);

	auto target_triple = sys::getDefaultTargetTriple();
	backend.module->setTargetTriple(target_triple);

	const char *c_str_triplet = target_triple.c_str();

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
	LLVMTargetMachineRef machine = LLVMCreateTargetMachine(c_target, c_str_triplet, cpu, LLVMGetHostCPUFeatures(),
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
	char *obj_file = change_file_extension(platform_path_to_file_name((char *)f->path), (char *)"o");
	f->obj_name = obj_file;
	LLVMTargetMachineEmitToFile(machine, file_mod, obj_file, LLVMObjectFile, &error);
	
	std::error_code std_err;
	raw_fd_ostream ir_dest("test.ll", std_err);
	backend.module->print(ir_dest, nullptr);
}

void
llvm_backend_generate(File_Contents *f, Ast_Node *root)
{
	backend = llvm_initialize(f);

	generate_signatures(f);
	generate_statement(f, root);
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

void
generate_statement(File_Contents *f, Ast_Node *node)
{
	while(node)
	{
		switch((int)node->type)
		{
			case type_func:
			{
				if(node->left->type == type_scope_start)
					generate_func(f, node);

				// Generate prototypes before
			} break;
			case type_assignment:
			{
				// @TODO: expression evaluation for initialization
				ConstantInt* const_int_val = ConstantInt::get(backend.module->getContext(), APInt(32,0));
				auto global_var = new GlobalVariable(*backend.module, apoc_type_to_llvm(node->assignment.decl_type, backend), node->assignment.is_const,
													 GlobalValue::LinkageTypes::ExternalLinkage, const_int_val, "global_var");
				backend.named_globals[std::string((char *)node->assignment.token.identifier)] = global_var;
			} break;
			case type_struct: break;
			case type_scope_start: break;
			default:
			{
				LG_ERROR("Statement of type %s not handled in code generation", type_to_str(node->type));
			} break;
		}
		node = node->left;
	}
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
generate_for_loop(File_Contents *f, Ast_Node *node, Function *func, BasicBlock *block, BasicBlock *to_go)
{
	if(node->for_loop.expr1)
		generate_assignment(f, func, node->for_loop.expr1);


	auto evaluation = generate_boolean_expression(f, node->for_loop.expr2, func);
	auto for_false = generate_block(f, node->left->left, func, NULL, "for_false", to_go);
	auto for_true = generate_block(f, node->left->right, func, NULL, "for_true", NULL);
	backend.builder->SetInsertPoint(for_true);

	if(node->for_loop.expr3)
		generate_expression(f, node->for_loop.expr3, func);

	auto inner_eval = generate_boolean_expression(f, node->for_loop.expr2, func);


	backend.builder->CreateCondBr(inner_eval, for_true, for_false);

	backend.builder->SetInsertPoint(block);
	backend.builder->CreateCondBr(evaluation, for_true, for_false);
}

llvm::BasicBlock *
generate_block(File_Contents *f, Ast_Node *node, Function *func, BasicBlock *passed_block, const char *block_name, BasicBlock *to_go)
{
	BasicBlock *body_block = NULL;
	if(!passed_block)
	{
		body_block = BasicBlock::Create(*backend.context, block_name, func);
		backend.builder->SetInsertPoint(body_block);
	}
	else
		body_block = passed_block;
	Ast_Node *to_switch = NULL;
	int levels_up = 0;
	while(true)
	{
		if(!node)
			break;
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
				generate_for_loop(f, node, func, body_block, to_go);
				to_go = NULL;
				goto RETURN_BLOCK;
			} break;
			case type_if:
			{
				llvm::Value *evaluation = generate_boolean_expression(f, node->condition, func);

				auto if_false = generate_block(f, node->left->left, func, NULL, "if_false", NULL);
				auto if_true = generate_block(f, node->left->right, func, NULL, "if_true", if_false);
				backend.builder->SetInsertPoint(body_block);
				backend.builder->CreateCondBr(evaluation, if_true, if_false);
				goto RETURN_BLOCK;
			} break;
			case type_scope_start:
			{
				levels_up++;
			} break;
			case type_scope_end:
			{
				emergency_token = node->scope_desc.token;
				if(levels_up == 0)
				{
					goto RETURN_BLOCK;
				}
			} break;
			default:
			{
				LG_ERROR("Statement of type %s not handled in code generation", type_to_str(node->type));
			} break;
		}
		if(to_switch)
			node = to_switch;
		else
			node = node->left;
		to_switch = NULL;
	}
	RETURN_BLOCK:;
	
	if(to_go)
		backend.builder->CreateBr(to_go);

	return body_block;
}

void
generate_func(File_Contents *f, Ast_Node *node)
{
	Function *func = generate_func_signature(f, node);

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
	node = node->left;
	Assert(node->type == type_scope_start);
	node = node->right;
	generate_block(f, node, func, body_block, "", NULL);

	std::error_code error_code;
	raw_fd_ostream std_out_fd("-", error_code);
	if (verifyFunction(*func, &std_out_fd))
	{
		LG_FATAL("Incorrect function");
	}
	DEBUG_INFO (
		emit_location(emergency_token.line, emergency_token.column);
		_stack_pop(&debug.scope);
		//stack_pop(debug.scope, DINode *);
	)
}

llvm::Value *
get_identifier(u8 *name)
{
	std::string identifier_name = std::string((char *)name);
	AllocaInst *var_location = backend.named_values[identifier_name];
	if(var_location == NULL)
	{
		auto global_var = backend.named_globals[identifier_name];
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
			llvm::AllocaInst *value =
			(llvm::AllocaInst *)get_identifier(node->identifier.name);
			
			return backend.builder->CreateLoad(value->getAllocatedType(),
											value);
		} break;
		case type_literal:
		{
			// @TODO: check size in case of uint64 sized integer
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
			auto struct_type = shget(backend.struct_types, node->selector.operand_type.identifier);
			llvm::Value *operand = NULL;
			if(node->selector.operand_type.type != T_POINTER)
			{
				if(node->selector.operand->type == type_struct_init)
				{
					operand = generate_expression(f, node->selector.operand, func);
				}
				else
					operand = backend.named_values[std::string((char *)node->selector.operand->identifier.name)];
			}
			else
				Assert(false); // implement
			auto elem_ptr = backend.builder->CreateStructGEP(struct_type, operand, node->selector.selected_index, "struct_member_ptr");
			return backend.builder->CreateLoad(apoc_type_to_llvm(node->selector.selected_type, backend), elem_ptr, "struct_member");
		} break;
		case type_struct_init:
		{
			AllocaInst *struct_loc = allocate_variable(func, node->struct_init.operand->identifier.name, node->struct_init.type, backend);
			//backend.named_values[std::string((char *)node->struct_init.operand->identifier.name)] = struct_loc;
			StructType *type = shget(backend.struct_types, node->struct_init.operand->identifier.name);

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
			return struct_loc;
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
				Assert(node->unary_expr.expression->type == type_identifier);
				llvm::Value *address =
					get_identifier(node->unary_expr.expression->identifier.name);
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
	else if(node->type == type_cast)
	{
		Type_Info cast_type = node->cast.type;
		Type_Info casted = node->cast.expr_type;
		llvm::Value *cast_expr = generate_expression(f, node->cast.expression, func);

		cast_expr = create_cast(cast_type, casted, cast_expr);
		return cast_expr;
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
				result = get_identifier(lhs->identifier.name);
			}
			return result;
		} break;
		case type_index:
		{
			llvm::Value *idx = generate_expression(f, lhs->index.expression, func);
			llvm::Value *op = generate_expression(f, lhs->index.operand, func);
			return backend.builder->CreateGEP(apoc_type_to_llvm(lhs->index.idx_type, backend)
									   , op, idx, "array_access");
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
	if(node->assignment.decl_type.type != T_STRUCT)
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