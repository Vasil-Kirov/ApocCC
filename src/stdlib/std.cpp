#include <stdlib/std.h>
#include <immintrin.h>
#include <pmmintrin.h>
#include <stdarg.h>
#include <platform/platform.h>
#include <Builtin.h>
#define V_WRITE_BUFFER_SIZE 8192


void
strcpy_secure(char *destination, size_t max_size, const char *source)
{
		size_t length = vstd_strlen((char *)source) + 1;
		if(length > max_size)
				return;
		memcpy(destination, source, length);
}

f64
vstd_pow(f64 a, f64 b)
{
	f64 result = 1;

	b32 is_neg = false;
	if(b < 0)
	{
		b = -b;
		is_neg = true;
	}

	while(b != 0)
	{
		result *= a;
		--b;
	}

	if(is_neg)
		result = 1.0 / result;
	return result;
}

void
assert_false(const char *file, const char *function, u64 line)
{
	char error_str[4096 * 2];
	memset(error_str, 0, 4096 * 2);
	
	size_t file_size = platform_get_file_size((char *)file);
	char file_data[file_size];
	memset(file_data, 0, file_size);
	char *at = file_data;

	if(!platform_read_entire_file(file_data, &file_size, (char *)file))
			LG_ERROR("Assertion failed in file %s in function %s at line %d",
				file, function, line);
	int line_counter = 1;
	while(line_counter != line)
	{
		if(*at == '\n')
			line_counter++;
		at++;
	}

	char *copy = error_str;
	while(*at != '\n' && *at != 0)
	{
		*copy = *at;
		at++;
		copy++;
	}
	LG_ERROR("Assert failed in file %s in function %s at line %d:\n\n%s", file, function, line, error_str);
}

char *
vstd_strcat_multiple(char *output, int amount, ...)
{
	va_list args;
	va_start(args, amount);
	while(amount > 0)
	{
		vstd_strcat(output, va_arg(args, char *));
		
		amount--;
	}
	return output;
}

void
vstd_stepout_dir(char *path)
{
	size_t size = vstd_strlen(path);
	for(size_t index = size-2; index >= 0; --index)
	{
		if(path[index] == '\\' || path[index] == '/')
		{
			path[index+1] = 0;
			break;
		}
	} 
	return;
}

f64
vstd_str_to_double(char *str)
{
	f64 result = 0;
	b32 flag = false;
	i32 magic = 0;
	for(i32 index = 0; str[index] != 0; ++index)
	{
		char c = str[index];
		if(c != '.')
		{
			result = (result*10)+(c-'0');
			if(flag) magic--;
		}
		else if (c=='.')
		{
			flag = 1;
		}
		else 
		{
			// TODO(Vasko): better error handling
			LG_FATAL("Expected number, got something else");
		}
	}
	result *= vstd_pow(10, magic);
	LG_DEBUG("str: %s\nnum:%f", str, result);
	return result;
}

u64
do_pow(u64 num, u64 to_pow)
{
	u64 original_num = num;
	if(to_pow == 0) return 1;
	while(--to_pow)
	{
		num *= original_num;
	}
	return num;
}

inline u8
c_to_lower(u8 c)
{
	if(c >= 'A' && c <= 'Z')
		return c + 32;
	return c;
}

u64
hex_to_num(u8 *hex_str, size_t len)
{
	u64 result = 0;
	u8 map[256] = {};
	map[(int)'a'] = 10;
	map[(int)'b'] = 11;
	map[(int)'c'] = 12;
	map[(int)'d'] = 13;
	map[(int)'e'] = 14;
	map[(int)'f'] = 15;
	for(i64 i = len - 1; i >= 0; --i)
	{
		u8 c = hex_str[i];
		if(is_number(c))
			result += (c - '0') * do_pow(16, len - i - 1);
		else
			result += map[c_to_lower(c)] * do_pow(16, len - i - 1);
	}
	return result;
}

inline b32
is_hex(u8 c)
{
	u8 hex_chars[] = {'a', 'b', 'c', 'd', 'e', 'f'};
	if(is_number(c))
		return true;

	for(size_t i = 0; i < sizeof(hex_chars); ++i)
		if(c_to_lower(c) == hex_chars[i])
			return true;
	return false;
}

inline b32
is_special_char(u8 c)
{
	return ((c >= '!' && '/' <= c) || (c >= ':' && '@' <= c) || (c >= '[' && c <= '`') || (c >= '{' && c <= '~'));
}

inline b32
is_alnum(u8 c)
{
	return ( is_alpha(c) || is_number(c) );
}

inline b32
is_alpha(u8 c)
{
	return ( (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') );
}

inline b32
is_non_special_char(u8 c)
{
	return (c == '_');
}

inline b32
is_whitespace(u8 c)
{
	return (c == ' ' || c == '\r' || c == '\v' || c == '\n' || c == '\t');
}

inline b32
is_number(u8 c)
{
	return (c >= '0' && c <= '9');
}

int strcount(char *str, char c, char exclude_next)
{
    b32 hasExclude = true;
	if (exclude_next == 0)
	{
		hasExclude = false;
	}
	int count = 0;
	char *scanner = str;
	while(*scanner!='\0')
	{
		if(*scanner == c) 
		{
			if(hasExclude && *(scanner+1)!=exclude_next) count++;
		}
		scanner++;
	}
	return count;
}


void vstd_strcat(char *dst, const char *src)
{
	dst += vstd_strlen(dst);
	while(*src != '\0')
	{
		*dst = *src;
		dst++;
		src++;
	}
	*dst = '\0';
}

void _vstd_IntToStr(int num, char* arr_to_fill)
{
	if(num == 0)
	{
		arr_to_fill[0] = '0';
		arr_to_fill[1] =  0;
		return;
	}
	int CopyToDivide = num;
	int num_size = -1;           // -1 cuz we want the size - 1 to get the last index of the array.
	while (CopyToDivide != 0)
	{
		CopyToDivide /= 10;
		num_size++;
	}
	if (num < 0)
	{
		arr_to_fill[0] = '-';
		num_size++;
		num = -num;
	}
	arr_to_fill[num_size + 1] = '\0';
	for (int i = num_size; num != 0; --i)
	{
		int tmp = (int)(num % 10);
		num /= 10;
		arr_to_fill[i] = (char)tmp + '0';
	}
}

void
_vstd_U64ToStr(u64 num, char *arr_to_fill)
{

	if(num == 0)
	{
		arr_to_fill[0] = '0';
		arr_to_fill[1] =  0;
		return;
	}
    u64 CopyToDivide = num;
    i32 num_size = -1;           // -1 cuz we want the size - 1 to get the last index of the array.
	while (CopyToDivide != 0)
	{
		CopyToDivide /= 10;
		num_size++;
	}
	Assert(num >= 0);

	arr_to_fill[num_size + 1] = '\0';
	for (i32 i = num_size; num != 0; --i)
	{
        u64 tmp = (u64)(num % 10);
		num /= 10;
		arr_to_fill[i] = (char)tmp + '0';
	}
}

i64
str_to_i64(const char *string)
{
	int negative_mult = 1;
	i64 result = 0;
	u8 *scan = (u8 *)string;

	size_t i = 0;
	if(scan[0] == '-')
	{
		negative_mult = -1;
		i = 1;
	}
	for(; scan[i] != 0; ++i)
	{
		result += scan[i] - '0';
		if(scan[i+1] != 0)
			result *= 10;
	}
	return result * negative_mult;
}

u64
str_to_u64(const char *string)
{
	u64 result = 0;
	u8 *scan = (u8 *)string;

	Assert(scan[0] != '-')
	for(size_t i = 0; scan[i] != 0; ++i)
	{
		result += scan[i] - '0';
		if(scan[i+1] != 0)
			result *= 10;
	}
	return result;
}


void
_vstd_FloatToStr(float num, char *arr_to_fill)
{
	char *to_put = arr_to_fill; 
	if(num < 0.0f)
	{
		*to_put++ = '-';
		num = -num;
	}
	int decimal = (int)num;
	num -= decimal;
	if(decimal == 0)
		*to_put++ = '0';
	else
		_vstd_IntToStr(decimal, to_put);
	while(*to_put != 0) to_put++;
	*to_put++ = '.';
	
	int zeroes_to_append = 0;
	while((int)num != num)
	{
		num *= 10;
		if((int)num == 0)
			zeroes_to_append++;
	}
	for(int i = 0; i < zeroes_to_append; ++i)
	{
		*to_put++ = '0';
	}
	_vstd_IntToStr((int)num, to_put);
}


// TODO: test 
char*
vstd_strchr(char* str, char chr)
{
	__m128i set_chr = _mm_set1_epi8(chr);
    __m128i null_term = _mm_set1_epi8('\0');
    __m128i result = _mm_set1_epi32(0);
    
    int mask = 0;
    __m128i* restr = (__m128i *)str;
    for (;;)
    {
        __m128i to_cmp = _mm_lddqu_si128((const __m128i *)restr);
        result = _mm_cmpeq_epi8(to_cmp, set_chr);
        mask = _mm_movemask_epi8(result);
        if (mask != 0)
        {
            char* to_ret = (char *)restr;
            unsigned long index;
            index = psnip_builtin_clz(mask);
            to_ret += index;
            return to_ret;
        }
        else
        {
            result = _mm_cmpeq_epi8(to_cmp, null_term);
            mask = _mm_movemask_epi8(result);
            if (mask != 0) return 0;
        }
        restr++;
    }
}

b32
vstd_str_ends_with(char *str, char *end)
{
	size_t length = vstd_strlen(str);
	size_t end_length = vstd_strlen(end);
	str += (length - end_length);
	return vstd_strcmp(str, end);
}

void
_vstd_u32_to_x(u32 num, char *arr_to_fill, b32 lower_case)
{
	u32 digit_count = 0;
	u32 num_copy = num;

	if (num == 0)
		digit_count = 1;
	else
		while (num_copy != 0)
		{
			++digit_count;
			num_copy /= 16;
		}

	const char CONV_TABLE[] = {
		'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
	int at = 0;
	arr_to_fill[at++] = '0';
	arr_to_fill[at++] = 'x';
	at = 1 + digit_count;
	do
	{
		u8 digit = num % 16;
		arr_to_fill[at--] = CONV_TABLE[digit] > '9' ? CONV_TABLE[digit] + (lower_case * 32) : CONV_TABLE[digit];
		num /= 16;
	} while (num != 0);
}

b32
vstd_strcmp(char *str1, char *str2)
{
	while(*str1 == *str2)
	{
		if(*str1 == 0 && *str2 == 0) return true;
		
		++str1;
		++str2;
	}
	return false;
}

__attribute__((no_sanitize("address")))
size_t
vstd_strlen(char *str)
{
	// @NOTE: Causes a crash otherwise
	if (str[0] == 0)
		return 0;

	size_t result = 0;

	const __m128i zeros = _mm_setzero_si128();
	__m128i* mem = (__m128i*)str;

	for (/**/; /**/; mem++, result += 16) 
	{

		const __m128i data = _mm_loadu_si128(mem);
		const __m128i cmp  = _mm_cmpeq_epi8(data, zeros);

		if (!_mm_testc_si128(zeros, cmp)) 
		{
			int mask = _mm_movemask_epi8(cmp);

			return result + psnip_builtin_ctz(mask);
		}
	}
}

#if 0
char *
vstd_strstr(char *str1, char *str2)
{
	return 0;
	// TODO: Finish this, look at the Test++ vs project for the (not-working) implementation
}
#endif


i32
FormatString(char *Buffer, const char *Format, i32 FormatSize, va_list args)
{
    i32 BufferIndex = 0;
    b32 lower_case = false;
    for (int FormatIndex = 0; FormatIndex < FormatSize; ++FormatIndex)
	{
		char FormatChar = Format[FormatIndex];
		if (FormatChar == '%')
		{
			++FormatIndex;
			switch (Format[FormatIndex])
			{
				case 's':
				{ 
					char* ToCopy = va_arg(args, char*);
					while (*ToCopy != 0)
					{
						Buffer[BufferIndex++] = *ToCopy;
						++ToCopy;
					}
				}break;
				case 'd':
				{
					int Number = va_arg(args, int);
					
					// NOTE(Vasko): YOU CANT INCREMENT AN ARRAY AS A POINTER
					char Arr[100] = {0};
					char *ToCopy = Arr;

					_vstd_IntToStr(Number, ToCopy);
					while (*ToCopy != 0)
					{
						Buffer[BufferIndex++] = *ToCopy;
						++ToCopy;
					}
					
				}break;
				case 'f':
				{
					int digits_after_dot = 0;
					if (Format[FormatIndex + 1] == '.' && 
						is_number(Format[FormatIndex + 2]))
					{
						char *str = (char *)(Format + FormatIndex + 2);
						char *scan = str;
						while(is_number(*scan))
						{
							FormatIndex++;
							scan++;
						}
						char save = *scan;
						*scan = 0;
						digits_after_dot = str_to_u64(str);
						*scan = save;
						FormatIndex++;
					}
					double Number = (float)va_arg(args, double);
					char Arr[100] = {0};
					char *ToCopy = Arr;
					_vstd_FloatToStr(Number, Arr);
					if(digits_after_dot != 0)
					{
						b32 found_dot = false;
						int at_after_dot = 0;
						while(*ToCopy != 0)
						{
							if(*ToCopy == '.')
								found_dot = true;
							
							if(found_dot)
								at_after_dot++;
							Buffer[BufferIndex++] = *ToCopy;
							++ToCopy;
							if(at_after_dot == digits_after_dot + 1)
								break;
						}
					}
					else
					{
						while (*ToCopy != 0)
						{
							Buffer[BufferIndex++] = *ToCopy;
							++ToCopy;
						}
					}
				} break;
				case 'c':
				{
					char c = (char)va_arg(args, int);
					Buffer[BufferIndex++] = c;
				} break;
				case 'x':
				lower_case = true;
				case 'X':
				{

					u32 number = (u32)va_arg(args, unsigned);
					char arr[100] = {};
					char *to_copy = arr;
					_vstd_u32_to_x(number, to_copy, lower_case);
					lower_case = false;
					while (*to_copy != 0)
					{
						Buffer[BufferIndex++] = *to_copy;
						++to_copy;
					}
				} break;
				case 'l':
				{
					if(Format[FormatIndex+1] == 'l' && Format[FormatIndex + 2] == 'u')
					{
						u64 Number = (u64)va_arg(args, u64);
						char Arr[100] = {0};
						char *ToCopy = Arr;

						_vstd_U64ToStr(Number, ToCopy);
						while (*ToCopy != 0)
						{
							Buffer[BufferIndex++] = *ToCopy;
							++ToCopy;
						}
						FormatIndex += 2;
					}
					else
					{
						goto NORMAL_FORMAT;
					}
				} break;
				case '\\':
				{
					Buffer[BufferIndex++] = '%';
				} break;
				default:
				{
					NORMAL_FORMAT:
					Buffer[BufferIndex++] = '%';
					Buffer[BufferIndex++] = Format[FormatIndex];
				} break;
			}
		}
		else
		{
			Buffer[BufferIndex++] = Format[FormatIndex];
		}
        
    }
    return BufferIndex;
}

void _vstd_Printf(int FormatSize, const char* Format, ...)
{
    va_list Args;
    va_start(Args, Format);
    
    char Buffer[V_WRITE_BUFFER_SIZE];
    int BufferSize = FormatString(Buffer, Format, FormatSize, Args);
    
    va_end(Args);
    platform_write_file(Buffer, BufferSize, "0", false);
}

i32
_vstd_sPrintf(int FormatSize, char *Buffer, const char* Format, ...)
{
    va_list Args;
    va_start(Args, Format);
    
    i32 result = FormatString(Buffer, Format, FormatSize, Args);
    
    va_end(Args);
    return result;
}


void
vstd_vsnsprintf(char *Buffer, size_t FormatSize, const char *Format, va_list Args)
{
	FormatString(Buffer, Format, (i32)FormatSize, Args);
}

