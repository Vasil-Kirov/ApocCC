#include <stdio.h>
#include <stdint.h>

extern int print_passed(int);

int main()
{
const char *some_name = "my long literal string";
	int (*fn_ptr)(int) = print_passed;
	int num = fn_ptr(1);
	return 0;
}

