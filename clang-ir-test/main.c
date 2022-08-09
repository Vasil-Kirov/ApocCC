
typedef struct
{
	char a;
	char b[3];
} b_struct;

typedef struct 
{
	int a;
	int b;
	b_struct c;
} a_struct;

int main()
{
	a_struct a = {};
	return a.c.b[1];
}