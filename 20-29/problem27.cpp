#include <iostream>
#include <vector>
#include "../Utils/math.cpp"
#include "../Utils/chrono.cpp"

/*
* Returns a vector with prime numbers op to and including 'upper_limit'
*/
void fill_with_prime_numbers(std::vector<int> & v, int upper_limit){
	for(int i = 2; i <= upper_limit; i++){
		if(math::is_prime(i)){
			v.push_back(i);
		}
	}
}

int main(void){
	Chrono c;
	c.start();
	
	int max_a = 0;
	int max_b = 0;
	int max_prime_count = 0;
	
	// (n * n) + (a * n) + b
	// IF
	// n = 0 => b 					  | b must always be a prime number
	// a = 0 => n * n + b			  | no useful information
	// b = 0 => n * n + a * n         | no useful information
	// a = 0, b = 0 => n * n          | n * n must always be a prime number
	
	std::vector<int> values_for_b;
	fill_with_prime_numbers(values_for_b, 1000);
	
	for(int a = -1000; a < 1000; a++){
		for(int i = 0; i < values_for_b.size(); i++){
			int b = values_for_b[i];
			int n = 0;
			while(math::is_prime((n * n) + (a * n)  + b)){
				n++;
			}
			if(n > max_prime_count){
				max_prime_count = n;
				max_a = a;
				max_b = b;
			}
		}
	}
	
	c.stop();
	
	std::cout << max_prime_count << " consecutive primes with a=" << max_a << " and b=" << max_b << std::endl;
	std::cout << "The product of a and b is " << max_a * max_b << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}
