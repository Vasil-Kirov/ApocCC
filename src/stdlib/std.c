#include <stdlib/std.h>
#include <immintrin.h>
#include <stdarg.h>
#include <platform/platform.h>
#include <Builtin.h>
#define V_WRITE_BUFFER_SIZE 8192

f64
vstd_pow(f64 a, f64 b)
{
	if(b == 0) return 1;
	
	if (b < 0) 
	{
		b = -b;
		while(b--)
		{
			a *= 1/a; 
		}
	}
	else
	{
		while(b--)
		{
			a*=a;
		}
	}
	return a;
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
	return result * vstd_pow(10, magic);
	
}

inline b32
is_special_char(char c)
{
	return ((c >= '!' && '/' <= c) || (c >= ':' && '@' <= c) || (c >= '[' && c <= '`') || (c >= '{' && c <= '~'));
}

inline b32
is_alnum(char c)
{
	return ( is_alpha(c) || is_number(c) );
}

inline b32
is_alpha(char c)
{
	return ( (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') );
}

inline b32
is_non_special_char(char c)
{
	return (c == '_');
}

inline b32
is_whitespace(char c)
{
	return (c == ' ' || c == '\r' || c == '\v' || c == '\n' || c == '\t');
}

inline b32
is_number(char c)
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
		result = scan[i] - '0';
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
		result = scan[i] - '0';
		if(scan[i+1] != 0)
			result *= 10;
	}
	return result;
}


void
_vstd_FloatToStr(float num, char *arr_to_fill)
{
	int array_index = 0;
	if(num < 0.0f)
	{
		arr_to_fill[array_index++] = '-';
		num *= -1;
	}
	int whole_number = (int)num;
	
	int decimal_part = (int)((num-(float)whole_number) * 1000000.0f);
	char whole_number_str[100] = {0};
	_vstd_IntToStr(whole_number, whole_number_str);
    
	char decimal_part_str[100] = {0};
	_vstd_IntToStr(decimal_part, decimal_part_str);
	
	vstd_strcat(arr_to_fill, whole_number_str);
	vstd_strcat(arr_to_fill, ".");
	vstd_strcat(arr_to_fill, decimal_part_str);
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

size_t
vstd_strlen(char *str)
{
    
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
					float Number = (float)va_arg(args, double);
					char Arr[100] = {0};
					char *ToCopy = Arr;
                    _vstd_FloatToStr(Number, ToCopy);
					while (*ToCopy != 0)
					{
						Buffer[BufferIndex++] = *ToCopy;
						++ToCopy;
					}
				}break;
				case 'c':
				{
					char c = (char)va_arg(args, int);
					Buffer[BufferIndex++] = c;
				}break;
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
				}break;
				case '\\':
				{
					Buffer[BufferIndex++] = '%';
				}break;
				default:
				{
					NORMAL_FORMAT:
					Buffer[BufferIndex++] = '%';
					Buffer[BufferIndex++] = Format[FormatIndex];
				}break;
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
    PlatformWriteFile(Buffer, BufferSize, "0", false);
}

void _vstd_sPrintf(int FormatSize, char *Buffer, const char* Format, ...)
{
    va_list Args;
    va_start(Args, Format);
    
    FormatString(Buffer, Format, FormatSize, Args);
    
    va_end(Args);
}


void
vstd_vsnsprintf(char *Buffer, size_t FormatSize, const char *Format, va_list Args)
{
	FormatString(Buffer, Format, (i32)FormatSize, Args);
}
