/*

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.
HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.
*/

#include <iostream>
#include <map>
#include "../Utils/chrono.cpp"


bool is_pandigital(int x, int y);


int main(void){
	Chrono c;
	c.start();
	int sum = 0;
	
	std::map<int, bool> already_exists;
	
	for(int i = 1; i < 10000; i++){
		for(int j = i; j < 10000; j++){
			if(is_pandigital(i, j)){
				int prod = i * j;
				if(already_exists.count(prod) == 0){
					sum += (prod);	
					already_exists[prod] = true;				
				}
			}
		}
	}
	
	c.stop();
	std::cout << "The sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital is " << sum << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}

bool is_pandigital(int x, int y){
	int product = x * y;
	int freq[10] = {0};
	
	while(x > 0){
		freq[x % 10]++;
		x /= 10;
	}
	
	while(y > 0){
		freq[y % 10]++;
		y /= 10;
	}
	
	while(product > 0){
		freq[product % 10]++;
		product /= 10;
	}
	
	if(freq[0] > 0){
		return false;
	}

	
	int i = 0;
	for(int i = 1; i < 10; i++){
		if(freq[i] != 1){
			return false;
		}
	}
	
	return true;
}


