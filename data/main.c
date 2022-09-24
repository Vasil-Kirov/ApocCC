#include <stdio.h>
#include <stdint.h>

extern void print_passed(int);

int main()
{
const char *some_name = "my long literal string";
	void (*fn_ptr)(int) = print_passed;
	fn_ptr(1);
	return 0;
}

