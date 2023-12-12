/* date = January 17th 2022 2:57 pm */

#ifndef _MEMORY_H
#define _MEMORY_H
#include <Basic.h>

enum AllocIndex
{
	PERM_INDEX = 0,
	COMP_INDEX = 1,
	INTERP_INDEX = 2,            // @NOTE: only used to store values so that the memory is layed out in an expected way
	INTERP_MISC_INDEX = 3,       // @NOTE: can store types and other needed info
};

void
initialize_memory();

void *
AllocateMemory(u64 Size, i8 Index);

void
ResetCompileMemory();

void *
_AllocateInterpMemory(u64 Size, i8 Index);

void
_FreeInterpMemory(void *Ptr, i8 Index);

#define AllocatePermanentMemory(SIZE)  AllocateMemory(SIZE, PERM_INDEX)
#define AllocateCompileMemory(SIZE)    AllocateMemory(SIZE, COMP_INDEX)
#define AllocateInterpMemory(SIZE)     _AllocateInterpMemory(SIZE, INTERP_INDEX)
#define AllocateInterpMiscMemory(SIZE) _AllocateInterpMemory(SIZE, INTERP_MISC_INDEX)
#define NewType(Type) (Type *)AllocateCompileMemory(sizeof(Type))

#define FreeInterpMemory(PTR)     _FreeInterpMemory(PTR, INTERP_INDEX)
#define FreeInterpMiscMemory(PTR) _FreeInterpMemory(PTR, INTERP_MISC_INDEX)

#endif //_MEMORY_H
