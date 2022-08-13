
/* date = January 19th 2022 9:04 pm */

#ifndef _BASIC_H
#define _BASIC_H

#include <stdint.h>
#include <stddef.h>

#ifndef STB_DS_IMPLEMENTATION
#define STB_DS_IMPLEMENTATION
#endif
#include <stb_ds.h>


typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i32;
typedef int64_t i64;

typedef wchar_t wchar;

typedef u32 b32;
typedef float f32;
typedef double f64;

#ifndef __cplusplus
#define true 1
#define false 0
#endif

#define ARR_SIZE(arr) (sizeof(arr) / sizeof(arr[0]))
#define FOR_EACH(arr) for(size_t i = 0; i < ARR_SIZE(arr); ++i)

typedef struct _entire_file
{
	void *data;
	u64 size;
} entire_file;

#define ASM_FUNC(Type) extern "C" Type __fastcall

#define _KB(b) (b << 10)
#define _MB(b) (b << 20)
#define _GB(b) (b << 30)

#define KB(b) _KB((i64)b)
#define MB(b) _MB((i64)b)
#define GB(b) _GB((i64)b)


#define Assert(expression) if(!(expression)) { LG_FATAL("%s (%d):\n\tAssertion failed.", __FILE__, __LINE__); }
#define ADD_LOGGER Assert(false)

#include <stdlib/std.h>
#include <Log.h>

#include <Memory.h>
inline char *
change_file_extension(char *file_name, char *new_extension)
{
	size_t len = vstd_strlen(file_name);
	size_t new_ext_len = vstd_strlen(new_extension);
	char *scanner = file_name + len;
	while(*scanner != '.') scanner--;
	size_t name_len = scanner - file_name;
	char *result = (char *)AllocatePermanentMemory(name_len + 1 + new_ext_len + 1);
	memcpy(result, file_name, name_len);
	*(result + name_len) = '.';
	memcpy(result + name_len + 1, new_extension, new_ext_len);
	return result;
}

#endif //_BASIC_H
