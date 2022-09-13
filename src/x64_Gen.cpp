#include "llvm/IR/Intrinsics.h"
#include <x64_Gen.h>
#include <platform/platform.h>


void
x64_generate_code(IR *ir)
{
	u8 *buffer = SDCreate(u8);
	size_t count = SDCount(ir);
	for(size_t i = 0; i < count; ++i)
	{
		x64_gen_ir(&ir[i], &buffer);
	}
	i32 (*exe)(void) = (i32(*)())platform_allocate_executable_memory(SDCount(buffer));
	memcpy((void *)exe, buffer, SDCount(buffer));
	i32 result = exe();
	LG_DEBUG("result: %d", result);

}

void
x64_gen_ir(IR *ir, u8 **buffer)
{
	size_t bytecode_count = SDCount(ir->bc);
	for(size_t i = 0; i < bytecode_count; ++i)
	{
		x64_gen_from_bytecode(ir, ir->bc[i], buffer);
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
push_generic_mov(MOD mod, u8 mov_opcode, Register left_rm, Register right_rm, i32 displacement, u8 **buffer)
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

u8
get_rm_r_mov_and_prefix(u8 **buffer, Type_Info *type)
{
	u8 mov_opcode;
	size_t size = get_type_size(*type);
	if(type->type == T_INTEGER)
	{
		switch(size)
		{
			case 1:
			{
				mov_opcode = 0x88;
			} break;
			case 2:
			{
				// @NOTE: no idea
				push_byte(buffer, 0x66);
				mov_opcode = 0x89;
			} break;
			case 4:
			{
				mov_opcode = 0x89;
			} break;
			case 8:
			{
				prefix64(buffer);
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
get_r_i_mov_and_prefix(u8 **buffer, Type_Info *type)
{
	u8 mov_opcode;
	size_t size = get_type_size(*type);
	if(type->type == T_INTEGER)
	{
		switch(size)
		{
			case 1:
			{
				mov_opcode = 0xb4;
			} break;
			case 2:
			{
				// @NOTE: no idea
				push_byte(buffer, 0x66);
				mov_opcode = 0xb8;
			} break;
			case 4:
			{
				mov_opcode = 0xb8;
			} break;
			case 8:
			{
				prefix64(buffer);
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
get_r_rm_mov_and_prefix(u8 **buffer, Type_Info *type)
{
	u8 mov_opcode;
	size_t size = get_type_size(*type);
	if(type->type == T_INTEGER)
	{
		switch(size)
		{
			case 1:
			{
				mov_opcode = 0x8a;
			} break;
			case 2:
			{
				// @NOTE: no idea
				push_byte(buffer, 0x66);
				mov_opcode = 0x8b;
			} break;
			case 4:
			{
				mov_opcode = 0x8b;
			} break;
			case 8:
			{
				prefix64(buffer);
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
x64_gen_from_bytecode(IR *ir, Bytecode bc, u8 **buffer)
{
	switch(bc.op)
	{
		case BC_MOVE_VALUE_TO_MEMORY:
		{
			Data_Segment seg = ir->allocated[bc.left_idx].value;
			i32 displacement = seg.position + seg.size;
			displacement = -displacement;
			MOD mod = MOD_displacement_i32;
			if(displacement > -129 && displacement < 128 )
				mod = MOD_displacement_i8;
			u8 mov_opcode = get_rm_r_mov_and_prefix(buffer, bc.type);
			push_generic_mov(mod, mov_opcode, reg_bp, ir->registers[bc.right_idx].reg, displacement, buffer);
		} break;
		case BC_MOVE_FLOAT_TO_REG:
		case BC_MOVE_VALUE_TO_REG:
		{
			u8 mov_opcode = get_r_i_mov_and_prefix(buffer, bc.type);
			push_byte(buffer, mov_opcode);
			push_any(buffer, &bc.big_idx, bc.type);
			ir->registers[bc.opt].reg = reg_a;
		} break;
		case BC_LOAD_DATA_SEG:
		case BC_LOAD_STACK:
		{
			if(ir->registers[bc.left_idx].reg == reg_invalid)
			{
				ir->registers[bc.left_idx].reg = reg_a;
			}

			Data_Segment seg;
			if(bc.op == BC_LOAD_DATA_SEG)
				seg = ir->global_allocated_ref[bc.right_idx].value;
			else
				seg = ir->allocated[bc.right_idx].value;
			i32 displacement = seg.position + seg.size;
			displacement = -displacement;
			MOD mod = MOD_displacement_i32;
			if( displacement > -129 && displacement < 128 )
				mod = MOD_displacement_i8;
			u8 mov_opcode = get_r_rm_mov_and_prefix(buffer, bc.type);
			push_generic_mov(mod, mov_opcode, reg_bp, ir->registers[bc.left_idx].reg, displacement, buffer);
		} break;
		case BC_MOVE_REG_TO_REG:
		{
			if(ir->registers[bc.left_idx].reg == ir->registers[bc.right_idx].reg)
				break;
			MOD mod = MOD_register;
			u8 mov_opcode = get_r_rm_mov_and_prefix(buffer, bc.type);
			push_generic_mov(mod, mov_opcode, ir->registers[bc.left_idx].reg, ir->registers[bc.right_idx].reg, 0, buffer);
		} break;
		case BC_PUSH_REG:
		{
			push_byte(buffer, 0x50 + ir->registers[bc.left_idx].reg);
		} break;
		case BC_POP_REG:
		{
			push_byte(buffer, 0x58 + ir->registers[bc.left_idx].reg);
		} break;
		case BC_RETURN:
		{
			MOD mod = MOD_register;
			Register ret_register = ir->registers[bc.left_idx].reg;
			u8 mov_opcode = get_r_rm_mov_and_prefix(buffer, bc.type);
			push_generic_mov(mod, mov_opcode, ret_register, reg_a, 0, buffer);
			push_byte(buffer, 0xc3);
		} break;
		case BC_ADD:
		{

		} break;
		default:
		{
			Assert(false);
		} break;
	}
}

