#include <LLVM_Backend.h>
#include <platform/platform.h>
#include <LLVM_Helpers.h>
#include <Analyzer.h>
#include <Memory.h>

#define INITIALIZE_TARGET(X) do {         \
  LG_DEBUG("Initialize target: %s.", #X); \
  LLVMInitialize ## X ## AsmParser();     \
  LLVMInitialize ## X ## AsmPrinter();    \
  LLVMInitialize ## X ## Disassembler();  \
  LLVMInitialize ## X ## TargetInfo();    \
  LLVMInitialize ## X ## Target();        \
  LLVMInitialize ## X ## TargetMC();      \
 } while(0)


static Backend_State backend;

typedef enum 
{
	AMD64,
	UNSUPPORTED	
} Arch;

Backend_State
llvm_initialize(File_Contents *f)
{
	Backend_State backend;
	backend.context = new LLVMContext();
	backend.module = new Module(platform_path_to_file_name((char *)f->path), *backend.context);
	backend.builder = new IRBuilder<>(*backend.context);
	return backend;	
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
	
    LG_DEBUG("Target Triple: %s\n", c_str_triplet);


	const char *cpu = "generic";

	// @TODO: optimization flag
	LLVMTargetMachineRef machine = LLVMCreateTargetMachine(c_target, c_str_triplet, cpu, LLVMGetHostCPUFeatures(),
		LLVMCodeGenLevelNone, LLVMRelocDefault, LLVMCodeModelDefault);
	
	LLVMContextRef context = llvm::wrap(backend.context);
	LLVMModuleRef file_mod = llvm::wrap(backend.module);

	LLVMSetTarget(file_mod, c_str_triplet);
	LLVMTargetDataRef data_layout = LLVMCreateTargetDataLayout(machine);
	char *data_layout_str = LLVMCopyStringRepOfTargetData(data_layout);
	LLVMSetDataLayout(file_mod, data_layout_str);
	LLVMDisposeMessage(data_layout_str);

	char *obj_file = change_file_extension(platform_path_to_file_name((char *)f->path), (char *)"o");
	LLVMTargetMachineEmitToFile(machine, file_mod, obj_file, LLVMObjectFile, &error);
	
	std::error_code std_err;
	raw_fd_ostream ir_dest("test.ll", std_err);
	backend.module->print(ir_dest, nullptr);
}

void
llvm_backend_generate(File_Contents *f, Ast_Node *root)
{
	backend = llvm_initialize(f);

	generate_statement(f, root);
	generate_obj(f);
}


void
generate_signatures()
{

}

void
generate_statement(File_Contents *f, Ast_Node *node)
{
	switch((int)node->type)
	{
		case type_func:
		{
			if(node->left->type == type_scope_start)
				generate_func(f, node);

			// Generate prototypes before
		} break;
		default:
		{
			LG_ERROR("Statement of type %s not handled in code generation", type_to_str(node->type));
		} break;
	}
}


Function *
generate_func_signature(File_Contents *f, Ast_Node *node)
{
	size_t param_count = SDCount(node->function.arguments);
	llvm::Type *param_types[1024] = {};
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

	llvm::ArrayRef<llvm::Type *> params_ref = llvm::makeArrayRef(param_types, param_count);
	llvm::Type *ret_type = apoc_type_to_llvm(node->function.type, backend);
	FunctionType *func_type = FunctionType::get(ret_type, params_ref, has_var_args);
	Function *func = Function::Create(func_type, Function::ExternalLinkage,
									  (char *)node->function.identifier.name, backend.module);

	size_t arg_index = 0;
	for (auto &arg : func->args())
		arg.setName((char *)node->function.arguments[arg_index++]->variable.identifier.name);
	
	return func;
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
			case type_assignment:
			{
				generate_assignment(f, func, node);
			} break;
			case type_return:
			{
				backend.builder->CreateRet(generate_expression(f, node->right));
			} break;
			case type_if:
			{
				llvm::Value *evaluation = generate_expression(f, node->condition);
				if(evaluation->getType() != Type::getInt1Ty(*backend.context))
				{
					Type_Info boolean_type = {};
					boolean_type.type = T_BOOLEAN;

					evaluation = backend.builder->CreateCast(Instruction::CastOps::Trunc, evaluation, apoc_type_to_llvm(boolean_type, backend), "boolean_expr");
				}

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
				if(levels_up == 0)
					goto RETURN_BLOCK;
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
}


llvm::Value *
generate_operand(File_Contents *f, Ast_Node *node)
{
	switch (node->type)
	{
		case type_identifier:
		{
			Symbol *identifier_sym = get_symbol_spot(f, node->identifier.token);
			std::string identifier_name = std::string((char *)node->identifier.name);
			AllocaInst *var_location = backend.named_values[identifier_name];
			return backend.builder->CreateLoad(apoc_type_to_llvm(identifier_sym->type, backend),
											var_location);
		} break;
		case type_literal:
		{
			// @TODO: check size in case of uint64 sized integer
			return backend.builder->getInt64(str_to_i64((const char *)node->atom.identifier.name));
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
		
		default:
		{
			LG_FATAL("Unhandled operand type %d", node->type);
		} break;
	}
	return NULL;
}

llvm::Value *
generate_unary(File_Contents *f, Ast_Node *node)
{
	if(node->type == type_unary_expr)
	{
		llvm::Value *result = NULL;
		llvm::Value *expr = generate_expression(f, node->unary_expr.expression);
		llvm::Value *one = backend.builder->getInt32(1);
		Type_Info expr_type = node->unary_expr.expr_type;
		switch((int)node->unary_expr.op.type)
		{
			case '@':
			{
				Assert(node->unary_expr.expression->type == type_identifier);
				AllocaInst *address = backend.named_values[std::string((char *)node->unary_expr.expression->identifier.name)];
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
				if(is_float(expr_type))
					result = backend.builder->CreateFAdd(one, expr);
				else
					result = backend.builder->CreateAdd(one, expr);
			} break;
			case tok_minusminus:
			{
				if(is_float(expr_type))
					result = backend.builder->CreateFSub(expr, one);
				else
					result = backend.builder->CreateSub(expr, one);
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
		// @TODO: uhmm, yes
		b32 should_cast = true;
		Type_Info cast_type = node->cast.type;
		Type_Info casted = node->cast.expr_type;
		auto llvm_cast = get_cast_type(cast_type, casted, &should_cast);
		llvm::Value *cast_expr = generate_expression(f, node->cast.expression);
		
		if (should_cast)
		{
			llvm::Value *cast_value = backend.builder->CreateCast(llvm_cast, cast_expr,
																  apoc_type_to_llvm(cast_type, backend), "cast");
			return cast_value;
		}
		else
			return cast_expr;
	}
	else return generate_operand(f, node);
}

llvm::Value *
generate_expression(File_Contents *f, Ast_Node *node)
{
	if(node->type == type_binary_expr)
	{
		b32 has_casted = false;
		b32 should_cast = true;
		// @TODO: potential u64
		Type_Info untyped_int_type = {T_INTEGER};
		untyped_int_type.primitive.size = byte8;
		Type_Info untyped_float_type = {T_FLOAT};
		untyped_float_type.primitive.size = real64;
		llvm::Value *left = generate_expression(f, node->left);
		llvm::Value *right = generate_expression(f, node->right);

		Instruction::CastOps to_cast;
		Type_Info from_cast = {};

		/*
		if(is_logical_op(node->binary_expr.op))
		{
			Type_Info boolean_type = {};
			boolean_type.type = T_BOOLEAN;
			
			to_cast = get_cast_type(boolean_type, node->binary_expr.left, &should_cast);
			left = backend.builder->CreateCast(to_cast, left, apoc_type_to_llvm(boolean_type, backend), "bool1");
			to_cast = get_cast_type(boolean_type, node->binary_expr.right, &should_cast);
			right = backend.builder->CreateCast(to_cast, right, apoc_type_to_llvm(boolean_type, backend), "bool1");
		}
		*/

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
			to_cast = get_cast_type(node->binary_expr.right, from_cast, &should_cast);

			if(should_cast)
				left = backend.builder->CreateCast(to_cast, left, apoc_type_to_llvm(node->binary_expr.right, backend), "left_cast");
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
			to_cast = get_cast_type(node->binary_expr.left, from_cast, &should_cast);

			if(should_cast)
				right = backend.builder->CreateCast(to_cast, right, apoc_type_to_llvm(node->binary_expr.left, backend), "right_cast");
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
			Instruction::CastOps result_cast;
			if(is_untyped(node->binary_expr.left))
			{
				if(is_untyped(node->binary_expr.right))
					return result;
				to = node->binary_expr.right;
			}
			else
				to = node->binary_expr.left;
			result_cast = get_cast_type(to, from_cast, &should_cast);
			result = backend.builder->CreateCast(result_cast, result, apoc_type_to_llvm(to, backend), "result_cast");
		}

		return result;
	}
	else
		return generate_unary(f, node);
}

void
generate_assignment(File_Contents *f, Function *func, Ast_Node *node)
{
	Assert(node->type == type_assignment);
	AllocaInst *variable;
	if(node->assignment.is_declaration)
	{
		variable = allocate_variable(func, node->assignment.token.identifier, node->assignment.decl_type, backend);
		backend.named_values[std::string((char *)node->assignment.token.identifier)] = variable;
	}
	else
	{
		variable = backend.named_values[std::string((char *)node->assignment.token.identifier)];
	}
	llvm::Value *expression_value = generate_expression(f, node->assignment.rhs);
	
	// @TODO: Implement volatile variable
	backend.builder->CreateStore(expression_value, variable);
}