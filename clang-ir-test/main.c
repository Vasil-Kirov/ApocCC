#include <stdio.h>
#include <string.h>

//static int array[256] = {1, 2, 3, 4, 5, 6, 7, 8, 9};

int main()
{
	int my_arr[] = {1, 2, 3, 4};
	//memcpy(my_arr, array, 256 * 4);
	printf("number %d\n", my_arr[0]);
	printf("number %d\n", my_arr[1]);
	printf("number %d\n", my_arr[2]);
	printf("number %d\n", my_arr[3]);
	printf("number %d\n", my_arr[4]);	
}