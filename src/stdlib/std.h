
#pragma once

#include <Basic.h>
#include <stdarg.h>




#define vstd_printf(str, ...) _vstd_Printf(sizeof(str) - 1, str, __VA_ARGS__)
#define vstd_sprintf(buff, str, ...) _vstd_sPrintf(sizeof(str) - 1, buff, str, __VA_ARGS__)

struct vstdRect 
{
    int x1;
    int y1;
    int x2;
    int y2;
};

void
assert_false(const char *file, const char *function, u64 line);

void
strcpy_secure(char *destination, size_t max_size, const char *source);

u64
hex_to_num(u8 *hex_str, size_t len);

u64
str_to_u64(const char *string);

i64
str_to_i64(const char *string);

size_t
vstd_strlen(char *str);

char *
vstd_strcat_multiple(char *output, int amount, ...);

void
vstd_stepout_dir(char *path);

b32
is_whitespace(u8 c);

b32
is_non_special_char(u8 c);

b32
is_hex(u8 c);

b32
is_alpha(u8 );

b32
is_alnum(u8 c); 

b32
is_number(u8 c);

f64
vstd_str_to_double(char *str);

void
vstd_vsnsprintf(char *Buffer, size_t FormatSize, const char *FormatString, va_list Args);

int
strcount(char *str, char c, char exclude_next);

char *
vstd_strchr(char *str, char chr);

char *
vstd_strstr(char *str1, char *str2);

void
vstd_strcat(char *dst, const char *src);


void
_vstd_IntToStr(int num, char *arr_to_fill);

void
_vstd_U64ToStr(u64 num, char *arr_to_fill);

void
_vstd_FloatToStr(float num, char *arr_to_fill);

void
_vstd_Printf(int FormatSize, const char* FormatString, ...);

i32
_vstd_sPrintf(int FormatSize, char *Buffer, const char* FormatString, ...);

b32
vstd_strcmp(char *str1, char *str2);

b32
vstd_str_ends_with(char *str, char *end);

void
Error(const char *error_msg);
