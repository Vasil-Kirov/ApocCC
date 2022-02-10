#include <Memory.h>
#include <platform/platform.h>

typedef struct _ap_memory
{
	void *Start;
	void *End;
	void *Current;
} ap_memory;




static ap_memory MemoryAllocators[3];


#define PERM_SIZE MB(1024)
#define COMP_SIZE MB(2048)
#define TEMP_SIZE GB(1)

void
InitAPMem(ap_memory *Memory, u64 Size)
{
	Memory->Start = PlatformAllocateChunk(Size);
	Memory->End = (u8 *)Memory->Start + Size; 
	Memory->Current = Memory->Start;
}


void
InitializeMemory()
{
	InitAPMem(&MemoryAllocators[PERM_INDEX], PERM_SIZE);
	InitAPMem(&MemoryAllocators[COMP_INDEX], COMP_SIZE);
	InitAPMem(&MemoryAllocators[TEMP_INDEX], TEMP_SIZE);
}

void *
AllocateMemory(u64 Size, i8 Index)
{
	void *Result = MemoryAllocators[Index].Current;
	MemoryAllocators[Index].Current = (char *)MemoryAllocators[Index].Current + Size;
	if((char *)MemoryAllocators[Index].Current > (char *)MemoryAllocators[Index].End)
	{
		const char *NAME[3] = { "permanent", "debug", "temporary" };
		LG_FATAL("MEMORY OVERFLOW when allocating %s memory", NAME[Index]);
	}
	return Result;
}

void
ResetTemporaryMemory()
{
	MemoryAllocators[TEMP_INDEX].Current = MemoryAllocators[TEMP_INDEX].Start;
}

void
ResetDebugMemory()
{
	// NOTE(Vasko): probably not a good idea, since windows will think I am using the memory
#if 0
	u64 Size = MemoryAllocators[COMP_INDEX].End - MemoryAllocators[COMP_INDEX].Start;
	memset(MemoryAllocators[COMP_INDEX].Start, 0, Size);
#endif
	
	MemoryAllocators[COMP_INDEX].Current = MemoryAllocators[COMP_INDEX].Start;
}
