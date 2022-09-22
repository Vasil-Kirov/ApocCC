#include <stdio.h>
#include <stdint.h>

extern int the_num();

int main()
{
	int num = the_num();
	return num;
}
