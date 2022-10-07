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




static ap_memory MemoryAllocators[2];


#define PERM_SIZE GB(16)
#define COMP_SIZE GB(256)

#define COMP_CHUNK MB(512)
#define PERM_CHUNK MB(256)


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
