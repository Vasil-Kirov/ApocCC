#include <stdarg.h>
#include <stdio.h>
typedef unsigned char u8;

int test_var_args(int a, ...)
{
	va_list ap;
	va_start(ap, a);
	return va_arg(ap, int);
}

int main()
{
	printf("Zero: %d", test_var_args(1, 10));
}
