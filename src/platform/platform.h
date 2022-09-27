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
} Platform_Config;

typedef void *Platform_Thread;
typedef void *Platform_State;
typedef void *Platform_Object;

typedef struct _file_info
{
	i8 Path[260];
	i16 PathSize;
	i8 Extension[260];
	i16 ExtensionSize;
	b32 isValid;
} File_Info;

typedef struct _Quad
{
	u16 Width;
	u16 Height;
} Quad;

#if defined(_WIN32)
#define platform_interlocked_increment(num) _InterlockedIncrement(num)
#define platform_interlocked_decrement(num) _InterlockedDecrement(num)
#define platform_write_barrirer _WriteBarrier(); _mm_sfence()
#else
#error DEFINE INTERLOCKED INCREMENT
#endif

// Function should take 1 argument of type void pointer
Platform_Thread
platform_create_thread(void *Func, void *Args);

void
platform_join_threads(u32 count, Platform_Thread *threads);

void
platform_alert_semaphore(Platform_Object semaphore);

void *
platform_allocate_executable_memory(u64 size);

Platform_Object
platform_create_mutex();

void
platform_lock_mutex(Platform_Object mutex);

void
platform_unlock_mutex(Platform_Object mutex);

void
platform_wait_for_object(Platform_Object object);

Platform_Object
platform_create_semaphore(int InitialCount, int ThreadCount);

b32
platform_is_thread_over(Platform_Thread Thread);

void
platform_message_box(const char *Caption, const char *Text);

void
platform_get_absolute_path(char *Out);

void
platform_output_string(char *String, log_level Level);

void
platform_exit(i32 ExitCode);


char *
platform_relative_to_absolute_path(char *path);

char *
platform_path_to_file_name(char *path);

wchar_t *
platform_relative_to_absolute_pathw(wchar_t *path);

wchar_t *
platform_path_to_file_namew(wchar_t *path);

u64
platform_get_file_size(char *Path);

void *
platform_reserve_memory(u64 Size);

void
platform_allocate_reserved(void *Address, u64 Size);

void *
platform_allocate_chunk(u64 Size);

void
platform_free_chunk(void *Chunk);

void
platform_initialize();

b32
platform_handle_messages();

void
platform_set_window_size(Quad NewSize);

Platform_State
platform_get_state();

b32
platform_write_file(void *Data, u32 BytesToWrite, const char *Path, b32 Overwrite);

b32
platform_read_entire_file(void *Data, u64 *Size, char *Path);

void
platform_call_and_wait(const char *command);

#endif //PLATFORM_H
