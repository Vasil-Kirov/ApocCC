/* date = January 17th 2022 2:57 pm */

#ifndef _MEMORY_H
#define _MEMORY_H
#include <Basic.h>

enum AllocIndex
{
	PERM_INDEX = 0,
	COMP_INDEX = 1,
};

void
InitializeMemory();

void *
AllocateMemory(u64 Size, i8 Index);

void
ResetCompileMemory();


#define AllocatePermanentMemory(SIZE) AllocateMemory(SIZE, PERM_INDEX)
#define AllocateCompileMemory(SIZE)   AllocateMemory(SIZE, COMP_INDEX)

#endif //_MEMORY_H
