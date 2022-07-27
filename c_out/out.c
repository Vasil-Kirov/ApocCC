#include <stdint.h>
typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i32;
typedef int64_t i64;
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef float r32;
typedef double r64;
i32 printf(u8* str, ...);i32 add_nums(i32 a, i32 b)
{
return a+b;
}
i32 main()
{
i32 number =add_nums( 10, 15) ;printf("Hello World %d",number);return 10;
}
