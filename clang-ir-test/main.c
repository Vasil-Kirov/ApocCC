const int a = 3 + 4;

int main()
{
	int *ptr = &a;
	int b = a;
	for(int i = 0; i < 5; ++i)
		b += a;
	return b;
}