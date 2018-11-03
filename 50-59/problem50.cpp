/*

The prime 41, can be written as the sum of six consecutive primes:
41 = 2 + 3 + 5 + 7 + 11 + 13

This is the longest sum of consecutive primes that adds to a prime below one-hundred.

The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

Which prime, below one-million, can be written as the sum of the most consecutive primes?
*/
#include <iostream>
#include "../Utils/chrono.cpp"
#include "../Utils/math.cpp"
#include "../Utils/iterators.cpp"

bool can_be_written_as_sum_of_consecutive_primes(int n){
	
	std::vector<int> primes;
	for(int i = 2; i < n; i++){
		if(math::is_prime(i)){
			primes.push_back(i);
		}
	}
	std::cout << primes;
	
	int sum = 0;
	int i = 0;
	while(i < primes.size() && sum < n){
		std::cout << "Currently adding " << primes[i] << std::endl;
		sum += primes[i];
		
		
		
		i++;
	}	

	
	


	std::cout << sum << std::endl;
	return sum == n;
}

int main(void){
	Chrono c;
	c.start();
	
	std::cout << can_be_written_as_sum_of_consecutive_primes(41) << std::endl;

	c.stop();
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}

