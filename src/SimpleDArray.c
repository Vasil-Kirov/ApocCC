#include <SimpleDArray.h>



void *
_ISimpleDArrayCreate(size_t TypeSize)
{
	u64 CurrentlyCommited = TypeSize * 2048 + sizeof(DArray_Header);
	void *Result = PlatformAllocateChunk(CurrentlyCommited);
	DArray_Header *Header = (DArray_Header *)Result;
	Header->Count = 0;
	Header->CurrentlyAllocated = CurrentlyCommited - sizeof(DArray_Header);
	Header->CurrentlyUsed = 0;
	Header->TypeSize = TypeSize;
	return (char *)Result + sizeof(DArray_Header);
}


void
_ISimpleDArrayPush(void **Array, void *Item)
{
	void *ArrayPtr = *Array;
	if(SDHeader(ArrayPtr)->CurrentlyUsed + SDHeader(ArrayPtr)->TypeSize > 
	   SDHeader(ArrayPtr)->CurrentlyAllocated)
	{
		u64 NewSize = (u64)(SDHeader(ArrayPtr)->CurrentlyAllocated * 1.5);
		void *NewPtr = PlatformAllocateChunk(NewSize);
		if(NewPtr == 0) LG_FATAL("Failed to allocate needed memory");
		
		SDHeader(ArrayPtr)->CurrentlyAllocated = NewSize;
		
		void *MemoryStartPointer = (char *)ArrayPtr - sizeof(DArray_Header);
		memcpy(NewPtr, MemoryStartPointer,
			   SDHeader(ArrayPtr)->CurrentlyUsed + sizeof(DArray_Header));
		
		PlatformFreeChunk(*Array);
		*Array = (char *)NewPtr + sizeof(DArray_Header);
	}
	
	void *NewItemLocation = (char *)ArrayPtr + SDCount(ArrayPtr) * SDHeader(ArrayPtr)->TypeSize;
	memcpy(NewItemLocation,Item, SDHeader(ArrayPtr)->TypeSize);
	
	SDCount(ArrayPtr)++;
	SDHeader(ArrayPtr)->CurrentlyUsed += SDHeader(ArrayPtr)->TypeSize;
}

