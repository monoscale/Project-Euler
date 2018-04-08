#include <iostream>
#include "../Utils/chrono.cpp"
#include "../Utils/math.cpp"

bool can_be_written_as_sum_of_powers(int n, int x){
	int res = 0;
	int original = n;
	while(n > 0 && res <= original){
		int d = n % 10;
		n /= 10;
		res += math::power(d, x);
	}
	return res == original;
}

int main(void){
	Chrono c;
	c.start();
	int sum = 0;
	for(int i = 2; i <= 999999; i++){ // no idea how to prove we don't need to go higher than 1 million
		if(can_be_written_as_sum_of_powers(i, 5)){
			std::cout << i << " ";
			sum += i;
		}
	}
	std::cout << std::endl;
	c.stop();
	
	std::cout << "The sum of all the numbers that can be written as the sum of fifth powers of their digits is " << sum <<std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}
