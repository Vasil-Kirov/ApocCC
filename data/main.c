#include <stdio.h>
#include <stdint.h>

extern double give_num();


int main()
{
	float the_num = give_num();
	printf("%f", the_num);
	return 0;	
}
