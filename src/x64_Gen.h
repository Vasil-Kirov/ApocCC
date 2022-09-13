
#ifndef _X64_GEN_H
#define _X64_GEN_H
#include <Bytecode.h>

enum MOD {
	MOD_displacement_0   = 0b00,
	MOD_displacement_i8  = 0b01,
	MOD_displacement_i32 = 0b10,
	MOD_register         = 0b11,
};

enum REX {
	REX_none = 0b1000000,
	REX_W    = 0b1001000,
	REX_R    = 0b1000100,
	REX_X    = 0b1000010,
	REX_B    = 0b1000001,
};

// @NOTE: primary function
void
x64_generate_code(IR *ir);

void
x64_gen_ir(IR *ir, u8 **buffer);

void
x64_gen_from_bytecode(IR *ir, Bytecode bc, u8 **buffer);

#endif

