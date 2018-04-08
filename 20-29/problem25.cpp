#include <iostream>
#include "../Utils/chrono.cpp"
#include "../Utils/bigint.cpp"


int main(void){

	int index = 0;
	int digits = 3;
	
	Chrono c;
	c.start();

	bigint x(1645);
	std::cout << x << std::endl;
	bigint y(-1645);
	std::cout << y << std::endl;
	if(x == y){
		std::cout << "equal";
	}else{
		std::cout << "not equal";
	}
	c.stop();
	
	std::cout << "The index of the first term in the Fibonacci sequence to contain " << digits << " digits is " << index << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}





