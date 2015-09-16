#include <stdio.h>

int main( int argc, char** argv )
{
	// Initialize array with values
	int arr[] = { 3, 14, 7, 43, 8, -1, 5, 2, 10, 4 };
	int swapped = 1;
	int i, temp;
	int size = 10;

	// Output array values before sort
	for( i = 0; i < size; i++ )
	{
		printf( "%d ", arr[i] );
	}
	printf( "\n" );

	// Continue looping if swap has occurred
	while( swapped )
	{
		// Reset swap flag
		swapped = 0;

		// Loop through array
		for( i = 0; i < size - 1; i++ )
		{
			// If value at higher index is greater
			if( arr[i] > arr[i+1] )
			{
				// Swap
				temp = arr[i];
				arr[i] = arr[i+1];
				arr[i+1] = temp;

				// Set swap flag
				swapped = 1;
			}
		}
	}

	// Output array values after sort
	for( i = 0; i < size; i++ )
	{
		printf( "%d ", arr[i] );
	}
	printf( "\n" );

	return 0;
}