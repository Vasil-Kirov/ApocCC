/* date = January 19th 2022 9:03 pm */

#ifndef PLATFORM_H
#define PLATFORM_H
#include <Basic.h>
#include <Log.h>

typedef struct _platform_config
{
	u16 Width;
	u16 Height;
	u32 WindowPosX;
	u32 WindowPosY;
	const char *Name;
} platform_config;

// TODO(Vasko): Implement threading
typedef void *platform_thread;
typedef void *platform_state;

typedef struct _file_info
{
	i8 Path[260];
	i16 PathSize;
	i8 Extension[260];
	i16 ExtensionSize;
	b32 isValid;
} file_info;

typedef struct _Quad
{
	u16 Width;
	u16 Height;
} Quad;

// Function should take 1 argument of type void pointer
platform_thread
PlatformCreateThread(void *Func, void *Args);

void
PlatformWaitForThread(platform_thread Thread);

b32
PlatformIsThreadOver(platform_thread Thread);

void
PlatformMessageBox(const char *Caption, const char *Text);

void
PlatformGetAbsolutePath(char *Out);

void
PlatformOutputString(char *String, log_level Level);

void
PlatformExit(i32 ExitCode);

u64
PlatformGetFileSize(char *Path);

void *
PlatformReserveMemory(u64 Size);

void
PlatformAllocateReserved(void *Address, u64 Size);

void *
PlatformAllocateChunk(u64 Size);

void
PlatformFreeChunk(void *Chunk);

void
PlatformInitialize();

b32
PlatformHandleMessages();


void
PlatformSetWindowSize(Quad NewSize);

void
PlatformQuit();

platform_state
PlatformGetState();

b32
PlatformWriteFile(void *Data, i32 BytesToWrite, const char *Path, b32 Overwrite);

b32
PlatformReadEntireFile(void *Data, u64 *Size, char *Path);

#endif //PLATFORM_H
