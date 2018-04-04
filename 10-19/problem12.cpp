#include <iostream>
#include <vector>
#include <map>
#include <cmath>
#include "../Utils/chrono.cpp"

std::map<int, int> num_of_divisors_per_triangle_number;


std::ostream& operator<<(std::ostream& out, const std::map<int, int> m){
	std::map<int, int>::const_iterator it = m.begin();
	while(it != m.end()){
		std::cout << it->first << ": " << it->second << std::endl;
		it++;
	}
}

int get_number_of_divisors(int n){
	int amount_of_divisors = 1;
	for(int i = n/2; i > 0; i--){
		//check if i already exists in the map
		if(n%i == 0){
			amount_of_divisors++;
		}
		/*
		if(num_of_divisors_per_triangle_number.count(i) == 1){
			std::cout << " + " <<  num_of_divisors_per_triangle_number[i];
			amount_of_divisors += num_of_divisors_per_triangle_number[i];
			break;
		}else if(n % i == 0){
			std::cout << " ++ ";
			amount_of_divisors++;
		}*/
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
	
	
	//std::cout << num_of_divisors_per_triangle_number;
	
	std::cout << current << " is the first triangle number to have over " << max_divisors << " divisors" << std::endl;
	std::cout << "Found answer in " << c.time() << " seconds" << std::endl;
		
	return 0;
}
