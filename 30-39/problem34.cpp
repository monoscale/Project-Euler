#include <iostream>
#include "../Utils/chrono.cpp"
#include "../Utils/math.cpp"

// the maximum number that can ever be made with 9 distinct digits their factorial is this number
// This number acts as an upper bound
const int max = 409113; // = 9! + 8! + 7! + 6! + 5! + 4! + 3! + 2! + 1!


/*
* Determines wether or not the input parameter its digits factorial is equal to the number
* 145 = 1! + 4! + 5!
*/
bool is_digit_factorial(int n){
	int should_equal = n;
	int sum = 0;
	while(n > 0){
		sum += math::factorial(n % 10);
		n /= 10;
	}
	return sum == should_equal;
	
}

int main(void){
	Chrono c;
	c.start();
	
	int sum = 0;
	for(int i = 10; i < max; i++){
		if(is_digit_factorial(i)){
			sum += i;
		}
	}

	c.stop();
	std::cout << "The sum of all numbers which are equal to the sum of the factorial of their digits is " << sum << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}

