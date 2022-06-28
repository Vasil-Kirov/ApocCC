/* date = May 22nd 2022 11:42 am */

#ifndef _SIMPLE_D_ARRAY_H
#define _SIMPLE_D_ARRAY_H
#include <Basic.h>

typedef struct 
{
	u64 Count;
	u64 CurrentlyAllocated;
	u64 CurrentlyUsed;
	size_t TypeSize;
} DArray_Header;

void *
_ISimpleDArrayCreate(size_t TypeSize);

void
_ISimpleDArrayPush(void **Array, void *Item);

void
_ISimpleDArraySkip(void **Array, int Amount);

void
_ISimpleDArrayInsert(void **Array, void *Item, int Index);

#define SDHeader(Array) ((DArray_Header *)( ( (char *)(Array) ) - sizeof(DArray_Header)))
#define SDCreate(Type) (Type *)_ISimpleDArrayCreate(sizeof(Type))
#define SDCount(Array) SDHeader(Array)->Count
#define SDPush(Array, Item) _ISimpleDArrayPush((void **)&(Array), (void *)&(Item))
#define SDFree(Array) PlatformFreeChunk(Array);

#endif //_SIMPLE_D_ARRAY_H
