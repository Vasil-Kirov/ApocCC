#include <stdint.h>
typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i32;
typedef int64_t i64;
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef float f32;
typedef double f64;
typedef uint32_t b32;
typedef struct {f32 f1;i32 i1;} Values;
i32 printf(u8* str, ...);
i32 main();
i32 printf(u8* str, ...);i32 main()
{
i64 num =13;f32 a_float =(f32)num*2.5;printf("%f",a_float);return 0;
}
