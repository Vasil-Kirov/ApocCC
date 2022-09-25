#include <x64_Gen.h>
#include <platform/platform.h>
#include <Type.h>

struct Fix_Addresses
{
	u64 to_fill;
	IR_Block *block;
};

//const int IMAGE_REL_AMD64_ADDR64 = 0x0001;
const int IMAGE_REL_AMD64_REL32  = 0x0004;

static u8 *buffer_start;
static Type_Info *x64_type_64;
static Type_Info *bool_type;
static Type_Info *x64_str_type;
static Fix_Addresses *to_fix;
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
	SDPush(obj_symbols, to_push);
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

u8 *
x64_generate_code(File_Contents *f, IR *ir, Relocation **relocations)
{
	obj_symbols = SDCreate(Symbol_Descriptor);
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

	to_fix = SDCreate(Fix_Addresses);
	Relocation *relocs = SDCreate(Relocation);
	u8 *buffer = SDCreate(u8);
	buffer_start = buffer;
	size_t count = SDCount(ir);
	for(size_t i = 0; i < count; ++i)
	{
		if(i != 0)
		{
			Symbol_Descriptor func_sym = {};
			func_sym.name = f->functions[i - 1]->identifier;
			func_sym.value = SDCount(buffer);
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
		}
		x64_gen_ir(&ir[i], &buffer, &relocs, ir[0].allocated);
	}
	*relocations = relocs;

	size_t fix_count = SDCount(to_fix);
	for(size_t i = 0; i < fix_count; ++i)
	{
		*(i32 *)(&buffer[to_fix[i].to_fill]) = calculate_jump_offset(to_fix[i].to_fill + 4, to_fix[i].block->start_address) + 1;
	}
	return buffer;
}

void
x64_gen_ir(IR *ir, u8 **buffer, Relocation **relocs, Data_Segment *global_ds)
{
	if(!ir->blocks)
		return;
	size_t block_count = SDCount(ir->blocks);
	for(size_t block_idx = 0; block_idx < block_count; ++block_idx)
	{
		auto block = ir->blocks[block_idx];
		block->start_address = SDCount(*buffer);
		for(size_t bytecode_idx = 0; bytecode_idx < block->bc_count; ++bytecode_idx)
		{
			x64_gen_from_bytecode(ir, block->bc[bytecode_idx], buffer, SDCount(*buffer), relocs, global_ds);
		}
	}
}

inline void
push_i8(u8 **buffer, i8 byte)
{
	SDPush(*buffer, byte);
}

inline void
push_byte(u8 **buffer, u8 byte)
{
	SDPush(*buffer, byte);
}

inline void
push_i32(u8 **buffer, i32 bytes)
{
	i8 *bytes_ptr = (i8 *)&bytes;
	for(size_t i = 0; i < 4; ++i)
		push_byte(buffer, bytes_ptr[i]);
}

void
push_any(u8 **buffer, void *any, Type_Info *type)
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
prefix64(u8 **buffer)
{
	push_byte(buffer, 0x48);
}

u8
encode_postfix(MOD mod, u8 rm1, u8 rm2)
{
	return (mod << 6) | (rm1 << 3) | rm2;
}

void
push_displacement(MOD mod, i32 displacement, u8 **buffer)
{
	if(mod & MOD_displacement_i8)
		push_i8(buffer, displacement);
	else
		push_i32(buffer, displacement);
}

inline void
push_generic_mov(MOD mod, u8 mov_opcode, i32 left_rm, i32 right_rm, i32 displacement, u8 **buffer)
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
get_rm_r_mov(u8 **buffer, Type_Info *type)
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
prefix_type(u8 **buffer, Type_Info *type, u8 current_prefix)
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
get_r_i_mov(u8 **buffer, Type_Info *type)
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
get_r_rm_mov(u8 **buffer, Type_Info *type)
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
push_compare_valuei8(u8 **buffer, Bytecode *bc, Register reg, u8 value)
{
	push_byte(buffer, 0x80);
	u8 postfix = encode_postfix(MOD_register, 7, reg);
	push_byte(buffer, postfix);
	push_byte(buffer, value);
}

void
push_compare(u8 **buffer, Bytecode *bc, Register left, Register right)
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
encode_int_op(u8 opcode, Bytecode *bc, u8 **buffer, IR *ir)
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
prefix_float_op(u8 **buffer, Type_Info *type)
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
move_float_to_register(u8 **buffer, Register reg, u64 value, Type_Info *type, Relocation **relocs)
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
	relocation.offset = SDCount(*buffer);
	SDPush(*relocs, relocation);
	push_i32(buffer, 0);
}

void 
move_value_to_register(Register reg, u64 value, Type_Info *type, u8 **buffer)
{
	prefix_type(buffer, type, fix_register(reg));
	u8 mov_opcode = get_r_i_mov(buffer, type);
	mov_opcode |= reg & 0b111;
	push_byte(buffer, mov_opcode);
	push_any(buffer, &value, type);
}

inline void
set_2byte_opcode(u8 **buffer)
{
	push_byte(buffer, 0x0F);
}

void
push_cmp_op(u8 **buffer, Bytecode *bc, u8 op)
{
	push_compare(buffer, bc, (Register)bc->left_idx, (Register)bc->right_idx);
	set_2byte_opcode(buffer);
	push_byte(buffer, op);
	push_byte(buffer, encode_postfix(MOD_register, 0, bc->result));
}

void
push_fcmp(u8 **buffer, Bytecode *bc, Register left, Register right)
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
push_fcmp_op(u8 **buffer, Bytecode *bc, u8 op)
{
	push_fcmp(buffer, bc, (Register)bc->left_idx, (Register)bc->right_idx);
	set_2byte_opcode(buffer);
	push_byte(buffer, op);
	push_byte(buffer, encode_postfix(MOD_register, 0, bc->result));
}

void
store_float(u8 **buffer, Bytecode *bc, i32 displacement, MOD mod, Register reg)
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
float_move_reg_to_reg(u8 **buffer, Register left, Register right, Type_Info *type)
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
encode_float_op(u8 **buffer, Register left, Register right, Type_Info *type, u8 opcode)
{
	prefix_float_op(buffer, type);
	u8 prefix = float_fix_registers(left, right);
	if(prefix != 0)
		push_byte(buffer, prefix);
	push_byte(buffer, 0x0F);
	push_byte(buffer, opcode);
	push_byte(buffer, encode_postfix(MOD_register, left, right));
}


#define F_OP(OPCODE) encode_float_op(buffer, (Register)bc.left_idx, (Register)bc.right_idx, bc.type, OPCODE);

void
x64_gen_from_bytecode(IR *ir, Bytecode bc, u8 **buffer, i32 offset, Relocation **relocs, Data_Segment *global_ds)
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
			move_float_to_register(buffer, (Register)bc.result, bc.big_idx, bc.type, relocs);
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
			relocation.offset = SDCount(*buffer);
			push_i32(buffer, 0);

			SDPush(*relocs, relocation);
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
				MOD mod = MOD_register;

				Register left = (Register)bc.left_idx;
				Register right = (Register)bc.right_idx;
				prefix_type(buffer, bc.type, fix_registers(left, right));

				u8 mov_opcode = get_r_rm_mov(buffer, bc.type);
				push_generic_mov(mod, mov_opcode, left, right, 0, buffer);
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
			relocation.offset = SDCount(*buffer);
			push_i32(buffer, 0);

			SDPush(*relocs, relocation);
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
			Fix_Addresses fix_task = {SDCount(*buffer), (IR_Block *)bc.big_idx}; 
			push_i32(buffer, 0);
			SDPush(to_fix, fix_task);
		} break;
		case BC_COND_JUMP:
		{
			push_compare_valuei8(buffer, &bc, (Register)bc.result, 0);
			set_2byte_opcode(buffer);
			push_byte(buffer, 0x85); // jne
			Fix_Addresses fix_task = {SDCount(*buffer), (IR_Block *)bc.big_idx}; 
			push_i32(buffer, 0);
			SDPush(to_fix, fix_task);
		} break;
		case BC_CMP_LOGICAL_AND:
		{
			// compare left
			push_compare_valuei8(buffer, &bc, (Register)bc.left_idx, 0);
			push_byte(buffer, 0x75); // jne
			i32 true_insert = SDCount(*buffer);
			push_byte(buffer, 0); // insert zero and replace it later
			// jumps to the second condition if left_idx is not 0
			// otherwise it falls down to false

			// when result is false
			i32 false_position = SDCount(*buffer);
			move_value_to_register((Register)bc.result, 0, bool_type, buffer);
			// jump to the end
			push_byte(buffer, 0xEB); // jmp
			i32 insert_end_false = SDCount(*buffer); // jump to the end is put here after everything
			push_byte(buffer, 0);

			// when result is true
			i32 true_position = SDCount(*buffer);
			move_value_to_register((Register)bc.result, 1, bool_type, buffer);
			// jump to the end
			push_byte(buffer, 0xEB); // jmp
			i32 insert_end_true = SDCount(*buffer); // jump to the end is put here after everything
			push_byte(buffer, 0);

			(*buffer)[true_insert] = calculate_jump_offset(true_insert, SDCount(buffer));
			push_compare_valuei8(buffer, &bc, (Register)bc.right_idx, 0);
			push_byte(buffer, 0x75); // jne
			push_byte(buffer, calculate_jump_offset(SDCount(buffer), true_position));
			push_byte(buffer, 0xEB); // jmp
			push_byte(buffer, calculate_jump_offset(SDCount(buffer), false_position));

			// END
			(*buffer)[insert_end_false] = calculate_jump_offset(insert_end_false, SDCount(*buffer) - 1);
			(*buffer)[insert_end_true]  = calculate_jump_offset(insert_end_true,  SDCount(*buffer) - 1);
		} break;
		case BC_CMP_LOGICAL_OR:
		{
			// compare left
			push_compare_valuei8(buffer, &bc, (Register)bc.left_idx, 0);
			push_byte(buffer, 0x75); // jne
			i32 true_insert = SDCount(*buffer);
			push_byte(buffer, 0); // insert zero and replace it later
			// jumps to true if left_idx is not 0
			// otherwise it falls down to the second condition

			push_compare_valuei8(buffer, &bc, (Register)bc.right_idx, 0);
			push_byte(buffer, 0x75); // jne
			i32 true_insert_right = SDCount(*buffer);
			push_byte(buffer, 0);
			// same as above except it falls down to false

			// when result is false
			move_value_to_register((Register)bc.result, 0, bool_type, buffer);
			// jump to the end
			push_byte(buffer, 0xEB); // jmp
			i32 insert_end_false = SDCount(*buffer); // jump to the end is put here after everything
			push_byte(buffer, 0);

			// when result is true
			(*buffer)[true_insert] = calculate_jump_offset(true_insert, SDCount(buffer));
			(*buffer)[true_insert_right] = calculate_jump_offset(true_insert, SDCount(buffer));
			move_value_to_register((Register)bc.result, 1, bool_type, buffer);

			// END
			(*buffer)[insert_end_false] = calculate_jump_offset(insert_end_false, SDCount(*buffer) - 1);
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
			relocation.offset = SDCount(*buffer);
			SDPush(*relocs, relocation);
			push_i32(buffer, 0);
		} break;

		case BC_NO_OP:
		{}break;
		default:
		{
			Assert(false);
		} break;
	}
}

