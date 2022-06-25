
/* date = January 19th 2022 9:04 pm */

#ifndef _BASIC_H
#define _BASIC_H

#include <stdint.h>

// TODO(Vasko): Add logger
#include <stdio.h>

#ifndef __cplusplus
#define STB_DS_IMPLEMENTATION
#include <stb_ds.h>
#endif


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

#define true 1
#define false 0

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


#define Assert(expression) if(!(expression)) { *(char *)0 = 0; }
#define ADD_LOGGER Assert(false)

#include <Lexer.h>


void
raise_token_syntax_error(const char *error_msg, u8 **at_buffer, char *file, u64 line, u64 column);

void
raise_parsing_unexpected_token(const char *expected_tok, Token_Iden token);

#endif //_BASIC_H
