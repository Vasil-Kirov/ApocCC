#include <Memory.h>
#include <platform/platform.h>
#include <Threading.h>

typedef struct _ap_memory
{
	u16 ChunkIndex;
	void *Start;
	void *End;
	void *Current;
	u64 ChunkSize;
	u64 MaxSize;
} ap_memory;

static ap_memory MemoryAllocators[4];

#define INTERP_SIZE GB(2)
#define INTERP_MISC_SIZE GB(1)
#define PERM_SIZE GB(4)
#define COMP_SIZE GB(8)

#define INTERP_CHUNK MB(64)
#define INTERP_MISC_CHUNK MB(32)
#define COMP_CHUNK MB(256)
#define PERM_CHUNK MB(128)

void
InitAPMem(ap_memory *Memory, u64 Size, u64 ChunkSize)
{
	Memory->Start = platform_reserve_memory(Size);
	platform_allocate_reserved(Memory->Start, ChunkSize);
	
	Memory->End = (u8 *)Memory->Start + ChunkSize; 
	Memory->Current = Memory->Start;
	Memory->ChunkIndex = 1;
	Memory->ChunkSize = ChunkSize;
	Memory->MaxSize = Size;
}


void
initialize_memory()
{
	InitAPMem(&MemoryAllocators[PERM_INDEX], PERM_SIZE, PERM_CHUNK);
	InitAPMem(&MemoryAllocators[COMP_INDEX], COMP_SIZE, COMP_CHUNK);
	InitAPMem(&MemoryAllocators[INTERP_INDEX], INTERP_SIZE, INTERP_CHUNK);
	InitAPMem(&MemoryAllocators[INTERP_MISC_INDEX], INTERP_MISC_SIZE, INTERP_MISC_CHUNK);
}

void *
AllocateMemory(u64 Size, i8 Index)
{
	lock_mutex();

	void *Result = MemoryAllocators[Index].Current;
	MemoryAllocators[Index].Current = (char *)MemoryAllocators[Index].Current + Size;
	while((char *)MemoryAllocators[Index].Current > (char *)MemoryAllocators[Index].End)
	{
		if(MemoryAllocators[Index].ChunkIndex * MemoryAllocators[Index].ChunkSize > MemoryAllocators[Index].MaxSize)
		{
			const char *NAME[2] = { "permanent", "debug" };
			LG_FATAL("MEMORY OVERFLOW when allocating %s memory", NAME[Index]);
		}
		platform_allocate_reserved((u8 *)MemoryAllocators[Index].Start + MemoryAllocators[Index].ChunkIndex * MemoryAllocators[Index].ChunkSize, MemoryAllocators[Index].ChunkSize);
		MemoryAllocators[Index].ChunkIndex++;
		MemoryAllocators[Index].End = (u8 *)MemoryAllocators[Index].End + MemoryAllocators[Index].ChunkSize;
	}

	unlock_mutex();
	memset(Result, 0, Size);
	return Result;
}

struct free_list
{
	struct free_list *Next;
	u8 *Ptr;
};

free_list *FreeList[2];

void *
_AllocateInterpMemory(u64 Size, i8 Index)
{
	free_list *FreeListPtr = FreeList[Index - INTERP_INDEX];
	free_list *Prev = FreeListPtr;
	free_list *Current = FreeListPtr;
	while(Current)
	{
		if(*(u64 *)(Current->Ptr - sizeof(u64)) == Size)
		{
			u8 *Ptr = Current->Ptr;
			if(Prev == FreeListPtr)
			{
				FreeList[Index - INTERP_INDEX] = Current->Next;
			}
			else
			{
				Prev->Next = Current->Next;
			}
			*(u64 *)(Ptr - sizeof(u64)) = Size;
			memset(Ptr, 0, Size);
			return Ptr;
		}
		Prev = Current;
		Current = Current->Next;
	}

	u8 *Ptr = (u8 *)AllocateMemory(Size + sizeof(Size), Index);
	*(u64 *)Ptr = Size;
	return Ptr + sizeof(u64);
}

void
_FreeInterpMemory(void *Ptr, i8 Index)
{
	if(Ptr == NULL)
		return;
	free_list *Node = (free_list *)AllocatePermanentMemory(sizeof(free_list));
	Node->Ptr = (u8 *)Ptr;
	Node->Next = FreeList[Index - INTERP_INDEX];
	FreeList[Index - INTERP_INDEX] = Node;
}

void
ResetCompileMemory()
{
	// NOTE(Vasko): probably not a good idea, since windows will think I am using the memory
#if 0
	u64 Size = MemoryAllocators[COMP_INDEX].End - MemoryAllocators[COMP_INDEX].Start;
	memset(MemoryAllocators[COMP_INDEX].Start, 0, Size);
#endif
	
	MemoryAllocators[COMP_INDEX].Current = MemoryAllocators[COMP_INDEX].Start;
}
