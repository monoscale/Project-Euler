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


bool is_truncatable_prime(int n){
	// Left to right
	for(int i = 10; i <= n; i *= 10){
		if(!math::is_prime(n % i)){
			return false;
		}
	}
	
	// Right to left	
	while(n > 0){
		if(!math::is_prime(n)){
			return false;
		}
		n /= 10;
	}
	return true;
}

int main(void){
	Chrono c;
	c.start();
	std::cout << math::is_prime(4);
	int sum = 0;
	int primes = 0;
	int n = 11;
	while(primes < 11){
		if(is_truncatable_prime(n)){
			std::cout << n << "\n";
			sum += n;
			primes++;	
		}
		n++;
	}
	
	c.stop();
	std::cout << "The sum of the only eleven primes that are both truncatable from left to right and right to left is " << sum << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}

