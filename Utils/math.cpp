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
}







#endif




