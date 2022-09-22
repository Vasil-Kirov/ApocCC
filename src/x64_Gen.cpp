#include <x64_Gen.h>
#include <platform/platform.h>

struct Fix_Addresses
{
	u64 to_fill;
	IR_Block *block;
};

static u8 *buffer_start;
static Type_Info *x64_type_64;
static Type_Info *bool_type;
static Fix_Addresses *to_fix;

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

u8 *
x64_generate_code(File_Contents *f, IR *ir, Relocation **relocations)
{
	x64_type_64 = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	x64_type_64->type = T_INTEGER;
	x64_type_64->primitive.size = byte8;
	x64_type_64->identifier = (u8 *)"i64";

	bool_type = (Type_Info *)AllocateCompileMemory(sizeof(Type_Info));
	bool_type->type = T_BOOLEAN;
	bool_type->primitive.size = byte1;
	bool_type->identifier = (u8 *)"bool";

	to_fix = SDCreate(Fix_Addresses);
	Relocation *relocs = SDCreate(Relocation);
	u8 *buffer = SDCreate(u8);
	buffer_start = buffer;
	size_t count = SDCount(ir);
	for(size_t i = 0; i < count; ++i)
	{
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		// @FIXIT HACK
		if(i != 0)
			f->functions[i - 1]->s_member.index = SDCount(buffer);
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
	if(type->type == T_POINTER)
	{
		type->primitive.size = byte8;
		return true;
	}
	if(type->type == T_BOOLEAN)
	{
		type->primitive.size = byte1;
		return true;
	}
	if(type->type == T_INTEGER || type->type == T_UNTYPED_INTEGER)
		return true;
	return false;
}

u8
get_rm_r_mov_and_prefix(u8 **buffer, Type_Info *type)
{
	u8 mov_opcode;
	size_t size = get_type_size(*type);
	if(is_standard_type(type))
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

void
prefix_type(u8 **buffer, Type_Info *type)
{
	size_t size = get_type_size(*type);
	if(is_standard_type(type))
	{
		switch(size)
		{
			case 1:
			{
			} break;
			case 2:
			{
				// @NOTE: no idea
				push_byte(buffer, 0x66);
			} break;
			case 4:
			{
			} break;
			case 8:
			{
				prefix64(buffer);
			} break;
			default: Assert(false);
		}
	}
	else
	{
		Assert(false);
		Assert(type->type == T_FLOAT);
	}
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
	if(is_standard_type(type))
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
	prefix_type(buffer, bc->type);
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
	if(bc->type->primitive.size == ubyte8 || bc->type->primitive.size == byte8)
		prefix64(buffer);
	push_byte(buffer, opcode);
	u8 postfix = encode_postfix(MOD_register, bc->right_idx, bc->left_idx);
	push_byte(buffer, postfix);
}

void 
move_value_to_register(Register reg, u64 value, Type_Info *type, u8 **buffer)
{
	u8 mov_opcode = get_r_i_mov_and_prefix(buffer, type);
	mov_opcode |= reg & 0b111;
	push_byte(buffer, mov_opcode);
	push_any(buffer, &value, type);
}

void
x64_gen_from_bytecode(IR *ir, Bytecode bc, u8 **buffer, i32 offset, Relocation **relocs, Data_Segment *global_ds)
{
	switch(bc.op)
	{
		case BC_STORE:
		{
			Data_Segment seg = ir->allocated[bc.left_idx];
			i32 displacement = seg.position + seg.size;
			displacement = -displacement;
			MOD mod = MOD_displacement_i32;
			if(displacement > -129 && displacement < 128 )
				mod = MOD_displacement_i8;
			u8 mov_opcode = get_rm_r_mov_and_prefix(buffer, bc.type);
			push_generic_mov(mod, mov_opcode, reg_bp, bc.right_idx, displacement, buffer);
		} break;
		case BC_MOVE_FLOAT_TO_REG:
		case BC_MOVE_VALUE_TO_REG:
		{
			move_value_to_register((Register)bc.result, bc.big_idx, bc.type, buffer);
		} break;
		case BC_MOVE_FUNCTION_TO_REG:
		{
			u8 mov_opcode = get_r_i_mov_and_prefix(buffer, x64_type_64);
			mov_opcode |= bc.result & 0b111;
			push_byte(buffer, mov_opcode);

			Relocation relocation = {};
			relocation.symbol_index = bc.right_idx;
			relocation.type = 0x4;
			relocation.offset = SDCount(*buffer);
			SDPush(*relocs, relocation);
			u64 zero = 0;
			push_any(buffer, &zero, x64_type_64);
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
			u8 mov_opcode = get_r_rm_mov_and_prefix(buffer, bc.type);
			push_generic_mov(mod, mov_opcode, reg_bp, bc.result, displacement, buffer);
		} break;
		case BC_MOVE_REG_TO_REG:
		{
			if(bc.left_idx == bc.right_idx)
				break;
			MOD mod = MOD_register;
			u8 mov_opcode = get_r_rm_mov_and_prefix(buffer, bc.type);
			push_generic_mov(mod, mov_opcode, bc.left_idx, bc.right_idx, 0, buffer);
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
			MOD mod = MOD_register;
			i32 ret_register = bc.left_idx;
			if(ret_register != reg_a)
			{
				u8 mov_opcode = get_r_rm_mov_and_prefix(buffer, bc.type);
				push_generic_mov(mod, mov_opcode, reg_a, ret_register, 0, buffer);
			}
			// POP rbp
			push_byte(buffer, 0x58 + reg_bp);
			push_byte(buffer, 0xc3);
		} break;
		case BC_ADD:
		{
			encode_int_op(0x01, &bc, buffer, ir);
		} break;
		case BC_SUB:
		{
			encode_int_op(0x29, &bc, buffer, ir);
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
		case BC_BIT_XOR:
		{
			encode_int_op(0x33, &bc, buffer, ir);
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
		case BC_DEREFRENCE:
		{
			MOD mod = MOD_displacement_0;
			prefix64(buffer);
			push_byte(buffer, 0x8b); // MOV_RM_R
			u8 postfix = encode_postfix(mod, bc.left_idx, bc.result);
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
			push_byte(buffer, 0x0F); // x64
			push_byte(buffer, 0x85); // jne
			Fix_Addresses fix_task = {SDCount(*buffer), (IR_Block *)bc.big_idx}; 
			push_i32(buffer, 0);
			SDPush(to_fix, fix_task);
		} break;
		case BC_CMP_I_EQ:
		{
			push_compare(buffer, &bc, (Register)bc.left_idx, (Register)bc.right_idx);
			push_byte(buffer, 0x75); // jne
			i32 false_insert = SDCount(*buffer);
			push_byte(buffer, 0); // insert zero and replace it later

			move_value_to_register((Register)bc.result, 1, bc.type, buffer);
			push_byte(buffer, 0xEB); // jmp
			i32 insert_end_true = SDCount(*buffer); // jump to the end is put here after everything
			push_byte(buffer, 0);

			(*buffer)[false_insert] = calculate_jump_offset(false_insert, SDCount(*buffer));
			move_value_to_register((Register)bc.result, 0, bc.type, buffer);

			(*buffer)[insert_end_true]  = calculate_jump_offset(insert_end_true, SDCount(*buffer));

		} break;
		case BC_CMP_I_NEQ:
		{
			push_compare(buffer, &bc, (Register)bc.left_idx, (Register)bc.right_idx);
			push_byte(buffer, 0x74); // je
			i32 false_insert = SDCount(*buffer);
			push_byte(buffer, 0); // insert zero and replace it later

			move_value_to_register((Register)bc.result, 1, bc.type, buffer);
			push_byte(buffer, 0xEB); // jmp
			i32 insert_end_true = SDCount(*buffer); // jump to the end is put here after everything
			push_byte(buffer, 0);

			(*buffer)[false_insert] = calculate_jump_offset(false_insert, SDCount(*buffer));
			move_value_to_register((Register)bc.result, 0, bc.type, buffer);

			(*buffer)[insert_end_true]  = calculate_jump_offset(insert_end_true, SDCount(*buffer));

		} break;
		case BC_CMP_LOGICAL_AND:
		{
			// compare left
			push_compare_valuei8(buffer, &bc, (Register)bc.left_idx, 0);
			push_byte(buffer, 0x75); // jne
			i32 true_insert = SDCount(*buffer);
			push_byte(buffer, 0); // insert zero and replace it later
			// jumps to true if left_idx is not 0
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

			(*buffer)[insert_end_false] = calculate_jump_offset(insert_end_false, SDCount(*buffer) - 1);
			(*buffer)[insert_end_true]  = calculate_jump_offset(insert_end_true,  SDCount(*buffer) - 1);

		} break;
		case BC_NO_OP:
		{}break;
		default:
		{
			Assert(false);
		} break;
	}
}

