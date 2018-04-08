#include <iostream>
#include <cmath>
#include <vector>
#include <map>
#include "../Utils/chrono.cpp"

bool is_abundant(int n);

int main(void){
	Chrono c;
	c.start();
	
	std::vector<int> abundant_numbers;
	const int n = 28123;
	for(int i = 2; i <= n; i++){
		if(is_abundant(i)){
			abundant_numbers.push_back(i);
		}
	}
	
	std::vector<bool> can_be_written_as_abundant(n);
	for(int i = 0; i < abundant_numbers.size(); i++){
		for(int j = i; j < abundant_numbers.size(); j++){
			if(abundant_numbers[i] + abundant_numbers[j] <= n){
				can_be_written_as_abundant[abundant_numbers[i] + abundant_numbers[j]] = true;
			}
		}
	}
	
	int sum = 0;
	for(int i = 0; i < n; i++){
		if(!can_be_written_as_abundant[i]){
			sum += i;
		}
	}

	c.stop();
	
	std::cout << "The sum of all the positive integers which cannot be written as the sum of two abundant numbers is " << sum << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}

bool is_abundant(int n){
	int sum = 0;
	for(int i = 1; i <= n/2; i++){
		if(n%i == 0){
			sum += i;
		}
	}
	return sum > n ? true : false;
}



