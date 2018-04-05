#include <iostream>
#include <vector>
#include "../Utils/chrono.cpp"
#include "../Utils/math.cpp"
#include "../Utils/iterators.cpp"

std::vector<int> coins = {1, 2, 5, 10, 20, 50, 100, 200};

/*
* Change making problem
* https://en.wikipedia.org/wiki/Change-making_problem
*/
int count(int n, int m){
	if(n < 0 || m < 0){
		return 0;
	}
	if(n == 0){
		return 1;
	}
	return count(n, m - 1) + count(n - coins[m], m);
}

int main(void){
	Chrono c;
	c.start();
	
	int limit = 200;
	int permutations = count(limit, coins.size());

	c.stop();

	std::cout << "There exists " << permutations << " ways to make 2 pounds by using any number of coins" << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
}
