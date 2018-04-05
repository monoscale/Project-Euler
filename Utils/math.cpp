#ifndef __PE_MATH
#define __PE_MATH

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
}








#endif




