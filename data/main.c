#include <stdio.h>
#include <stdint.h>

extern uint8_t increment_u8(int8_t a);


int main()
{
	uint8_t a = 0;
	a = increment_u8(a);
	a = increment_u8(a);
	a = increment_u8(a);
	printf("%d", a);
	return 0;	
}
