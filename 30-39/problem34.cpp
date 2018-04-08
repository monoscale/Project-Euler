

/*

The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify 
it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

There are exactly four non-trivial examples of this type of fraction, less than one in value, 
and containing two digits in the numerator and denominator.

If the product of these four fractions is given in its lowest common terms, find the value of the denominator.
*/

#include <iostream>
#include <algorithm>
#include <vector>
#include "../Utils/chrono.cpp"
#include "../Utils/math.cpp"


int main(void){
	
	Chrono c;
	c.start();
	unsigned int totalsum = 0;
	for(unsigned int i = 3; i < 999999999; i++){
		std::vector<int> digits;
		math::num_to_digit_vector(i, digits);
		unsigned int sum = 0;
		for(int i = 0; i < digits.size(); i++){
			sum += math::factorial(digits[i]);
		}
		if(sum == i){
			totalsum += i;
		}
		
	}
	c.stop();
	std::cout << "The sum of all numbers which are equal to the sum of the factorial of their digits is " <<  totalsum << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}
