#include <iostream>
#include <vector>
#include <algorithm>
#include <mpir.h>
#include "../Utils/chrono.cpp"
#include "../Utils/iterators.cpp"

bool is_divisible_by(int n, int d){
	return n % d == 0;
}

bool is_valid(std::vector<int> & v){
	int primes[] = {2, 3, 5, 7, 11, 13, 17};
	
	for(int i = 2; i <= 8; i++){
		int number = 0;

		number += v[i - 1] * 100;
		number += v[i] * 10;
		number += v[i + 1];
		
		if(!is_divisible_by(number, primes[i - 2])){
			return false;
		}
	}
	return true;
}


int main(void){


	mpz_t n;
	mpz_set_str(n,"1234", 10);
	
	
	Chrono c;
	c.start();
	// We only have to test every permutation of the following digits
	std::vector<int> digits = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	unsigned int sum = 0;
	do {
		if(is_valid(digits)){
			unsigned int number = 0;
			int multiplier = 1;
			for(int i = digits.size() - 1; i >= 0 ; i--){
				number += (digits[i] * multiplier);
				multiplier *= 10;
			}
			std::cout << "Adding " << number << std::endl;
			sum += number;
		}
	}while(std::next_permutation(digits.begin(), digits.end()));


	c.stop();
	std::cout << "The sum is " << sum << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}



