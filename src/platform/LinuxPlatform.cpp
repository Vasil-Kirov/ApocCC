#if defined(CM_LINUX)


#include <platform/platform.h>
#include <Memory.h>
#include <stdlib/std.h>
#include <linux/limits.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <fcntl.h>

#include <pthread.h>
#include <errno.h>


void
platform_get_absolute_path(char *Out)
{
	readlink("/proc/self/exe", Out, PATH_MAX);
	if (Out[0] == 0)
	{
		// This can't be an error since it will result in an infinite loop
		// as errors and fatal errors call this function
		LG_WARN("Failed to get directory location, file path might be too long");
	}

	size_t Size = vstd_strlen(Out);
	
	// NOTE(Vasko): Remove exe file name
	for(size_t i = Size-1; i >= 0; --i)
	{
		if(Out[i] == '/')
		{
			Out[i+1] = '\0';
			break;
		}
	}
}

// TODO(Vasko): Implement
/*
void
platform_message_box(const char *Caption, const char *Text)
{
	MessageBoxA(Window, Text, Caption, MB_OK);
}
*/

b32
delete_file(const char *file)
{
	struct stat file_info;
	
	if (lstat(file, &file_info) < 0)
		return false;
	
	if (S_ISDIR(file_info.st_mode))
		return (rmdir(file));
	
	return (unlink(file));
}

b32
platform_write_file(void *data, i32 bytes_to_write, const char *path, b32 overwrite)
{
	b32 is_std = false;
	int file;
	if(path[1] == '\0')
	{
		switch(path[0])
		{
			case '0':
			{
				file = 1;
				is_std = true;
			}break;
			case '1':
			{
				file = 2;
				is_std = true;
			}break;
			default:
			{
				return false;
			}break;
		}
	}
	else
	{
		if(overwrite)
		{
			delete_file(path);
		}
		file = open(path, O_APPEND | O_CREAT | O_RDWR);
	}
	
	i32 written = write(file, data, bytes_to_write);
	if(!is_std) close(file);
	if(written != bytes_to_write) return false;
	return true;
}

Platform_Thread
platform_create_thread(void *func, void *args)
{
	pthread_t thread_id; 
	pthread_create(&thread_id, NULL, func, args);
	Platform_Thread result = AllocatePermanentMemory(sizeof(pthread_t));
	*(pthread_t *)result = thread_id;
	return result;
}

void
platform_wait_for_thread(Platform_Thread thread)
{
	pthread_join(*(pthread_t *)thread, NULL);
}


#define KNRM  "\x1B[0m"
#define KRED  "\x1B[31m"
#define KGRN  "\x1B[32m"
#define KYEL  "\x1B[33m"
#define KBLU  "\x1B[34m"
#define KMAG  "\x1B[35m"
#define KCYN  "\x1B[36m"
#define KWHT  "\x1B[37m"
void
platform_output_string(char *string, log_level level)
{
	const char *colors[] = {KMAG, KRED, KYEL, KGRN, KWHT};
	const char *color = colors[level];

	int stdout = 1;
	
	size_t str_size = vstd_strlen(string);
	
	char print_str[str_size + sizeof(KWHT)];
	memset(print_str, 0, str_size + sizeof(KWHT));
	vstd_sprintf(print_str, "%s%s", color, string);

	ssize_t written = write(stdout, print_str, str_size + sizeof(KWHT));
	if(written < str_size + sizeof(KNRM))
	{
		LG_WARN("Failed to write the whole message to stdout");
	}
}

void
platform_exit(i32 ExitCode)
{
	exit(ExitCode);
}

void
platform_initialize()
{
	
}


void *
platform_reserve_memory(u64 size)
{
	void *result = mmap(NULL, size + sizeof(i64), PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
	if(result == MAP_FAILED)
	{
		LG_ERROR("Mmap failed to allocate memory: %d", errno);
		return NULL;
	}
	*(u64 *)result = size;

	return (u8 *)result + sizeof(i64);
}

void
platform_allocate_reserved(void *address, u64 size)
{
	mprotect((u8 *)address - sizeof(i64), size, PROT_READ | PROT_WRITE);
}

void *
platform_allocate_chunk(u64 size)
{
	void *result = mmap(NULL, size + sizeof(i64), PROT_READ | PROT_WRITE, MAP_ANON | MAP_PRIVATE, 0, 0);
	if(result == MAP_FAILED)
	{
		LG_ERROR("Mmap failed to allocate memory: %d", errno);
		return NULL;
	}
	*(u64 *)result = size;

	return (u8 *)result + sizeof(i64);
}

void
platform_free_chunk(void *address)
{
	u64 size = *(u64 *)((u8 *)address - sizeof(i64));
	munmap((u8 *)address - sizeof(i64), size);
}

u64
platform_get_file_size(char *path)
{
	struct stat file_info = {};
	stat(path, &file_info);

	return file_info.st_size;
}

b32
platform_read_entire_file(void *data, u64 *size, char *path)
{
	int file = open(path, O_RDONLY);
	if(file == -1)
	{
		LG_ERROR("File %s doesn't exit platform_read_entire_file()", path);
		return false;
	}

	struct stat file_info = {};
	stat(path, &file_info);

	if(read(file, data, file_info.st_size) == -1)
	{
		LG_ERROR("Couldn't read file %s", path);
		return false;
	}
	*size = file_info.st_size;
	return true;
}


#endif