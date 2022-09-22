
#ifndef _X64_GEN_H
#define _X64_GEN_H
#include <Bytecode.h>
#include <ObjDumper.h>

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

#if 0 
enum CMP_OP {
	LOGICAL_AND,
	LOGICAL_OR,
	LOGICAL_NOT,
	LOGICAL_EQUALS,
	LOGICAL_NEQUALS,
	LOGICAL_GREATER,
	LOGICAL_LESS,
	LOGICAL_GREATEREQ,
	LOGICAL_LESSEQ,
}
#endif

// @NOTE: primary function
u8 *
x64_generate_code(File_Contents *f, IR *ir, Relocation **out_relocations);

void
x64_gen_ir(IR *ir, u8 **buffer, Relocation **relocs, Data_Segment *global_ds);

void
x64_gen_from_bytecode(IR *ir, Bytecode bc, u8 **buffer, i32 offset, Relocation **relocs, Data_Segment *global_ds);

#endif

