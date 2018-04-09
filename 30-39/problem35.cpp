/*
The number 3797 has an interesting property. Being prime itself, 
it is possible to continuously remove digits from left to right, 
and remain prime at each stage: 3797, 797, 97, and 7. 
Similarly we can work from right to left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
*/

#include <iostream>
#include <vector>
#include "../Utils/chrono.cpp"
#include "../Utils/math.cpp"
#include "../Utils/iterators.cpp"


bool is_circular_prime(int n){

}

int main(void){
	Chrono c;
	c.start();
	
	int count = 0;
	for(int i = 2; i < 100; i++){
		if(is_circular_prime(i)){
			count++;
		}
	}

	c.stop();
	std::cout << "There are " << count << " circular primes below one million" << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}

