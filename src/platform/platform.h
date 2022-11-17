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

typedef void *Platform_Dynamic_Lib;
typedef void *Platform_Thread;
typedef void *Platform_State;
typedef void *Platform_Object;
typedef b32  (*Iterate_Func)(char *, void *);

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
#define platform_interlocked_increment(num) __sync_fetch_and_add(num, 1)
#define platform_interlocked_decrement(num) __sync_fetch_and_sub(num, 1)
#define platform_write_barrirer __asm__ __volatile__("":::"memory"); _mm_sfence()
#endif

// Function should take 1 argument of type void pointer
Platform_Thread
platform_create_thread(void *Func, void *Args);

b32
platform_iterate_files_in_directory(u8 *directory, Iterate_Func fn, void *pass_data);

Platform_Dynamic_Lib
platform_load_dynamic_lib(const char *name_no_extension);

void *
platform_find_fn(Platform_Dynamic_Lib lib, char *name);

void
platform_join_threads(u32 count, Platform_Thread *threads);

void
platform_alert_semaphore(Platform_Object semaphore);

void *
platform_allocate_executable_memory(u64 size);

b32
platform_dose_dir_exist(char *path);

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

inline char *
platform_path_to_file_name(char *path)
{
	char *file_name = (char *)AllocatePermanentMemory(260);
	size_t path_len = vstd_strlen(path);
	char *scanner = path + path_len;
	char *end = scanner;
	while(*scanner != '\\' && *scanner != '/')
		scanner--;
	memcpy(file_name, scanner + 1, end - scanner);
	return file_name;
}

#endif //PLATFORM_H
