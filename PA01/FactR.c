#include <stdio.h>

int factorial( int num );

int main( int argc, char** argv )
{
	// Call factorial function for value
	int fact = 10;
	int result = factorial( fact );

	// Display factorial result
	printf( "The factorial of %d = %d\n", fact, result );
	return 0;
}

// Factorial of num
int factorial( int num )
{
	// Factorial of 1 or 0 = 1
	if( num <= 1 )
		return 1;
	// Return number times factorial of number - 1
	return num * factorial( num - 1 );
}
