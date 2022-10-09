#if 0

typedef struct
{
	void *return_val;
} __Internal_Context;

typedef struct
{
	char data[1024];
	int len;
} Big_Struct;

void init_builder(__Internal_Context *context, char *text)
{
	__Internal_Context result = *context;

	Big_Struct result_struct = {};
	result_struct.len = 10;
	result_struct.data[0] = text[0];

	*(Big_Struct *)result.return_val = result_struct;
}

void change_struct(Big_Struct the_struct)
{
	the_struct.data[0] = 10;
}

int main()
{
	Big_Struct out_struct;
	__Internal_Context context;
//__Internal_Context *context = (__Internal_Context *)_alloca(sizeof(__Internal_Context));
	context.return_val = &out_struct;
	init_builder(&context, (char *)"my text");
	change_struct(out_struct);
	return out_struct.len;
}

#else

typedef struct
{
	struct {
		short a;
		short b;
	} bar;
	int c;
} Foo;

Foo get_type() 
{
	Foo x = {};
	x.bar.a = 0xC;
	x.bar.a *= 12323;
	return x;
}

int main()
{
	struct { short a; short b; } my_var;
	my_var.a = 0x0C;
	my_var.b = 0x0C;
	Foo foo;
	foo.c = get_type().c;
	return foo.c;
}

#endif

