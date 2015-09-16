#include <stdio.h>

int main( int argc, char** argv )
{
	// Initialize factorial values
	int fact = 10;
	int result = 1;
	int i;

	// For each value
	for( i = fact; i > 1; i-- )
	{
		// Multiply result by current index
		result *= i;
	}

	// Display factorial result
	printf( "The factorial of %d = %d\n", fact, result );
	return 0;
}