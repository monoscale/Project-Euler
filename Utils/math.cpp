#ifndef __PE_MATH
#define __PE_MATH

#include <vector>
#include <algorithm>
#include <cmath>

namespace math{	
	/*
	* Determines wether or not the input parameter is a prime number
	* param[in] n 		The number to test
	* param[out] 		True if the number is prime, otherwise false
	*/
	bool is_prime(int n){
		if(n < 2){
			return false;
		}
		for(int i = 2; i <= std::sqrt(n); i++){
			if(n % i == 0){
				return false;
			}
		}
		return true;
	}	
	
	/*
	* Returns the result of the power operation. Only works for positive exponents
	* param[in] n    The base number
	* param[in] x    The exponent
	* param[out]     The result of n^x
	*/	
	int power(int n, int x){
		if(x == 0){
			return 1;
		}
		int result = n;
		while(x > 1){
			result *= n;
			x--;
		}
		return result;		
	}
	
	/*
	* Gets the amount of digits in the input parameter
	* param[in]  n 			The number to get the digits from
	* param[out] 			The number of digits
	*/
	int get_digit_count(int n){
		int count = 0;
		while(n > 0){
			n /= 10;
			count++;
		}
		return count;
	}

	/*
	* Returns the factorial operation on the input parameter
	* param[in] n 		
	* param[out] n!
	*/
	int factorial(int n){
		if(n <= 1){
			return 1;
		}
		return n * factorial(n - 1);
	}
	
	/*
	* Returns a vector that contains the digits of the number 'n'
	* e.g. The number 1974 will be transformed into a vector v = [1, 9, 7, 4]
	* param[in] n					The number to split into digits
	* param[in] v					The vector to fill up
	* param[in] reversed = false 	If the vector should contain the LSD on the leftmost index
	*/
	void num_to_digit_vector(int n, std::vector<int> & v, bool reversed = false){
		while(n > 0){
			v.push_back(n % 10);
			n /= 10;	
		}
		
		// The word 'reversed' has a double meaning here, the vector gets built in a reversed way.
		// So when the caller wants the vector in normal order, we have to reverse it
		if(!reversed){
			std::reverse(v.begin(), v.end());
		}
	}
}








#endif




