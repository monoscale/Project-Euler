#include <iostream>
#include "../Utils/chrono.cpp"


int main(void){

	int index = 0;
	int digits = 3;
	
	Chrono c;
	c.start();


	c.stop();
	
	std::cout << "The index of the first term in the Fibonacci sequence to contain " << digits << " digits is " << index << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
}





