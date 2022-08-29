typedef unsigned char u8;

typedef struct 
{
	void *c;
} My_Struct;

void test(My_Struct *a)
{
	*(int *)a->c = 10;
}

int main()
{
	//My_Struct b = test();
	int a = 10;
	My_Struct d = {};
	d.c = &a;
	My_Struct *b = &d;
	test(b);
	return *(int *)b->c;
}
