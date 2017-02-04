#include <stdio.h>

int main(){
	char input[32];

	printf("This is a simple echo server!\n");
	printf("It's time to Return-Oriented Programming!!\n\n");

	read(0, input, 128);
	printf("%s\n", input);

	printf("Thank you for playing!XD\n");

	return 0;
}

