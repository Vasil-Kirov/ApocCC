const char *foo()
{
	const char *s = "some string duh";
	return s;
}


int main()
{
	return foo()[0];
}