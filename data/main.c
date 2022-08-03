#include <stdio.h>
extern double add_nums(float a, float b);


int main()
{
	double sum = add_nums(10.324f, 34.27f);	
	printf("%f", sum);
	return 0;	
}
