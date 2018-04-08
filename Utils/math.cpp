#ifndef __PE_MATH
#define __PE_MATH

#include <vector>
#include <cmath>

namespace math{	
	bool is_prime(int n){
		if(n < 0){
			return false;
		}
		for(int i = 2; i < std::sqrt(n); i++){
			if(n % i == 0){
				return false;
			}
		}
		return true;
	}	
	
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
	
	int factorial(int n){
		if(n <= 1){
			return 1;
		}
		return n * factorial(n - 1);
	}
	
	void num_to_digit_vector(int n, std::vector<int> & v){
		while(n > 0){
			v.push_back(n % 10);
			n /= 10;
			
		}
	}
}








#endif




