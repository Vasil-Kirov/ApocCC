#include <stdarg.h>
#include <stdio.h>
typedef unsigned char u8;

typedef struct 
{
	u8 text[1024];
	long long len;
} My_Builder;

My_Builder get_struct(const char *text)
{
	My_Builder out = {};
	for(size_t i = 0; text[i] != 0; ++i)
		out.text[i] = text[i];
	return out;
}

int main()
{
	My_Builder str = get_struct("A lot  of fucking text");
	printf("%s", str.text);
}
