
#ifndef _X64_GEN_H
#define _X64_GEN_H
#include <Bytecode.h>
#include <ObjDumper.h>

typedef struct _Code_Buffer {
	u8 *buffer;
	unsigned int count;
} Code_Buffer;

struct Relative_Relocation {
	Relocation actual_relocation;
	int buffer_index;
};

struct Relative_Relocation_Array {
	Relative_Relocation *relocs;
	unsigned int count;
};

enum Fixable_Type {
	FIX_JMP_TO_BLOCK,
};

struct Fixable {
	Fixable_Type type;
	unsigned int buffer_index;
	unsigned int offset;
	IR_Block *block;
};

struct Fixable_Array {
	Fixable *fixables;
	unsigned int count;
};

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
Code_Buffer
x64_generate_code(File_Contents **files, IR **ir, Relocation **out_relocations, u32 *out_relocation_count);

void
x64_gen_ir(IR *ir, Code_Buffer *buffer, Relative_Relocation_Array *relocs, Data_Segment *global_ds, int buffer_idx, Fixable_Array *fixables);

void
x64_gen_from_bytecode(IR *ir, Bytecode bc, Code_Buffer *buffer, Relative_Relocation_Array *relocs, Data_Segment *global_ds, int buffer_index, Fixable_Array *fixables);

#endif

