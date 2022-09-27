#include <x64_Gen.h>
#include <platform/platform.h>
#include <Type.h>
#include <Threading.h>

//const int IMAGE_REL_AMD64_ADDR64 = 0x0001;
const int IMAGE_REL_AMD64_REL32  = 0x0004;

static u8 *buffer_start;
static Type_Info *x64_type_64;
static Type_Info *bool_type;
static Type_Info *x64_str_type;
static Symbol_Descriptor *obj_symbols;

i32
calculate_jump_offset(i32 from, i32 to)
{
	if(from == to)
		return 0;
	if(from > to)
	{
		from++;
		return -(from - to);
	}
	else
	{
		to--;
		return -(from - to);
	}
}

inline void
push_symbol(Symbol_Descriptor to_push)
{
	lock_mutex();
	SDPush(obj_symbols, to_push);
	unlock_mutex();
}

i32
get_and_maybe_push_string(u8 *str)
{
	int last_ro = -1;
	size_t sym_count = SDCount(obj_symbols);
	for(size_t i = 0; i < sym_count; ++i)
	{
		if(obj_symbols[i].section == SEC_RO_DATA)
		{
			if(obj_symbols[i].type == OBJ_STRING && vstd_strcmp((char *)str, (char *)obj_symbols[i].name))
				return i;
			last_ro = i;
		}
	}
	
	// Same hack as above
	Symbol_Descriptor new_str_symbol = {};
	new_str_symbol.name = str;
	new_str_symbol.size = vstd_strlen((char *)str) + 1;
	if(last_ro != -1)
	{
		new_str_symbol.position = obj_symbols[last_ro].position + obj_symbols[last_ro].size;
	}
	else
	{
		new_str_symbol.position = 0;
	}
	new_str_symbol.section = SEC_RO_DATA;
	new_str_symbol.type = OBJ_STRING;
	new_str_symbol.value = (u64)str;
	push_symbol(new_str_symbol);
	return sym_count;
}

i32
push_int(u64 _integer, Var_Size size)
{
	static int integer_count = 0;

	int last_ro = -1;
	size_t sym_count = SDCount(obj_symbols);
	for(size_t i = 0; i < sym_count; ++i)
	{
		if(obj_symbols[i].section == SEC_RO_DATA)
		{
			if(obj_symbols[i].type == OBJ_FLOAT && obj_symbols[i].value == _integer)
				return i;
			last_ro = i;
		}
	}

	Symbol_Descriptor new_int_symbol = {};
	u8 *symbol_name = (u8 *)AllocatePermanentMemory(16);
	vstd_sprintf((char *)symbol_name, "__integer!@%d", integer_count++);
	new_int_symbol.size = size;

	if(last_ro != -1)
	{
		new_int_symbol.position = obj_symbols[last_ro].position + obj_symbols[last_ro].size;
	}
	else
	{
		new_int_symbol.position = 0;
	}
	new_int_symbol.name = symbol_name;
	new_int_symbol.section = SEC_RO_DATA;
	new_int_symbol.value = _integer;
	new_int_symbol.type = OBJ_FLOAT;
	push_symbol(new_int_symbol);
	return sym_count;
}

i32
push_float(u64 _float, Var_Size size)
{
	static int float32_count = 0;
	static int float64_count = 0;

	int last_ro = -1;
	size_t sym_count = SDCount(obj_symbols);
	for(size_t i = 0; i < sym_count; ++i)
	{
		if(obj_symbols[i].section == SEC_RO_DATA)
		{
			if(obj_symbols[i].type == OBJ_FLOAT && obj_symbols[i].value == _float)
				return i;
			last_ro = i;
		}
	}

	Symbol_Descriptor new_float_symbol = {};
	u8 *symbol_name = (u8 *)AllocatePermanentMemory(16);
	if(size == real32)
	{
		vstd_sprintf((char *)symbol_name, "__real32!@%d", float32_count++);
		new_float_symbol.size = 4;
	}
	else if(size == real64)
	{
		vstd_sprintf((char *)symbol_name, "__real64!@%d", float64_count++);
		new_float_symbol.size = 8;
	}

	if(last_ro != -1)
	{
		new_float_symbol.position = obj_symbols[last_ro].position + obj_symbols[last_ro].size;
	}
	else
	{
		new_float_symbol.position = 0;
	}
	new_float_symbol.name = symbol_name;
	new_float_symbol.section = SEC_RO_DATA;
	new_float_symbol.value = _float;
	new_float_symbol.type = OBJ_FLOAT;
	push_symbol(new_float_symbol);
	return sym_count;
}

Code_Buffer
x64_generate_code(File_Contents *f, IR *ir, Relocation **relocations, u32 *out_relocation_count)
{
	obj_symbols = SDCreate(Symbol_Descriptor);

	// Set up some simple types to use whe needed
	x64_type_64 = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	x64_type_64->type = T_INTEGER;
	x64_type_64->primitive.size = byte8;
	x64_type_64->identifier = (u8 *)"i64";

	bool_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	bool_type->type = T_BOOLEAN;
	bool_type->primitive.size = byte1;
	bool_type->identifier = (u8 *)"bool";

	Type_Info *type_u8 = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	type_u8->type = T_INTEGER;
	type_u8->primitive.size = byte1;
	type_u8->identifier = (u8 *)"u8";

	x64_str_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	x64_str_type->type = T_POINTER;
	x64_str_type->pointer.type = type_u8;
	x64_str_type->identifier = (u8 *)"* u8";

	size_t count = SDCount(ir);
	auto relative_relocations = (Relative_Relocation_Array *)AllocateCompileMemory(count * sizeof(Relative_Relocation_Array));
	auto fixables = (Fixable_Array *)AllocateCompileMemory(count * sizeof(Fixable_Array));
	auto code_buffers = (Code_Buffer *)AllocateCompileMemory(count * sizeof(Code_Buffer));
	for(size_t i = 1; i < count; ++i)
	{
		// @NOTE: we store the index as the value and fix it later
		// to the address
		Symbol_Descriptor func_sym = {};
		func_sym.name = f->functions[i - 1]->identifier;
		func_sym.value = i;
		func_sym.type = OBJ_FUNCTION;
		func_sym.position = func_sym.value;

		if(f->functions[i - 1]->node->function.body)
		{
			func_sym.section = SEC_TEXT;
		}
		else
		{
			func_sym.section = SEC_UNDEFINED;
		}
		push_symbol(func_sym);

		Relative_Relocation_Array reloc_array;
		reloc_array.relocs = (Relative_Relocation *)AllocateCompileMemory(ir[i].bc_count * sizeof(Relative_Relocation));
		reloc_array.count = 0;
		relative_relocations[i] = reloc_array;

		Fixable_Array fixable_arr;
		fixable_arr.fixables = (Fixable *)AllocateCompileMemory(ir[i].bc_count * sizeof(Fixable));
		fixable_arr.count = 0;
		fixables[i] = fixable_arr;

		Code_Buffer code_buffer;
		code_buffer.buffer = (u8 *)AllocateCompileMemory(ir[i].bc_count * 12); // @NOTE: is this enough ? is it too much?
		code_buffer.count = 0;
		code_buffers[i] = code_buffer;

		Generate_Code_Args *args = (Generate_Code_Args *)AllocatePermanentMemory(sizeof(Generate_Code_Args));
		args->ir          = &ir[i];
		args->buffer      = &code_buffers[i];
		args->relocs      = &relative_relocations[i];
		args->fixable_arr = &fixables[i];
		args->global_ds = ir[0].allocated;
		args->buffer_index = i;
		post_job_listing(JOB_GENERATE_CODE, (void *)x64_gen_ir, args);
	}

	wait_for_threads();

	u32 total_code_size = 0;
	for(int i = 0; i < count; ++i)
	{
		total_code_size += code_buffers[i].count;
	}

	u32 buffer_offsets[count];
	Code_Buffer program_code;
	program_code.buffer = (u8 *)AllocateCompileMemory(total_code_size);
	program_code.count = 0;
	for(int i = 0; i < count; ++i)
	{
		buffer_offsets[i] = program_code.count;
		memcpy(program_code.buffer + program_code.count, code_buffers[i].buffer, code_buffers[i].count);
		program_code.count += code_buffers[i].count;
	}


	size_t total_relocation_count = 0;
	for(int i = 0; i < count; ++i)
	{
		int relocation_count = relative_relocations[i].count;
		auto relocations = relative_relocations[i].relocs;
		total_relocation_count += relocation_count;
		for(int j = 0; j < relocation_count; ++j)
		{
			relocations[j].actual_relocation.offset += buffer_offsets[relocations[j].buffer_index];
		}
	}
	*out_relocation_count = total_relocation_count;

	Relocation *absolute_relocations = (Relocation *)AllocateCompileMemory(total_relocation_count * sizeof(Relocation));
	for(int i = 0; i < count; ++i)
	{
		int relocation_count = relative_relocations[i].count;
		auto relocations = relative_relocations[i].relocs;
		for(int j = 0; j < relocation_count; ++j)
		{
			absolute_relocations[--total_relocation_count] = relocations[j].actual_relocation;
		}
	}

	*relocations = absolute_relocations;

	auto sym_count = SDCount(obj_symbols);
	for(int i = 0; i < sym_count; ++i)
	{
		if(obj_symbols[i].type == OBJ_FUNCTION)
		{
			obj_symbols[i].position = buffer_offsets[obj_symbols[i].value];
		}
	}

	for(int i = 0; i < count; ++i)
	{
		auto fix_array = fixables[i].fixables;
		i32 fixable_count = fixables[i].count;
		for(int j = 0; j < fixable_count; ++j)
		{
			u32 absolute_destination = buffer_offsets[fix_array[j].buffer_index] + fix_array[j].block->start_address;
			u32 absolute_address = buffer_offsets[fix_array[j].buffer_index] + fix_array[j].offset;
			((u32 *)program_code.buffer)[absolute_address] = absolute_destination;
		}
	}
	return program_code;
}

void
x64_gen_ir(IR *ir, Code_Buffer *buffer, Relative_Relocation_Array *relocs, Data_Segment *global_ds, int buffer_idx, Fixable_Array *fixables)
{
	if(!ir->blocks)
		return;
	size_t block_count = SDCount(ir->blocks);
	for(size_t block_idx = 0; block_idx < block_count; ++block_idx)
	{
		auto block = ir->blocks[block_idx];
		block->start_address = buffer->count;
		for(size_t bytecode_idx = 0; bytecode_idx < block->bc_count; ++bytecode_idx)
		{
			x64_gen_from_bytecode(ir, block->bc[bytecode_idx], buffer, relocs, global_ds, buffer_idx, fixables);
		}
	}
}

inline void
push_i8(Code_Buffer *buffer, i8 byte)
{
	buffer->buffer[buffer->count++] = byte;
}

inline void
push_byte(Code_Buffer *buffer, u8 byte)
{
	buffer->buffer[buffer->count++] = byte;
}

inline void
push_i32(Code_Buffer *buffer, i32 bytes)
{
	i8 *bytes_ptr = (i8 *)&bytes;
	for(size_t i = 0; i < 4; ++i)
		push_byte(buffer, bytes_ptr[i]);
}

void
push_any(Code_Buffer *buffer, void *any, Type_Info *type)
{
	Assert(type->type == T_INTEGER || type->type == T_UNTYPED_INTEGER);
	switch(type->primitive.size)
	{
		case byte1:
		case ubyte1:
		{
			push_byte(buffer, *(u8 *)any);
		} break;
		case byte2:
		case ubyte2:
		{
			push_byte(buffer, ((u8 *)any)[0]);
			push_byte(buffer, ((u8 *)any)[1]);
		} break;
		case byte4:
		case ubyte4:
		{
			push_i32(buffer, *(i32 *)any);
		} break;
		case byte8:
		case ubyte8:
		{
			push_i32(buffer, ((i32 *)any)[0]);
			push_i32(buffer, ((i32 *)any)[1]);
		} break;
		default: Assert(false);
	}
	
}

inline void
prefix64(Code_Buffer *buffer)
{
	push_byte(buffer, 0x48);
}

u8
encode_postfix(MOD mod, u8 rm1, u8 rm2)
{
	return (mod << 6) | (rm1 << 3) | rm2;
}

void
push_displacement(MOD mod, i32 displacement, Code_Buffer *buffer)
{
	if(mod & MOD_displacement_i8)
		push_i8(buffer, displacement);
	else
		push_i32(buffer, displacement);
}

inline void
push_generic_mov(MOD mod, u8 mov_opcode, i32 left_rm, i32 right_rm, i32 displacement, Code_Buffer *buffer)
{
	push_byte(buffer, mov_opcode);
	u8 mod_reg_rm;
	if(mod == MOD_displacement_0 || mod == MOD_register)
		mod_reg_rm = encode_postfix(mod, left_rm, right_rm);
	else 
		mod_reg_rm = encode_postfix(mod, right_rm, left_rm);
	push_byte(buffer, mod_reg_rm);
	if(mod != MOD_displacement_0 && mod != MOD_register)
			push_displacement(mod, displacement, buffer);
}

b32
is_standard_type(Type_Info *type)
{
	if(type->type == T_STRING)
	{
		*type = *x64_str_type;
	}
	if(type->type == T_BOOLEAN)
	{
		type->primitive.size = byte1;
		return true;
	}
	if(type->type == T_ARRAY)
	{
		// @TODO: hack
		type->type = T_POINTER;
	}
	if(type->type == T_INTEGER || type->type == T_UNTYPED_INTEGER || type->type == T_FUNC || type->type == T_ARRAY || type->type == T_POINTER)
		return true;
	return false;
}

u8
get_rm_r_mov(Code_Buffer *buffer, Type_Info *type)
{
	u8 mov_opcode;
	if(is_standard_type(type))
	{
		size_t size = get_type_size(*type);
		switch(size)
		{
			case 1:
			{
				mov_opcode = 0x88;
			} break;
			case 2:
			{
				mov_opcode = 0x89;
			} break;
			case 4:
			{
				mov_opcode = 0x89;
			} break;
			case 8:
			{
				mov_opcode = 0x89;
			} break;
			default: Assert(false);
		}
	}
	else 
	{
		Assert(false);
		Assert(type->type == T_FLOAT);
	}
	return mov_opcode;
}

u8
fix_register(Register &reg)
{
	if(reg >= reg_r8 && reg <= reg_r15)
	{
		reg = (Register)(reg - reg_r8);
		return REX_B;
	}
	return 0;
}

u8
fix_registers(Register &left, Register &right)
{
	u8 prefix = 0;
	if(left >= reg_r8 && left <= reg_r15)
	{
		left = (Register)(left - reg_r8);
		prefix |= REX_B;
	}
	if(right >= reg_r8 && right <= reg_r15)
	{
		right = (Register)(right - reg_r8);
		prefix |= REX_R;
	}
	return prefix;
}

void
prefix_type(Code_Buffer *buffer, Type_Info *type, u8 current_prefix)
{
	if(is_standard_type(type))
	{
		size_t size = get_type_size(*type);
		switch(size)
		{
			case 1:
			{
			} break;
			case 2:
			{
				// @NOTE: no idea
				current_prefix|= 0x66;
			} break;
			case 4:
			{
			} break;
			case 8:
			{
				current_prefix |= REX_W;
			} break;
			default: Assert(false);
		}
	}
	else
	{
		Assert(false);
		Assert(type->type == T_FLOAT);
	}
	if(current_prefix != 0)
		push_byte(buffer, current_prefix);
}

u8
get_r_i_mov(Code_Buffer *buffer, Type_Info *type)
{
	u8 mov_opcode;
	if(type->type == T_INTEGER)
	{
		size_t size = get_type_size(*type);
		switch(size)
		{
			case 1:
			{
				mov_opcode = 0xb4;
			} break;
			case 2:
			{
				mov_opcode = 0xb8;
			} break;
			case 4:
			{
				mov_opcode = 0xb8;
			} break;
			case 8:
			{
				mov_opcode = 0xb8;
			} break;
			default: Assert(false);
		}
	}
	else
	{
		Assert(false);
		Assert(type->type == T_FLOAT);
	}
	return mov_opcode;
}

u8
get_r_rm_mov(Code_Buffer *buffer, Type_Info *type)
{
	u8 mov_opcode;
	if(is_standard_type(type))
	{
		size_t size = get_type_size(*type);
		switch(size)
		{
			case 1:
			{
				mov_opcode = 0x8a;
			} break;
			case 2:
			{
				// @NOTE: no idea
				mov_opcode = 0x8b;
			} break;
			case 4:
			{
				mov_opcode = 0x8b;
			} break;
			case 8:
			{
				mov_opcode = 0x8b;
			} break;
			default: Assert(false);
		}
	}
	else
	{
		Assert(false);
		Assert(type->type == T_FLOAT);
	}
	return mov_opcode;
}

void
push_compare_valuei8(Code_Buffer *buffer, Bytecode *bc, Register reg, u8 value)
{
	push_byte(buffer, 0x80);
	u8 postfix = encode_postfix(MOD_register, 7, reg);
	push_byte(buffer, postfix);
	push_byte(buffer, value);
}

void
push_compare(Code_Buffer *buffer, Bytecode *bc, Register left, Register right)
{
	u8 opcode;
	prefix_type(buffer, bc->type, fix_registers(left, right));
	if(get_type_size(*bc->type) == 1)
	{
		opcode = 0x38;
	}
	else
	{
		opcode = 0x39;
	}
	push_byte(buffer, opcode);
	MOD mod = MOD_register;
	u8 postfix = encode_postfix(mod, right, left);
	push_byte(buffer, postfix);
}

inline void
encode_int_op(u8 opcode, Bytecode *bc, Code_Buffer *buffer, IR *ir)
{
	u8 prefix = 0;
	if(bc->type->primitive.size == ubyte8 || bc->type->primitive.size == byte8)
		prefix = REX_W;
	Register left = (Register)bc->left_idx;
	Register right = (Register)bc->right_idx;
	prefix |= fix_registers(left, right);
	if(prefix != 0)
		push_byte(buffer, prefix);

	push_byte(buffer, opcode);
	u8 postfix = encode_postfix(MOD_register, right, left);
	push_byte(buffer, postfix);
}

Register
get_float_register_encoding(Register reg)
{
	if(reg >= reg_xmm0 && reg <= reg_xmm15)
		return (Register)(reg - (reg_r15 + 1));
	return reg;
}

u8
float_fix_register(Register &left)
{
	Assert(left <= reg_xmm15);
	u8 prefix = 0;
	if(left >= reg_xmm8)
	{
		left = (Register)(left - reg_xmm8);
		prefix |= REX_R;
	}
	return prefix;
}

u8
float_fix_registers(Register &left, Register &right)
{
	Assert(left <= reg_xmm15);
	Assert(right <= reg_xmm15);
	u8 prefix = 0;
	if(left >= reg_xmm8)
	{
		left = (Register)(left - reg_xmm8);
		prefix |= REX_R;
	}
	if(right >= reg_xmm8)
	{
		right = (Register)(right - reg_xmm8);
		prefix |= REX_B;
	}
	return prefix;
}

void
prefix_float_op(Code_Buffer *buffer, Type_Info *type)
{
	if(type->primitive.size == real32)
	{
		push_byte(buffer, 0xF3);
	}
	else if(type->primitive.size == real64)
	{
		push_byte(buffer, 0xF2);
	}
	else
		Assert(false);
}

void
push_relocation(Relocation reloc, Relative_Relocation_Array *reloc_array, int buffer_index)
{
	reloc_array->relocs[reloc_array->count++] = { reloc, buffer_index };
}

void
move_float_to_register(Code_Buffer *buffer, Register reg, u64 value, Type_Info *type, Relative_Relocation_Array *relocs, int buffer_index)
{
	Assert(is_float(*type));
	prefix_float_op(buffer, type);
	if(reg >= reg_xmm8)
	{
		reg = (Register)(reg - (reg_r15 + 1));
		push_byte(buffer, REX_R);
	}
	reg = get_float_register_encoding(reg);
	push_byte(buffer, 0x0F);
	push_byte(buffer, 0x10);
	push_byte(buffer, encode_postfix(MOD_displacement_0, reg, 0b101));

	Relocation relocation = {};
	relocation.type = IMAGE_REL_AMD64_REL32;
	relocation.symbol_index = push_float(value, type->primitive.size);
	relocation.offset = buffer->count;
	push_relocation(relocation, relocs, buffer_index);
	push_i32(buffer, 0);
}

void 
move_value_to_register(Register reg, u64 value, Type_Info *type, Code_Buffer *buffer)
{
	prefix_type(buffer, type, fix_register(reg));
	u8 mov_opcode = get_r_i_mov(buffer, type);
	mov_opcode |= reg & 0b111;
	push_byte(buffer, mov_opcode);
	push_any(buffer, &value, type);
}

inline void
set_2byte_opcode(Code_Buffer *buffer)
{
	push_byte(buffer, 0x0F);
}

void
push_cmp_op(Code_Buffer *buffer, Bytecode *bc, u8 op)
{
	push_compare(buffer, bc, (Register)bc->left_idx, (Register)bc->right_idx);
	set_2byte_opcode(buffer);
	push_byte(buffer, op);
	push_byte(buffer, encode_postfix(MOD_register, 0, bc->result));
}

void
push_fcmp(Code_Buffer *buffer, Bytecode *bc, Register left, Register right)
{
	if(bc->type->primitive.size == real64)
		push_byte(buffer, 0x66);
	u8 prefix = float_fix_registers(left, right);
	if(prefix != 0)
		push_byte(buffer, prefix);
	set_2byte_opcode(buffer);
	push_byte(buffer, 0x2E); // ucomis(s/d)
	push_byte(buffer, encode_postfix(MOD_register, left, right));
}

void
push_fcmp_op(Code_Buffer *buffer, Bytecode *bc, u8 op)
{
	push_fcmp(buffer, bc, (Register)bc->left_idx, (Register)bc->right_idx);
	set_2byte_opcode(buffer);
	push_byte(buffer, op);
	push_byte(buffer, encode_postfix(MOD_register, 0, bc->result));
}

void
store_float(Code_Buffer *buffer, Bytecode *bc, i32 displacement, MOD mod, Register reg)
{
	reg = get_float_register_encoding(reg);
	push_byte(buffer, 0xF3);
	if(reg >= reg_xmm8)
	{
		reg = (Register)(reg - (reg_r15 + 1));
		push_byte(buffer, REX_R);
	}
	push_byte(buffer, 0x0F);
	push_byte(buffer, 0x11);
	push_byte(buffer, encode_postfix(mod, reg, reg_bp));
	push_displacement(mod, displacement, buffer);
}

void
float_move_reg_to_reg(Code_Buffer *buffer, Register left, Register right, Type_Info *type)
{
	prefix_float_op(buffer, type);
	u8 prefix = float_fix_registers(left, right);
	if(prefix != 0)
		push_byte(buffer, prefix);
	push_byte(buffer, 0x0F);
	push_byte(buffer, 0x10);
	push_byte(buffer, encode_postfix(MOD_register, left, right));
}

void
encode_float_op(Code_Buffer *buffer, Register left, Register right, Type_Info *type, u8 opcode)
{
	prefix_float_op(buffer, type);
	u8 prefix = float_fix_registers(left, right);
	if(prefix != 0)
		push_byte(buffer, prefix);
	push_byte(buffer, 0x0F);
	push_byte(buffer, opcode);
	push_byte(buffer, encode_postfix(MOD_register, left, right));
}

void
move_reg_to_reg(Code_Buffer *buffer, Register left, Register right, Type_Info *type)
{

	MOD mod = MOD_register;

	prefix_type(buffer, type, fix_registers(left, right));

	u8 mov_opcode = get_r_rm_mov(buffer, type);
	push_generic_mov(mod, mov_opcode, left, right, 0, buffer);
}

#define F_OP(OPCODE) encode_float_op(buffer, (Register)bc.left_idx, (Register)bc.right_idx, bc.type, OPCODE);

void
x64_gen_from_bytecode(IR *ir, Bytecode bc, Code_Buffer *buffer, Relative_Relocation_Array *relocs, Data_Segment *global_ds, int buffer_index, Fixable_Array *fixable_array)
{
	switch(bc.op)
	{
		case BC_STORE_NON_REMOVABLE:
		case BC_STORE:
		{
			Data_Segment seg = ir->allocated[bc.left_idx];
			i32 displacement = seg.position + seg.size;
			displacement = -displacement;
			MOD mod = MOD_displacement_i32;
			if(displacement > -129 && displacement < 128 )
				mod = MOD_displacement_i8;

			if(bc.type->type == T_FLOAT)
			{
				store_float(buffer, &bc, displacement, mod, (Register)bc.right_idx);
			}
			else
			{
				Register left = reg_bp;
				Register right = (Register)bc.right_idx;
				prefix_type(buffer, bc.type, fix_registers(left, right));

				u8 mov_opcode = get_rm_r_mov(buffer, bc.type);
				push_generic_mov(mod, mov_opcode, left, right, displacement, buffer);
			}
		} break;
		case BC_PUSH_OFFSET:
		{
			Data_Segment seg = ir->allocated[bc.left_idx];
			i32 displacement = seg.position + seg.size;
			MOD mod = MOD_displacement_i32;
			if(displacement > -129 && displacement < 128 )
				mod = MOD_displacement_i8;

			Register left = reg_bp;
			Register right = (Register)bc.right_idx;
			prefix_type(buffer, bc.type, fix_registers(left, right));

			u8 mov_opcode = get_rm_r_mov(buffer, bc.type);
			push_generic_mov(mod, mov_opcode, left, right, displacement, buffer);
		} break;
		case BC_MOVE_FLOAT_TO_REG:
		{
			move_float_to_register(buffer, (Register)bc.result, bc.big_idx, bc.type, relocs, buffer_index);
		} break;
		case BC_MOVE_VALUE_TO_REG:
		{
			move_value_to_register((Register)bc.result, bc.big_idx, bc.type, buffer);
		} break;
		case BC_MOVE_FUNCTION_TO_REG:
		{
			prefix64(buffer);
			push_byte(buffer, 0x8d);
			push_byte(buffer, encode_postfix(MOD_displacement_0, bc.result, 5));
			Relocation relocation = {};
			relocation.type = IMAGE_REL_AMD64_REL32;
			relocation.symbol_index = bc.right_idx;
			relocation.offset = buffer->count;
			push_i32(buffer, 0);

			push_relocation(relocation, relocs, buffer_index);
		} break;
		case BC_LOAD_DATA_SEG:
		case BC_LOAD_STACK:
		{
			Data_Segment seg;
			if(bc.op == BC_LOAD_DATA_SEG)
				seg = global_ds[bc.right_idx];
			else
				seg = ir->allocated[bc.right_idx];
			i32 displacement = seg.position + seg.size;
			displacement = -displacement;
			MOD mod = MOD_displacement_i32;
			if( displacement > -129 && displacement < 128 )
				mod = MOD_displacement_i8;

			Register left = reg_bp;
			Register right = (Register)bc.result;
			prefix_type(buffer, bc.type, fix_registers(left, right));

			u8 mov_opcode = get_r_rm_mov(buffer, bc.type);
			push_generic_mov(mod, mov_opcode, left, right, displacement, buffer);
		} break;
		case BC_MOVE_REG_TO_REG:
		{
			if(is_float(*bc.type))
			{
				float_move_reg_to_reg(buffer, (Register)bc.left_idx, (Register)bc.right_idx, bc.type);
			}
			else
			{
				if(bc.left_idx == bc.right_idx)
					break;

				Register left = (Register)bc.left_idx;
				Register right = (Register)bc.right_idx;
				move_reg_to_reg(buffer, left, right, bc.type);
			}
		} break;
		case BC_PUSH_REG:
		{
			push_byte(buffer, 0x50 + bc.left_idx);
		} break;
		case BC_POP_REG:
		{
			push_byte(buffer, 0x58 + bc.left_idx);
		} break;
		case BC_RETURN:
		{

			// We add back the rsp
			// that we have subtracted
			Register operand = reg_sp;
			prefix_type(buffer, x64_type_64, fix_register(operand));
			u8 opcode = 0x81;
			push_byte(buffer, opcode);

			// /0 instruction
			push_byte(buffer, encode_postfix(MOD_register, 0, operand));
			push_i32(buffer, ir->stack_top);

			if(bc.left_idx == -1)
			{

				// POP rbp
				push_byte(buffer, 0x58 + reg_bp);
				// RET
				push_byte(buffer, 0xc3);
			}
			else
			{
				MOD mod = MOD_register;
				i32 ret_register = bc.left_idx;
				if(is_float(*bc.type))
				{
					if(ret_register != reg_xmm0)
					{
						Register left = reg_xmm0;
						Register right = (Register)ret_register;
						float_move_reg_to_reg(buffer, left, right, bc.type);
					}
				}
				else
				{
					if(ret_register != reg_a)
					{
						Register left = (Register)reg_a;
						Register right = (Register)ret_register;
						prefix_type(buffer, bc.type, fix_registers(left, right));

						u8 mov_opcode = get_r_rm_mov(buffer, bc.type);
						push_generic_mov(mod, mov_opcode, left, right, 0, buffer);
					}
				}
				// POP rbp
				push_byte(buffer, 0x58 + reg_bp);
				// RET
				push_byte(buffer, 0xc3);
			}
		} break;
		case BC_ADD_VALUE:
		{
			// This is use in special cases
			// we usually don't do ops with values that aren't
			// in registers
			Register operand = (Register)bc.result;
			prefix_type(buffer, bc.type, fix_register(operand));
			u8 opcode = 0x81;
			if(get_type_size(*bc.type) == 1)
				opcode = 0x80;
			push_byte(buffer, opcode);

			// Make sure it's not bigger than 8 bytes
			// since you can't directly add 8 bytes
			Type_Info type = *bc.type;
			Assert(is_integer(type));
			if(type.primitive.size == byte8 || type.primitive.size == ubyte8)
				type.primitive.size = ubyte4;
			// /0 instruction
			push_byte(buffer, encode_postfix(MOD_register, 0, operand));
			push_any(buffer, &bc.big_idx, &type);
		} break;
		case BC_SUB_VALUE:
		{
			// This is use in special cases
			// we usually don't do ops with values that aren't
			// in registers
			Register operand = (Register)bc.result;
			prefix_type(buffer, bc.type, fix_register(operand));
			u8 opcode = 0x81;
			if(get_type_size(*bc.type) == 1)
				opcode = 0x80;
			push_byte(buffer, opcode);

			// Make sure it's not bigger than 8 bytes
			// since you can't directly subtract 8 bytes
			Type_Info type = *bc.type;
			Assert(is_integer(type));
			if(type.primitive.size == byte8 || type.primitive.size == ubyte8)
				type.primitive.size = ubyte4;
			// /5 instruction
			push_byte(buffer, encode_postfix(MOD_register, 5, operand));
			push_any(buffer, &bc.big_idx, &type);
		} break;
		case BC_ADD:
		{
			encode_int_op(0x01, &bc, buffer, ir);
		} break;
		case BC_F_ADD:
		{
			F_OP(0x58);
		} break;
		case BC_SUB:
		{
			encode_int_op(0x29, &bc, buffer, ir);
		} break;
		case BC_F_SUB:
		{
			F_OP(0x5C);
		} break;
		case BC_I_MUL:
		{
			bc.left_idx = bc.right_idx;
			bc.right_idx = 5; // /5 instruction
			encode_int_op(0xf7, &bc, buffer, ir);
		} break;
		case BC_U_MUL:
		{
			bc.left_idx = bc.right_idx;
			bc.right_idx = 4; // /4 instruction
			encode_int_op(0xf7, &bc, buffer, ir);
		} break;
		case BC_F_MUL:
		{
			F_OP(0x59);
		} break;
		case BC_U_DIV:
		{
			bc.left_idx = bc.right_idx;
			bc.right_idx = 6; // /6 instruction
			encode_int_op(0xf7, &bc, buffer, ir);

		} break;
		case BC_I_DIV:
		{
			bc.left_idx = bc.right_idx;
			bc.right_idx = 7; // /7 instruction
			encode_int_op(0xf7, &bc, buffer, ir);
		} break;
		case BC_F_DIV:
		{
			F_OP(0x5E);
		} break;
		case BC_BIT_XOR:
		{
			encode_int_op(0x33, &bc, buffer, ir);
		} break;
		case BC_LOAD_STRING:
		{
			prefix64(buffer);
			push_byte(buffer, 0x8d);
			push_byte(buffer, encode_postfix(MOD_displacement_0, bc.result, 5));
			Relocation relocation = {};
			relocation.type = IMAGE_REL_AMD64_REL32;
			relocation.symbol_index = get_and_maybe_push_string((u8 *)bc.big_idx);
			relocation.offset = buffer->count;
			push_i32(buffer, 0);

			push_relocation(relocation, relocs, buffer_index);
		} break;
		case BC_OFFSET_POINTER:
		{
			bc.type = x64_type_64;
			encode_int_op(0x01, &bc, buffer, ir);
		} break;
		case BC_LOAD_ADDRESS:
		{
			Assert(bc.type->type == T_POINTER || bc.type->type == T_STRUCT || bc.type->type == T_INTEGER);
			prefix64(buffer);
			push_byte(buffer, 0x8d);
			Data_Segment seg = ir->allocated[bc.right_idx];
			i32 displacement = seg.position + seg.size;
			displacement = -displacement;
			MOD mod = MOD_displacement_i32;
			if(displacement > -129 && displacement < 128 )
				mod = MOD_displacement_i8;
			u8 postfix = encode_postfix(mod, bc.result, reg_bp);
			push_byte(buffer, postfix);
			push_displacement(mod, displacement, buffer);
		} break;
		case BC_STORE_REG:
		{
			MOD mod = MOD_displacement_0;
			prefix64(buffer);
			push_byte(buffer, 0x89); // MOV_RM_R
			// WHY ARE THEY THE OTHER WAY AROUND WHYYYY
			u8 postfix = encode_postfix(mod, bc.right_idx, bc.left_idx);
			push_byte(buffer, postfix);
		} break;
		case BC_DEREFRENCE:
		{
			MOD mod = MOD_displacement_0;
			prefix64(buffer);
			push_byte(buffer, 0x8b); // MOV_R_RM
			u8 postfix = encode_postfix(mod, bc.result, bc.left_idx);
			push_byte(buffer, postfix);
		} break;
		case BC_CALL:
		{
			push_byte(buffer, 0xFF);

			MOD mod = MOD_register;
			u8 postfix = encode_postfix(mod, 2, bc.left_idx);
			push_byte(buffer, postfix);
		} break;
		case BC_JUMP:
		{
			push_byte(buffer, 0xe9);
			Fixable fixable;
			fixable.buffer_index = buffer_index;
			fixable.type = FIX_JMP_TO_BLOCK;
			fixable.offset = buffer->count;
			fixable.block = (IR_Block *)bc.big_idx;
			fixable_array->fixables[fixable_array->count++] = fixable;
			push_i32(buffer, 0);
		} break;
		case BC_COND_JUMP:
		{
			push_compare_valuei8(buffer, &bc, (Register)bc.result, 0);
			set_2byte_opcode(buffer);
			push_byte(buffer, 0x85); // jne
			Fixable fixable;
			fixable.buffer_index = buffer_index;
			fixable.type = FIX_JMP_TO_BLOCK;
			fixable.offset = buffer->count;
			fixable.block = (IR_Block *)bc.big_idx;
			fixable_array->fixables[fixable_array->count++] = fixable;
			push_i32(buffer, 0);
		} break;
		case BC_CMP_LOGICAL_AND:
		{
			// compare left
			push_compare_valuei8(buffer, &bc, (Register)bc.left_idx, 0);
			push_byte(buffer, 0x75); // jne
			i32 true_insert = buffer->count;
			push_byte(buffer, 0); // insert zero and replace it later
			// jumps to the second condition if left_idx is not 0
			// otherwise it falls down to false

			// when result is false
			i32 false_position = buffer->count;
			move_value_to_register((Register)bc.result, 0, bool_type, buffer);
			// jump to the end
			push_byte(buffer, 0xEB); // jmp
			i32 insert_end_false = buffer->count; // jump to the end is put here after everything
			push_byte(buffer, 0);

			// when result is true
			i32 true_position = buffer->count;
			move_value_to_register((Register)bc.result, 1, bool_type, buffer);
			// jump to the end
			push_byte(buffer, 0xEB); // jmp
			i32 insert_end_true = buffer->count; // jump to the end is put here after everything
			push_byte(buffer, 0);

			buffer->buffer[true_insert] = calculate_jump_offset(true_insert, buffer->count);
			push_compare_valuei8(buffer, &bc, (Register)bc.right_idx, 0);
			push_byte(buffer, 0x75); // jne
			push_byte(buffer, calculate_jump_offset(buffer->count, true_position));
			push_byte(buffer, 0xEB); // jmp
			push_byte(buffer, calculate_jump_offset(buffer->count, false_position));

			// END
			buffer->buffer[insert_end_false] = calculate_jump_offset(insert_end_false, buffer->count - 1);
			buffer->buffer[insert_end_true]  = calculate_jump_offset(insert_end_true,  buffer->count - 1);
		} break;
		case BC_CMP_LOGICAL_OR:
		{
			// compare left
			push_compare_valuei8(buffer, &bc, (Register)bc.left_idx, 0);
			push_byte(buffer, 0x75); // jne
			i32 true_insert = buffer->count;
			push_byte(buffer, 0); // insert zero and replace it later
			// jumps to true if left_idx is not 0
			// otherwise it falls down to the second condition

			push_compare_valuei8(buffer, &bc, (Register)bc.right_idx, 0);
			push_byte(buffer, 0x75); // jne
			i32 true_insert_right = buffer->count;
			push_byte(buffer, 0);
			// same as above except it falls down to false

			// when result is false
			move_value_to_register((Register)bc.result, 0, bool_type, buffer);
			// jump to the end
			push_byte(buffer, 0xEB); // jmp
			i32 insert_end_false = buffer->count; // jump to the end is put here after everything
			push_byte(buffer, 0);

			// when result is true
			buffer->buffer[true_insert] = calculate_jump_offset(true_insert, buffer->count);
			buffer->buffer[true_insert_right] = calculate_jump_offset(true_insert, buffer->count);
			move_value_to_register((Register)bc.result, 1, bool_type, buffer);

			// END
			buffer->buffer[insert_end_false] = calculate_jump_offset(insert_end_false, buffer->count - 1);
		} break;
		case BC_CMP_I_EQ:
		{
			push_cmp_op(buffer, &bc, 0x94);
		} break;
		case BC_FCMP_EQ:
		{
			push_fcmp_op(buffer, &bc, 0x94);
		} break;
		case BC_CMP_I_NEQ:
		{
			push_cmp_op(buffer, &bc, 0x95);

		} break;
		case BC_FCMP_NEQ:
		{
			// @TODO: check parity flag
			push_fcmp_op(buffer, &bc, 0x95);
		} break;
		case BC_CMP_I_GREATER_EQ:
		{
			push_cmp_op(buffer, &bc, 0x9D); // set if >= (signed)
		} break;
		case BC_CMP_U_GREATER_EQ:
		{
			push_cmp_op(buffer, &bc, 0x93); // set if >= (unsigend)
		} break;
		case BC_FCMP_GREATER_EQ:
		{
			push_fcmp_op(buffer, &bc, 0x93);
		} break;
		case BC_CMP_I_GREATER_THAN:
		{
			push_cmp_op(buffer, &bc, 0x9F); // set if > (signed)
		} break;
		case BC_CMP_U_GREATER_THAN:
		{
			push_cmp_op(buffer, &bc, 0x97); // set if > (unsigned)
		} break;
		case BC_FCMP_GREATER_THAN:
		{
			push_fcmp_op(buffer, &bc, 0x97);
		} break;
		case BC_CMP_I_LESS_EQ:
		{
			push_cmp_op(buffer, &bc, 0x9E);
		} break;
		case BC_CMP_U_LESS_EQ:
		{
			push_cmp_op(buffer, &bc, 0x96);
		} break;
		case BC_FCMP_LESS_EQ:
		{
			push_fcmp_op(buffer, &bc, 0x96);
		} break;
		case BC_CMP_I_LESS_THAN:
		{
			push_cmp_op(buffer, &bc, 0x9C);
		} break;
		case BC_CMP_U_LESS_THAN:
		{
			push_cmp_op(buffer, &bc, 0x92);
		} break;
		case BC_FCMP_LESS_THAN:
		{
			push_fcmp_op(buffer, &bc, 0x92);
		} break;
		case BC_LOGICAL_NOT:
		{
			Assert(bc.type->type == T_BOOLEAN);

			push_compare_valuei8(buffer, &bc, (Register)bc.left_idx, 0);
			set_2byte_opcode(buffer);
			push_byte(buffer, 0x95); // set if !=
			push_byte(buffer, encode_postfix(MOD_register, 0, bc.result));
		} break;
		case BC_NEG:
		{
			Register operand = (Register)bc.left_idx;
			prefix_type(buffer, bc.type, fix_register(operand));
			u8 opcode;
			if(get_type_size(*bc.type) == 1)
				opcode = 0xF6;
			else
				opcode = 0xF7;
			bc.left_idx = operand;
			bc.right_idx = 3; // /3 instruction
			encode_int_op(opcode, &bc, buffer, ir);
		} break;
		case BC_FNEG:
		{
			// @NOTE: atm we do float negation by multiplying by 1
			// since there are neither negation neither xor instruction for scalars
			// this the only way to do it without touching other registers which would complicate things
			// so we don't do it
			Register reg = (Register)bc.left_idx;
			prefix_float_op(buffer, bc.type);
			u8 prefix = float_fix_register(reg);
			reg = get_float_register_encoding(reg);
			if(prefix != 0)
				push_byte(buffer, prefix);
			push_byte(buffer, 0x0F);
			push_byte(buffer, 0x59);
			push_byte(buffer, encode_postfix(MOD_displacement_0, reg, 0b101));

			Relocation relocation = {};
			relocation.type = IMAGE_REL_AMD64_REL32;
			if(bc.type->primitive.size == real64)
			{
				double the_val = -1.0;
				relocation.symbol_index = push_float(*(u64 *)&the_val, bc.type->primitive.size);
			}
			else
			{
				float the_val = -1.0;
				relocation.symbol_index = push_float(*(u32 *)&the_val, bc.type->primitive.size);
			}
			relocation.offset = buffer->count;
			push_relocation(relocation, relocs, buffer_index);
			push_i32(buffer, 0);
		} break;
		// In the right register
		// we store the offset between
		// to type and from type
		// because we can't store a whole
		// pointer in it and we don't have
		// anywhere else to put it
		// the type field holds the destination type
		// right = src_ty - dst_ty
		// right + dst_ty = src_ty
		case BC_CAST_ZEXT:
		{
			Type_Info *src_type = (Type_Info *)((u8 *)bc.type + bc.right_idx);
			Type_Info *dst_type = bc.type;
			Register left = (Register)bc.left_idx;
			Register result = (Register)bc.result;
			move_reg_to_reg(buffer, left, left, src_type);
			move_reg_to_reg(buffer, result, left, dst_type);
		} break;
		case BC_CAST_SEXT:
		{
			Type_Info *src_type = (Type_Info *)((u8 *)bc.type + bc.right_idx);
			Type_Info *dst_type = bc.type;
			Register left = (Register)bc.left_idx;
			Register result = (Register)bc.result;
			auto src_size = get_type_size(*src_type);
			prefix_type(buffer, dst_type, fix_registers(left, result));
			if(src_size == 1 || src_size == 2)
			{
				set_2byte_opcode(buffer);
				push_byte(buffer, 0xBE);
			}
			else
			{
				push_byte(buffer, 0x63);
			}
			push_byte(buffer, encode_postfix(MOD_register, result, left));
		} break;
		case BC_CAST_TRUNC:
		{
			Register left = (Register)bc.left_idx;
			Register result = (Register)bc.result;
			move_reg_to_reg(buffer, result, left, bc.type);
		} break;
		case BC_CAST_D_TO_I:
		case BC_CAST_F_TO_I:
		{
			Register left = (Register)bc.left_idx;
			Register right = (Register)bc.result;
			// @NOTE: we assume it's not using anything above xmm7
			Assert(left  < reg_xmm8);
			Assert(right < reg_xmm8);
			left  = get_float_register_encoding(left);
			right = get_float_register_encoding(right);

			auto result_size = get_type_size(*bc.type);
			Type_Info *src_type = (Type_Info *)((u8 *)bc.type + bc.right_idx);
			if(is_signed(*bc.type) || result_size < 8)
			{
				// convert to signed (we don't need unsigned specific stuff)
				prefix_float_op(buffer, src_type);
				set_2byte_opcode(buffer);
				push_byte(buffer, 0x2C);
				push_byte(buffer, encode_postfix(MOD_register, right, left));
			}
			else
			{
				// compare the float to some value to see
				// if we can just use the convert to signed function
				set_2byte_opcode(buffer);
				push_byte(buffer, 0x2F);
				push_byte(buffer, encode_postfix(MOD_displacement_0, left, 0b101));

				// Relocate magic number here for comparison
				Relocation relocation = {};
				relocation.type = IMAGE_REL_AMD64_REL32;
				if(bc.op == BC_CAST_F_TO_I)
					relocation.symbol_index = push_float(0x5F000000, real32);
				else
					relocation.symbol_index = push_float(0x43e0000000000000, real64);
				relocation.offset = buffer->count;
				push_relocation(relocation, relocs, buffer_index);
				push_i32(buffer, 0);

				// jump if not bellow
				push_byte(buffer, 0x73);
				i32 insert_complicated_version = buffer->count;
				push_byte(buffer, 0);

				// convert to signed (we don't need unsigned specific stuff)
				prefix_float_op(buffer, src_type);
				set_2byte_opcode(buffer);
				push_byte(buffer, 0x2C);
				push_byte(buffer, encode_postfix(MOD_register, right, left));
				push_byte(buffer, 0xEB);
				i32 insert_end = buffer->count;
				push_byte(buffer, 0);

				buffer->buffer[insert_complicated_version] = calculate_jump_offset(insert_complicated_version, buffer->count);
				// Otherwise we subtract the magic number
				prefix_float_op(buffer, src_type);
				set_2byte_opcode(buffer);
				push_byte(buffer, 0x5C);
				encode_postfix(MOD_displacement_0, left, 0b101);
				// Different relocation but has the same params
				// so we reuse the variable
				relocation.offset = buffer->count;
				push_relocation(relocation, relocs, buffer_index);
				push_i32(buffer, 0);
				// convert to signed
				prefix_float_op(buffer, src_type);
				set_2byte_opcode(buffer);
				push_byte(buffer, 0x2C);
				push_byte(buffer, encode_postfix(MOD_register, right, left));

				// Flip the signed bit with XOR
				prefix_type(buffer, bc.type, fix_register(right));
				push_byte(buffer, 0x33);
				push_byte(buffer, encode_postfix(MOD_displacement_0, right, 0b101));
				Relocation int_bit_flip_reloc = {};
				int_bit_flip_reloc.type = IMAGE_REL_AMD64_REL32;
				int_bit_flip_reloc.symbol_index = push_int(0x8000000000000000, byte8);
				int_bit_flip_reloc.offset = buffer->count;
				push_relocation(int_bit_flip_reloc, relocs, buffer_index);
				push_i32(buffer, 0);

				buffer->buffer[insert_end] = calculate_jump_offset(insert_end, buffer->count);
			}
		} break;
		case BC_CAST_F_TRUNC:
		{
			Register src = (Register)bc.left_idx;
			Register dst = (Register)bc.result;
			Register dst_copy = dst;
			// clear the destination
			push_byte(buffer, 0x66);
			u8 prefix = float_fix_register(dst);
			if(prefix != 0)
				push_byte(buffer, prefix);
			dst = get_float_register_encoding(dst);
			set_2byte_opcode(buffer);
			// XOR
			push_byte(buffer, 0xEF);
			push_byte(buffer, encode_postfix(MOD_register, dst, dst));
			// convert
			push_byte(buffer, 0xF2);
			prefix = float_fix_registers(dst_copy, src);
			if(prefix != 0)
				push_byte(buffer, prefix);
			src = get_float_register_encoding(src);
			set_2byte_opcode(buffer);
			push_byte(buffer, 0x5A);
			push_byte(buffer, encode_postfix(MOD_register, dst, src));
		} break;
		case BC_CAST_F_EXT:
		{
			// Same as f trunc except for the convert prefix
			// is this bad?
			Register src = (Register)bc.left_idx;
			Register dst = (Register)bc.result;
			Register dst_copy = dst;
			// clear the destination
			push_byte(buffer, 0x66);
			u8 prefix = float_fix_register(dst);
			if(prefix != 0)
				push_byte(buffer, prefix);
			dst = get_float_register_encoding(dst);
			set_2byte_opcode(buffer);
			// XOR
			push_byte(buffer, 0xEF);
			push_byte(buffer, encode_postfix(MOD_register, dst, dst));
			// convert
			push_byte(buffer, 0xF3);
			prefix = float_fix_registers(dst_copy, src);
			if(prefix != 0)
				push_byte(buffer, prefix);
			src = get_float_register_encoding(src);
			set_2byte_opcode(buffer);
			push_byte(buffer, 0x5A);
			push_byte(buffer, encode_postfix(MOD_register, dst, src));
		} break;
		case BC_NO_OP:
		{}break;
		default:
		{
			Assert(false);
		} break;
	}
}

