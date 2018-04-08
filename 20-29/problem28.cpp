#include <iostream>
#include "../Utils/chrono.cpp"

/*
21 22 23 24 25
20  7  8  9 10
19  6  1  2 11
18  5  4  3 12
17 16 15 14 13
*/

/*
* Looking at the spiral, we can always see 4 corners. 
* The first group of corners is 3, 5, 7 and 9
* The second group of corners is 13, 17, 21, 25
* These corners are a fixed amount away from each other, called 'step' in this program
* Everytime we have visited 4 corners, we can increase the step by 2.
*/

int main(void){
	Chrono c;
	c.start();
	
	int sum = 1,
		step = 2,
		diagonalcount = 0,
		previousdiagonal = 1,
		dimension = 1001;
		
	while(previousdiagonal < (dimension * dimension)){
		if(diagonalcount == 4){
			diagonalcount = 0;
			step += 2;
		}
		int to_add = previousdiagonal + step;
		sum += to_add;
		previousdiagonal = to_add;
		diagonalcount++;		
	}

	c.stop();
	
	std::cout << "The sum of the numbers on the diagonals in a " << dimension <<  " by " << dimension << " spiral is " << sum << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}
