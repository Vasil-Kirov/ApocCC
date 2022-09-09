#include "other.c"

static int my_f_var = 123;
static void *null = 1234;

void main()
{
	int a = give_num() + (long long)null;
	a + my_f_var;
}
