#include <iostream>
#include "../Utils/chrono.cpp"



int main(void){
	Chrono c;
	c.start();

	c.stop();

	
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
}
