#include <Interpret.h>
#include <Parser.h>
#include <math.h>
#include <Basic.h>
#include <Stack.h>

#ifndef NO_VM
#include <LLVM_Helpers.h>
#endif

static Stack symbol_scope;

Interp_Table *
create_scope()
{
	Interp_Table *new_table = NULL;
	sh_new_arena(new_table);
	return new_table;
}

void
interp_push_scope()
{
	auto scope = create_scope();
	stack_push(symbol_scope, scope);
}

void
free_interp_val(Interp_Val *val)
{
	if(val->type->type == T_STRUCT)
	{
		for(int i = 0; i < val->type->structure.member_count; ++i)
		{
			free_interp_val(((Interp_Val *)val->pointed) + i);
		}
	}
	else if(val->type->type == T_ARRAY)
	{
		for(int i = 0; i < val->type->array.elem_count; ++i)
		{
			free_interp_val(((Interp_Val *)val->pointed) + i);
		}
	}
	//FreeInterpMiscMemory(val->type);
	FreeInterpMemory(val->location);
}

void
destroy_scope()
{
	Interp_Table *old_table = stack_pop(symbol_scope, Interp_Table *);
	auto len = shlen(old_table);
	for(size_t i = 0; i < len; ++i)
	{
		Assert(old_table[i].value.type);
	}
	shfree(old_table);
}

#define COMPARE_CAST(VALUE, CAST, SMALLER, BIGGER) \
	if(VALUE.type->primitive.size > CAST.primitive.size) \
	    VALUE._ ## SMALLER = (SMALLER)VALUE._ ## BIGGER; \
	else if(VALUE.type->primitive.size < CAST.primitive.size) \
            VALUE._ ## BIGGER = (BIGGER)VALUE._ ## SMALLER;

Interp_Val
perform_cast(Interp_Val operand, Type_Info cast)
{
	if(is_untyped(*operand.type))
	{
		Type_Info *typed = (Type_Info *)AllocateInterpMiscMemory(sizeof(Type_Info));
		memcpy(typed, operand.type, sizeof(Type_Info));
		operand.type = typed;
		if(is_integer(*operand.type))
		{
			operand.type->primitive.size = byte8;
		}
		else if(is_float(*operand.type))
		{
			operand.type->primitive.size = real64;
		}
	}
	if(is_untyped(cast))
	{
		if(is_integer(cast))
		{
			cast.primitive.size = byte8;
		}
		else if(is_float(cast))
		{
			cast.primitive.size = real64;
		}
	}

	if(is_float(*operand.type))
	{
		if(is_float(cast))
		{
			COMPARE_CAST(operand, cast, f32, f64);
		}
		else if(is_signed(cast))
		{
			if(operand.type->primitive.size == real32)
				operand._i64 = (i64)operand._f32;
			else
				operand._i64 = (i64)operand._f64;
		}
		else 
		{
			if(operand.type->primitive.size == real32)
				operand._u64 = (u64)operand._f32;
			else
				operand._u64 = (u64)operand._f64;
		}
	}
	else if(is_integer(*operand.type))
	{
		if(is_signed(*operand.type))
		{
			if(is_float(cast))
			{
				operand._f64 = (f64)operand._i64;
			}
			else if(cast.type == T_POINTER)
			{
				operand.pointed = (void *)operand._i64;
			}
			else if(is_integer(cast))
			{
				if(is_signed(cast))
				{
					return operand;
				}
				else
				{
					operand._u64 = operand._i64;
				}
			}
		}
		else
		{
			if(is_float(cast))
			{
				operand._f64 = (f64)operand._u64;
			}
			else if(cast.type == T_POINTER)
			{
				operand.pointed = (void *)operand._u64;
			}
			else if(is_integer(cast))
			{
				if(is_signed(cast))
				{
					operand._i64 = (u64)operand._u64;
				}
				else
				{
					return operand;
				}
			}
		}
	}
	else if (operand.type->type == T_POINTER)	
	{
		if(is_integer(cast))
		{
			if(is_signed(cast))
				operand._i64 = (i64)operand.pointed;
			else
				operand._u64 = (u64)operand.pointed;
		}
		else if(cast.type == T_POINTER)
			return operand;
		else Assert(false);
	}
	else
		Assert(false);
	return operand;
}

inline Interp_Val
create_interp_val()
{
	Interp_Val result = {};
	//result.type = (Type_Info *)AllocateInterpMiscMemory(sizeof(Type_Info));
	return result;
}

void
interp_add_symbol(u8 *identifier, Interp_Val value)
{
	auto scope = stack_pop(symbol_scope, Interp_Table *);
	shput(scope, identifier, value);
	stack_push(symbol_scope, scope);
}

void
interp_fix_and_add_val(u8 *identifier, Interp_Val *value, Type_Info *type)
{
	auto size = get_type_size(*type);
	auto dst = AllocateInterpMemory(size);
	copy_interp_val_to_memory(dst, value, type);
	auto val = create_interp_val();
	val.type = type;
	val.location = dst;
	interp_add_symbol(identifier, val);
}

Interp_Val *
interp_look_up_symbol(u8 *identifier)
{
	size_t scope_count = symbol_scope.top + 1;
	Interp_Table *scopes[scope_count];
	size_t scope_i = 0;
	memset(scopes, 0, scope_count * sizeof(Interp_Table *));
	Interp_Val *got = NULL;
	while(!is_stack_empty(symbol_scope))
	{
		Interp_Table *table = stack_pop(symbol_scope, Interp_Table *);
		scopes[scope_i++] = table;
		ptrdiff_t id_idx = shgeti(table, identifier);
		if(id_idx != -1)
		{
			got = &table[id_idx].value;
		}
	}
	
	for(i64 i = scope_count - 1; i >= 0; --i)
	{
		stack_push(symbol_scope, scopes[i]);
	}
	
	return got;
}

Platform_Dynamic_Lib *dynamic_libs;

void
set_dll_array(Platform_Dynamic_Lib *libs)
{
	dynamic_libs = libs;
}

void *
find_function(u8 *name)
{
	auto lib_count = SDCount(dynamic_libs);
	for(size_t i = 0; i < lib_count; ++i)
	{
		auto fn = platform_find_fn(dynamic_libs[i], (char *)name);
		if(fn)
			return fn;
	}
	return NULL;
}

void
initialize_interpreter()
{
	symbol_scope = stack_allocate(Interp_Table *);
	Interp_Table *file_scope = create_scope();
	stack_push(symbol_scope, file_scope);
}

typedef void *(*Extern_Call_Intermidiate_Fn)();

Interp_Val
jit_foreign_function_call(Ast_Node *func, Ast_Node *call, b32 *failed)
{
#if defined(NO_VM)
	Assert(false);
#else
	auto fn = find_function(func->function.identifier.name);
	if(!fn)
	{
		char error[1024] = {};
		vstd_sprintf(error, "Could not find function %s.\n\t"
				"Functions called in the interpreter need to be linked with a dll/shared object.\n\t"
				"You can pass that dll to the compiler using --dll or --shared", func->function.identifier.name);
		raise_interpret_error(error, *call->func_call.token);
		*failed = true;
		return {};
	}
	Backend_State backend = {};
	backend.context = new LLVMContext();
	std::unique_ptr<Module> module = std::make_unique<Module>("jit_call", *backend.context);
	backend.module = module.get();
	backend.builder = new IRBuilder<>(*backend.context);

	Type_Info *entry_fn_type = (Type_Info *)AllocateInterpMiscMemory(sizeof(Type_Info));
	entry_fn_type->type = T_FUNC;
	entry_fn_type->func.calling_convention = CALL_C_DECL;
	entry_fn_type->func.return_type = (Type_Info *)AllocateInterpMiscMemory(sizeof(Type_Info));
	entry_fn_type->func.return_type->type = T_POINTER;
	entry_fn_type->func.return_type->pointer.type = (Type_Info *)AllocateInterpMiscMemory(sizeof(Type_Info));
	entry_fn_type->func.return_type->pointer.type->type = T_VOID;
	entry_fn_type->func.param_types = SDCreate(Type_Info);


	auto entry_fn = Function::Create(type_to_func_type(*entry_fn_type, &backend), Function::LinkageTypes::ExternalLinkage, "entry_fn", backend.module);
	auto entry = BasicBlock::Create(*backend.context, "entry", entry_fn);
	backend.builder->SetInsertPoint(entry);

	int arg_count = SDCount(call->func_call.arguments);
	llvm::Value *args[arg_count];
	memset(args, 0, sizeof(args));
	b32 found_var_args = false;
	for(int i = 0; i < arg_count; ++i)
	{
		auto arg = interpret_expression(call->func_call.arguments[i], failed);
		if(!found_var_args && call->func_call.arg_types[i].type == T_DETECT)
			found_var_args = true;
		if(*failed)
		{
			char error[1024] = {};
			vstd_sprintf(error, "Failed to interpret expression #%d in function call", i + 1);
			raise_interpret_error(error, *call->func_call.token);
			return {};
		}
		args[i] = interp_val_to_llvm(arg, &backend);
		if(!found_var_args)
				args[i] = create_cast(call->func_call.arg_types[i], call->func_call.expr_types[i], args[i], &backend);
	}
	llvm::Value * fn_val = backend.builder->getIntN(get_register_bit_size(), (u64)fn);
	fn_val = backend.builder->CreateIntToPtr(fn_val, PointerType::get(*backend.context, 0));

	/*************************************************************************
	 *
	 * @TODO: remove this
	 * Automatically change functions to treat them as c calling convention
	 *
	 ************************************************************************/
	auto call_convention = func->function.type->func.calling_convention;
	func->function.type->func.calling_convention = CALL_C_DECL;
	auto fn_type = type_to_func_type(*func->function.type, &backend);
	func->function.type->func.calling_convention = call_convention;

	auto callee = llvm::FunctionCallee(fn_type, fn_val);
	if(func->function.type->func.return_type->type != T_VOID)
	{
		Type_Info *ret_type = func->function.type->func.return_type;
		llvm::Value *result = backend.builder->CreateCall(callee, makeArrayRef(args, arg_count), "jitted_call");
		Type_Info *ptr_type = (Type_Info *)AllocateInterpMiscMemory(sizeof(Type_Info));
		ptr_type->type = T_POINTER;
		ptr_type->pointer.type = (Type_Info *)AllocateInterpMiscMemory(sizeof(Type_Info));
		ptr_type->pointer.type->type = T_VOID;

		b32 should_cast = false;
		auto op = get_cast_type(*ptr_type, *ret_type, &should_cast);
		if(should_cast)
		{
			result = backend.builder->CreateCast(op, result, PointerType::get(*backend.context, 0));
		}
		backend.builder->CreateRet(backend.builder->CreateBitCast(result, PointerType::get(*backend.context, 0)));

		FreeInterpMiscMemory(ptr_type);
		FreeInterpMiscMemory(ptr_type->pointer.type);
	}
	else
	{
		backend.builder->CreateCall(callee, makeArrayRef(args, arg_count));
		backend.builder->CreateRet(Constant::getNullValue(PointerType::get(*backend.context, 0)));
	}

	std::string error;
	ExecutionEngine *ee = llvm::EngineBuilder(std::move(module))
		.setEngineKind(EngineKind::JIT)
		.setErrorStr(&error)
		.create();
	
	if(!ee)
	{
		LG_FATAL("Couldn't create execution engine %s", error.c_str());
	}

#if DEBUG
	ee->setVerifyModules(true);
#endif
	ee->finalizeObject();

	void *fn_ptr = (void *)ee->getFunctionAddress(std::string("entry_fn"));
	void *fn_result = ((Extern_Call_Intermidiate_Fn)fn_ptr)();
	Interp_Val out = create_interp_val();
	out.type = func->function.type->func.return_type;
	out._u64 = (u64)fn_result;

	entry_fn->eraseFromParent();

	FreeInterpMiscMemory(entry_fn_type);
	FreeInterpMiscMemory(entry_fn_type->func.return_type);
	FreeInterpMiscMemory(entry_fn_type->func.return_type->pointer.type);

	delete backend.builder;
	delete ee;
	return out;
#endif
}

Interp_Val
interpret_func_call(Ast_Node *node, b32 *failed)
{
	Interp_Val result;
	Interp_Val operand = interpret_expression(node->func_call.operand, failed);
	if(((Ast_Node *)operand.pointed)->function.body == NULL)
		result = jit_foreign_function_call((Ast_Node *)operand.pointed, node, failed);
	else
		result = interpret_function(operand, node->func_call, failed);

	if(*failed)
		LG_ERROR("Cannot interpret function call at (%d:%d)",
				node->func_call.token->line, node->func_call.token->column);
	return result;
}

Interp_Val *
interpret_lhs(Ast_Node *lhs)
{
	switch((int)lhs->type)
	{
		case type_unary_expr:
		{
			Assert(lhs->unary_expr.op->type == tok_star);
			Assert(lhs->unary_expr.expr_type.type == T_POINTER);
			Interp_Val *id = interpret_lhs(lhs->unary_expr.expression);
			Assert(false);
			Assert(false);
			Assert(false);
			Assert(false);
			Assert(false);
			Assert(false);
			Assert(false);
		} break;
		case type_identifier:
		{
			return interp_look_up_symbol(lhs->identifier.name);
		} break;
		case type_selector:
		{
			Interp_Val *operand = interpret_lhs(lhs->selector.operand);
			return operand + lhs->selector.selected_index;
		} break;
		case type_index:
		{
			Interp_Val *indexed = interpret_lhs(lhs->index.operand);
			b32 failed = false;
			Interp_Val index = interpret_expression(lhs->index.expression, &failed);
			if(failed)
			{
				// @TODO: Hack
				raise_interpret_error("Indexing expression cannot be interpreted", 
						*lhs->index.token);
				LG_FATAL(".");
			}
			Assert(is_integer(*index.type));
			if(is_signed(*index.type))
			{
				i64 index_val = index._i64;
				if(index_val < 0)
				{
					// @TODO: Hack
					raise_interpret_error("Indexing expression cannot be a negative value", 
							*lhs->index.token);
					LG_FATAL(".");
				}
				return ((Interp_Val *)indexed->pointed) + index_val;
			}
			else
			{
				return ((Interp_Val *)indexed->pointed) + index._u64;
			}
		} break;
	}
	Assert(false);
	return NULL;
}

void
copy_struct(Interp_Val *_struct, Type_Info *dst_type, void *dst);

void
copy_array(Interp_Val *_array, void *dst);

// @NOTE: this frees the memory of the copied value
void
copy_interp_val_to_memory(void *dst, Interp_Val *val, Type_Info *dst_type)
{
	switch(dst_type->type)
	{
		case T_STRUCT:
		{
			copy_struct(val, dst_type, dst);
			FreeInterpMiscMemory(val->pointed);
		} break;
		case T_ARRAY:
		{
			copy_array(val, dst);
			FreeInterpMiscMemory(val->pointed);
		} break;
		case T_POINTER:
		{
			*(void **)dst = val->pointed;
		} break;
		default:
		{
			if(is_untyped(*dst_type))
			{
				*dst_type = untyped_to_type(*dst_type);
			}
			switch(dst_type->primitive.size)
			{
				case logical_bit:
				case ubyte1:
				case byte1:
					{
						*(u8 *)dst = val->_u8;
					} break;
				case ubyte2:
				case byte2:
					{
						*(u16 *)dst = val->_u16;
					} break;
				case real32:
				case ubyte4:
				case byte4:
					{
						*(u32 *)dst = val->_u32;
					} break;
				case real64:
				case ubyte8:
				case byte8:
					{
						*(u64 *)dst = val->_u64;
					} break;
				default: 
					{
						// @TODO: SIMD support
						// @TODO: SIMD support
						// @TODO: SIMD support
						Assert(false);
					} break;
			}
		} break;
	}
}

void
copy_struct(Interp_Val *_struct, Type_Info *dst_type, void *dst)
{
	Assert(_struct->type->type == T_STRUCT);

	u8 *it = (u8 *)dst;
	for(int i = 0; i < dst_type->structure.member_count; ++i)
	{
		copy_interp_val_to_memory(it, (Interp_Val *)_struct->pointed + i, &dst_type->structure.member_types[i]);
		auto elem_size = get_type_size(_struct->type->structure.member_types[i]);
		it += elem_size;
	}
}

void
copy_array(Interp_Val *_array, void *dst)
{
	Assert(_array->type->type == T_ARRAY);

	u8 *it = (u8 *)dst;
	auto elem_size = get_type_size(*_array->type->array.type);
	for(int i = 0; i < _array->type->array.elem_count; ++i)
	{
		copy_interp_val_to_memory(it, (Interp_Val *)_array->pointed + i, _array->type->array.type);
		it += elem_size;
	}
}

Interp_Val
generate_empty(Type_Info *type)
{
	Interp_Val result = {};
	result.type = type;
	if(type->type == T_STRUCT)
	{
		result.pointed = AllocateInterpMemory(type->structure.member_count * sizeof(Interp_Val));
		for(int i = 0; i < type->structure.member_count; ++i)
			((Interp_Val *)result.pointed)[i] = generate_empty(&type->structure.member_types[i]);
	}
	else if(type->type == T_ARRAY)
	{
		result.pointed = AllocateInterpMemory(type->array.elem_count * sizeof(Interp_Val));
		for(int i = 0; i < type->array.elem_count; ++i)
			((Interp_Val *)result.pointed)[i] = generate_empty(type->array.type);
	}
	return result;
}

void
interpret_assignment(Ast_Node *node, b32 *failed)
{
	Interp_Val result;
	if(node->assignment.rhs)
		result = interpret_expression(node->assignment.rhs, failed);
	else
	{
		result = generate_empty(node->assignment.decl_type);
	}

	void *dst = AllocateInterpMemory(get_type_size(*node->assignment.decl_type));
	copy_interp_val_to_memory(dst, &result, node->assignment.decl_type);
	result.location = dst;

	if(node->assignment.is_declaration)
	{
		Assert(node->assignment.lhs->type == type_identifier);
		interp_add_symbol(node->assignment.lhs->identifier.name, result);
	}
	else
	{
		Interp_Val *lhs_ptr = interpret_lhs(node->assignment.lhs);
		// @NOTE: covers all types
		lhs_ptr->_u64 = result._u64;
	}
}

b32
val_to_bool(Interp_Val val)
{
	b32 is_true = false;
	if(is_integer(*val.type))
		is_true = val._u64 > 0;
	else
		is_true = val._f64 > 0;
	return is_true;
}

Interp_Val
interpret_statement(Ast_Node *node, b32 *failed, Token_Iden *token, i32 scope_count,
		b32 *returned, Ast_Node *node_list, size_t *idx)
{
	Interp_Val result = create_interp_val();
	if(*failed)
	{
		raise_interpret_error("Unexpected end of function", *token);
		return result;
	}

	switch ((int)node->type)
	{
		case type_func_call:
		{
			result = interpret_func_call(node, failed);
		} break;
		case type_assignment:
		{
			interpret_assignment(node, failed);
		} break;
		case type_scope_start:
		{
			interp_push_scope();
			*token = *node->scope_desc.token;
			scope_count++;
		} break;
		case type_scope_end:
		{
			destroy_scope();
			*token = *node->scope_desc.token;
			scope_count--;
		} break;
		case type_if:
		{
			*token = *node->condition.token;
			result = interpret_expression(node->condition.expr, failed);
			b32 is_true = val_to_bool(result);
			if(is_true)
			{
				interp_push_scope();
				*idx += 1;
				Ast_Node *next_node = node_list->statements.list[*idx];
				if(next_node->type == type_scope_start)
				{
					result = interpret_statement_list(next_node->scope_desc.body, failed, 
							token, scope_count, returned);
				}
				else
				{
					result = interpret_statement(next_node, failed, token, 0, returned,
							node_list, idx);
					destroy_scope();
				}
				if(*returned)
				{
					destroy_scope();
					return result;
				}
				destroy_scope();
			}
		} break;
		case type_for:
		{
			interp_push_scope();
			*token = *node->for_loop.token;
			if(node->for_loop.expr1)
				interpret_assignment(node->for_loop.expr1, failed);

			if(*failed)
			{
				raise_interpret_error("expression 1 in for loop failed", *token);
				return result;
			}

			Interp_Val expr2 = interpret_expression(node->for_loop.expr2, failed);

			if(*failed)
			{
				raise_interpret_error("expression 2 in for loop failed", *token);
				return result;
			}
			b32 is_true = val_to_bool(expr2);

			
			*idx += 1;
			Ast_Node *next_node = node_list->statements.list[*idx];
			while(is_true)
			{
				// @TODO: Hack?
				interp_push_scope();
				if(next_node->type == type_scope_start)
				{
					/********************************************************
					 * 
					 * This automatically destroys scope when it reaches }
					 *
					 * *****************************************************/
					result = interpret_statement_list(next_node->scope_desc.body, failed, 
							token, scope_count, returned);
					if(*failed)
					{
						raise_interpret_error("loop body couldn't be interpreted", *token);
						return result;
					}
				}
				else
				{
					result = interpret_statement(next_node, failed, token,
							scope_count, returned, node_list, idx);
					destroy_scope();
					if(*failed)
					{
						raise_interpret_error("loop body couldn't be interpreted", *token);
						return result;
					}
				}
				if(*returned)
				{
					destroy_scope();
					return result;
				}
				
				interpret_expression(node->for_loop.expr3, failed);
				Interp_Val expr2 = interpret_expression(node->for_loop.expr2, failed);
				is_true = val_to_bool(expr2);
			}
			destroy_scope();
		} break;
		case type_for_in:
		{
			interp_push_scope();
			*token = *node->for_in.token;
			Interp_Val array = interpret_expression(node->for_in.array, failed);
			if(*failed)
			{
				raise_interpret_error("array in for in expression couldn't be interpreted", *token);
				return result;
			}
			Interp_Val i = create_interp_val();
			Interp_Val elem_count = create_interp_val();
			elem_count._i64 = array.type->array.elem_count;

			
			*idx += 1;
			Ast_Node *next_node = node_list->statements.list[*idx];
			while(i._i64 < elem_count._i64)
			{
				interp_push_scope();
				if(node->for_in.i_nullalbe)
					interp_add_symbol(node->for_in.i_nullalbe->identifier.name,  i);

				auto array_loc = (Interp_Val *)array.pointed;
				result = array_loc[i._i64];

				interp_add_symbol(node->for_in.item->identifier.name, result);

				if(next_node->type == type_scope_start)
				{
					/********************************************************
					 * 
					 * This automatically destroys scope when it reaches }
					 *
					 * *****************************************************/
					result = interpret_statement_list(next_node->scope_desc.body, failed, 
							token, scope_count, returned);
					if(*failed)
					{
						raise_interpret_error("loop body couldn't be interpreted", *token);
						return result;
					}
				}
				else
				{
					result = interpret_statement(next_node, failed, token,
							scope_count, returned, node_list, idx);
					destroy_scope();
					if(*failed)
					{
						raise_interpret_error("loop body couldn't be interpreted", *token);
						return result;
					}
				}
				if(*returned)
				{
					destroy_scope();
					return result;
				}
				
				i._i64 += 1;
			}
			destroy_scope();
		} break;
		case type_return:
		{
			*returned = true;
			*token = node->ret.token;
			if(!node->ret.expression)
				return result;
			result = interpret_expression(node->ret.expression, failed);
			Interp_Val casted = create_interp_val();
			casted._u64 = result._u64;
			*casted.type = node->ret.func_type;
			return casted;
		} break;
		default:
		{
			LG_FATAL("Incorrect statement");
		} break;
	}
	return result;
}

Interp_Val
interpret_statement_list(Ast_Node *node, b32 *failed, Token_Iden *token, i32 scope_count,
		b32 *returned)
{
	Interp_Val result = create_interp_val();
	Ast_Node **list = node->statements.list;
	size_t count = SDCount(list);
	for(size_t i = 0; i < count; ++i)
	{
		result = interpret_statement(list[i], failed, token, scope_count, returned,
				node, &i);
		if(*returned)
			break;
	}
	return result;
}

Interp_Val
interpret_function(Interp_Val func, Ast_Call call, b32 *failed)
{
	Interp_Val result = create_interp_val();
	Ast_Node *f_node = (Ast_Node *)func.pointed;
	Assert(f_node->type == type_func);
	interp_push_scope();

	Ast_Node *statement = f_node->function.body;
	if(!statement)
	{
		*failed = true;
		return result;
	}

	auto args = f_node->function.arguments;
	size_t arg_count = SDCount(args);
	Interp_Val arg_results[arg_count];
	for (size_t i = 0; i < arg_count; ++i)
	{
		arg_results[i] = interpret_expression(call.arguments[i], failed);
	}
	for(size_t i = 0; i < arg_count; ++i)
	{
		Ast_Variable arg = args[i]->variable;

		void *location = AllocateInterpMemory(get_type_size(*arg.type));
		copy_interp_val_to_memory(location, &arg_results[i], arg.type);
		Interp_Val the_arg = create_interp_val();
		the_arg.type = arg.type;
		the_arg.location = location;

		interp_add_symbol(arg.identifier.name, the_arg);
	}
	
	Token_Iden token = {};
	b32 returned = false;
	result = interpret_statement_list(statement->scope_desc.body, failed, &token, 0, &returned);
	if(!returned)
	{
		*failed = true;
		raise_interpret_error("Function did not return", token);
	}
	destroy_scope();
	return result;
}

Interp_Val
str_to_interp_val(u8 *str)
{
	Interp_Val result = create_interp_val();
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	// @TODO: MEMORY LEAK
	result.type = (Type_Info *)AllocateInterpMiscMemory(sizeof(Type_Info));
	size_t str_len = vstd_strlen((char *)str);
	for(size_t i = 0; i < str_len; ++i)
	{
		if(str[i] == '.')
		{
			result.type->type = T_UNTYPED_FLOAT;
			result.type->primitive.size = real64;
			result._f64 = vstd_str_to_double((char *)str);
			return result;
		}
	}

	result.type->type = T_UNTYPED_INTEGER;
	if(str[0] != '-' && str_len > 19)
	{
		result.type->primitive.size = ubyte8;
		result._u64 = str_to_u64((char *)str);
		return result;
	}
	result.type->primitive.size = byte8;
	result._i64 = str_to_i64((char *)str);
	return result;
}

void
interpret_add_function(Symbol func_sym)
{
	Interp_Table *top = stack_pop(symbol_scope, Interp_Table *);
	Interp_Val func = create_interp_val();
	func.type = (Type_Info *)AllocateInterpMiscMemory(sizeof(Type_Info));
	func.type->type = T_FUNC;
	func.pointed = func_sym.node;
	shput(top, func_sym.identifier, func);
	i32 idx = shgeti(top, func_sym.identifier);
	Assert(idx != -1);
	
	top[idx].value.location = &top[idx].value;
	stack_push(symbol_scope, top);
}

Interp_Val
interpret_operand(Ast_Node *node, b32 *failed)
{
	Interp_Val result = create_interp_val();
	if(*failed)
		return result;

	switch((int)node->type)
	{
		case type_identifier:
		{
			Interp_Val *location = interp_look_up_symbol(node->identifier.name);
			if(location == NULL)
			{
				*failed = true;
				return result;
			}
			auto size = get_type_size(*location->type);
			if(location->type->type == T_FUNC)
			{
				result.pointed = location->pointed;
			}
			else
			{
				memcpy(&result._u64, location->location, size);
			}
			result.type = location->type;
		} break;
		case type_literal:
		{
			result = str_to_interp_val(node->atom.identifier.name);
		} break;
		case type_func_call:
		{
			result = interpret_func_call(node, failed);
		} break;
		case type_selector:
		{
			Interp_Val val = interpret_expression(node->selector.operand, failed);
			if(*failed) {
				return result;
			}
			Interp_Val *struct_ptr = (Interp_Val *)val.pointed;
			result = struct_ptr[node->selector.selected_index];
		} break;
		case type_index:
		{
			Interp_Val operand = interpret_expression(node->index.operand, failed);
			if(*failed)
				return result;
			Interp_Val index = interpret_expression(node->index.expression, failed);
			if(*failed)
				return result;

			Assert(is_integer(*index.type));
			auto array_loc = (Interp_Val *)operand.pointed;
			result = array_loc[index._u64];
		} break;
		case type_postfix:
		{
			Interp_Val operand = interpret_operand(node->postfix.operand, failed);
			Assert(operand.location);

			Interp_Val *location = (Interp_Val *)operand.location;
			Assert(is_type_primitive(location->type));
			// @NOTE: store the original value as this is a postfix operation
			result = *location;
			Interp_Val out = create_interp_val();
			Interp_Val tmp = *location;
			// @NOTE: do the postfix op on a tmp variable
			if(node->postfix.token->type == tok_plusplus)
			{
				DO_U_OP(out, ++, tmp);
			}
			else if(node->postfix.token->type == tok_minusminus)
			{
				DO_U_OP(out, --, tmp);
			}
			else
				Assert(false);

			// @NOTE: put the temp variable back in
			location->_u64 = tmp._u64;
		} break;
		case type_array_list:
		{
			int type_size = node->array_list.type.array.elem_count * sizeof(Interp_Val);
			Interp_Val *array_loc = (Interp_Val *)AllocateInterpMiscMemory(type_size);

			auto list = node->array_list.list;
			size_t list_count = SDCount(list);
			for(size_t i = 0; i < list_count; ++i)
			{
				array_loc[i] = interpret_expression(list[i], failed);
				if(*failed)
					return result;
			}

			for(size_t i = 0; i < list_count; ++i)
			{
				array_loc[i] = perform_cast(array_loc[i], *node->array_list.type.array.type);
			}

			for(size_t i = list_count; i < node->array_list.type.array.elem_count; ++i)
			{
				array_loc[i] = generate_empty(node->array_list.type.array.type);
			}

			result.type = &node->array_list.type;
			result.pointed = array_loc;
		} break;
		case type_struct_init:
		{
			Assert(node->struct_init.type.type == T_STRUCT);
			auto member_count = node->struct_init.type.structure.member_count;
			auto type_size = member_count * sizeof(Interp_Val);//get_type_size(node->struct_init.type);
			Interp_Val *struct_loc = (Interp_Val *)AllocateInterpMiscMemory(type_size);
			
			result.type = &node->struct_init.type;
			result.pointed = struct_loc;

			if(node->struct_init.is_empty_init || SDCount(node->struct_init.expressions) < result.type->structure.member_count)
			{
				for(int i = 0; i < member_count; ++i)
				{
					struct_loc[i] = generate_empty(&result.type->structure.member_types[i]);
				}
			}

			// @NOTE: fast path
			if(node->struct_init.is_empty_init)
			{
				// nothing to do here
			}
			else
			{
				size_t expr_count = SDCount(node->struct_init.expressions);
				auto expressions = node->struct_init.expressions;

				// @NOTE: Memory is already cleared to zero on allocation so we don't
				// need to do preset values that are not in the initialization list

				for(i64 i = expr_count - 1; i >= 0; --i)
				{
					auto expr_val = interpret_expression(expressions[i], failed);
					if(*failed)
						return result;

					expr_val = perform_cast(expr_val, node->struct_init.type.structure.member_types[i]);
					Interp_Val *member_ptr = struct_loc + i;
					// Just copy the value, doesn't matter what it actually is
					member_ptr->_u64 = expr_val._u64;
					member_ptr->type = &result.type->structure.member_types[i];
				}
			}
		} break;
		case type_const_str:
		{
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			// @TODO: LEAK
			result.type = (Type_Info *)AllocateInterpMemory(sizeof(Type_Info));
			result.type->type = T_STRING;
			result.pointed = node->atom.identifier.name;
		} break;
		default:
		{
			LG_FATAL("Interpreter unkown operand type: %d", node->type);
		} break;
	}
	return result;
}

Interp_Val
interpret_unary(Ast_Node *node, b32 *failed)
{
	Interp_Val result;
	if(*failed)
		return {};
	switch(node->type)
	{
		case type_unary_expr:
		{
			result = create_interp_val();

			Interp_Val operand;
			if(node->unary_expr.op->type != '@')
				operand = interpret_expression(node->unary_expr.expression, failed);
			switch((int)node->unary_expr.op->type)
			{
				case tok_plusplus:
				{
					DO_U_OP(result, ++, operand);
					if(operand.location)
						((Interp_Val *)operand.location)->_u64 = result._u64;
				} break;
				case tok_minusminus:
				{
					DO_U_OP(result, --, operand);
					if(operand.location)
						((Interp_Val *)operand.location)->_u64 = result._u64;
				} break;
				case tok_minus:
				{
					DO_U_OP(result, -, operand);
				} break;
				case tok_not:
				{
					DO_U_OP(result, !, operand);
				} break;
				case '@':
				{
					auto operand = interpret_lhs(node->unary_expr.expression);
					Assert(operand->location);
					result.type->type = T_POINTER;
					result.type->pointer.type = operand->type;
					result.pointed = operand->location;
				} break;
				case '*':
				{
					Assert(operand.type->type == T_POINTER);
					Assert(operand.pointed);
					result = *(Interp_Val *)operand.pointed;
				} break;
			}
		} break;
		case type_cast:
		{
			result = interpret_expression(node->cast.expression, failed);
			result = perform_cast(result, *node->cast.type);
			result.type = node->cast.type;
		} break;
		default:
		{
			result = interpret_operand(node, failed);
		} break;
	}
	return result;
}

Interp_Val
interpret_binary(Ast_Node *node, b32 *failed)
{
	if(node->type == type_binary_expr)
	{
		Interp_Val left = interpret_binary(node->left, failed);
		Interp_Val right = interpret_binary(node->right, failed);
		// @NOTE: not sure if we need those
		// auto left_type = node->binary_expr.left;
		// auto right_type = node->binary_expr.right;

		Interp_Val result = create_interp_val();
		result.type = left.type;
		if(*failed)
			return result;

		switch ((int)node->binary_expr.op)
		{
			case '+':
			{
				if(left.type->type == T_POINTER)
				{
					Assert(is_integer(*right.type));
					result.type = left.type;
					if(is_signed(*right.type))
					{
						result._u64 = left._u64 + right._i64;
					}
					else
					{
						result._u64 = left._u64 + right._u64;
					}
				}
				else
				{
					DO_OP(result, +, left, right);
				}
			} break;
			case '-':
			{
				if(left.type->type == T_POINTER)
				{
					Assert(is_integer(*right.type));
					result.type = left.type;
					if(is_signed(*right.type))
					{
						result._u64 = left._u64 - right._i64;
					}
					else
					{
						result._u64 = left._u64 - right._u64;
					}
				}
				else
				{
					DO_OP(result, -, left, right);
				}
			} break;
			case '*':
			{
				DO_OP(result, *, left, right);
			} break;
			case '/':
			{
				DO_OP(result, /, left, right);
			} break;
			case '%':
			{
				// @NOTE: why is fmod even a function...
				if(is_float(node->binary_expr.left))
				{
					result.type->type = T_UNTYPED_FLOAT;
					if(is_float(node->binary_expr.right))
						result._f64 = fmod(left._f64, right._f64);
					else
						result._f64 = fmod(left._f64,  (f64)right._i64);
				}
				else
				{
					result.type->type = T_UNTYPED_INTEGER;
					if(is_float(node->binary_expr.right))
					{
						result.type->type = T_UNTYPED_FLOAT;
						result._f64 = fmod(left._f64, right._f64);
					}
					else
						result._i64 = left._i64 % right._i64;
				}
			} break;
			case tok_logical_is:
			{
				DO_OP(result, ==, left, right);
			} break;
			case tok_logical_isnot:
			{
				DO_OP(result, !=, left, right);
			} break;
			case tok_bits_rshift:
			{
				if(is_signed(*left.type))
				{
					result.type->primitive.size = byte8;
					result._i64 = left._i64 >> right._i64;
				}
				else
				{
					result.type->primitive.size = ubyte8;
					result._u64 = left._u64 >> right._u64;
				}
			} break;
			case tok_bits_lshift:
			{
				if(is_signed(*left.type))
				{
					result.type->primitive.size = byte8;
					result._i64 = left._i64 << right._i64;
				}
				else
				{
					result.type->primitive.size = ubyte8;
					result._u64 = left._u64 << right._u64;
				}
			} break;
			case '<':
			{
				DO_OP(result, <, left, right);
			} break;
			case '>':
			{
				DO_OP(result, >, left, right);
			} break;
			case tok_logical_lequal:
			{
				DO_OP(result, <=, left, right);
			} break;
			case tok_logical_gequal:
			{
				DO_OP(result, >=, left, right);
			} break;
			case tok_bits_and:
			{
				if(is_signed(*left.type))
				{
					result.type->primitive.size = byte8;
					result._i64 = left._i64 & right._i64;
				}
				else
				{
					result.type->primitive.size = ubyte8;
					result._u64 = left._u64 & right._u64;
				}
			} break;
			case tok_bits_xor:
			{
				if(is_signed(*left.type))
				{
					result.type->primitive.size = byte8;
					result._i64 = left._i64 ^ right._i64;
				}
				else
				{
					result.type->primitive.size = ubyte8;
					result._u64 = left._u64 ^ right._u64;
				}
			} break;
			case tok_bits_or:
			{
				if(is_signed(*left.type))
				{
					result.type->primitive.size = byte8;
					result._i64 = left._i64 | right._i64;
				}
				else
				{
					result.type->primitive.size = ubyte8;
					result._u64 = left._u64 | right._u64;
				}
			} break;	
			default:
			{
				LG_FATAL("Unimplemented binary operator %c", node->binary_expr.op);
			} break;
		}
		return result;
	}
	else
		return interpret_unary(node, failed);
}

Interp_Val
interpret_expression(Ast_Node *expr, b32 *failed)
{
	return interpret_binary(expr, failed);
}

