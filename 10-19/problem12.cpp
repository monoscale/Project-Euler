#include <iostream>
#include <vector>
#include <map>
#include <cmath>
#include "../Utils/chrono.cpp"

int get_number_of_divisors(int n){
	int amount_of_divisors = 1;
	for(int i = n/2; i > 0; i--){
		if(n%i == 0){
			amount_of_divisors++;
		}
	}
	
	return amount_of_divisors;
}

int main(void){
	int to_add = 2;
	int current = 1;
	int max_divisors = 500;
	
	Chrono c;
	c.start();
	
	while(get_number_of_divisors(current) < max_divisors){
		current += to_add++;
	}
	
	c.stop();
	
	std::cout << current << " is the first triangle number to have over " << max_divisors << " divisors" << std::endl;
	std::cout << "Found answer in " << c.time() << " seconds" << std::endl;
		
	return 0;
}
