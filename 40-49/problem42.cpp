#include <iostream>
#include <fstream>
#include "../Utils/chrono.cpp"

const std::string FILENAME = "p042_words.txt";

/*
* Generates the triangle number for the input parameter
*
* param[in] n      	Which triangle number to find
* param[out] int    The n-th triangle number
*/
int t(int n){
	return (n*(n + 1)) / 2;
}

/*
* Iterates the set of triangle numbers until a number is found that is larger than the input parameter
*
* param[in] n		The number to to find
* param[out] bool   True if n is a triangle number, otherwise false
*/
bool is_triangle_number(int n){
	int i = 0;
	while(t(++i) < n);
	return t(i) == n;
}

/*
* Finds out wether or not a given word is a triangle word. 
* This means that each letter value of the word adds up to a triangle number
* e.g. : SKY = 19 + 15 + 25 = 55, 55 is a triangle number
*
* param[in]  word    The word that needs to be investigated
* param[out] bool	 True if the word is a triangle word, otherwise false
*/
bool is_triangle_word(std::string word){
	int total = 0;
	std::string::iterator it = word.begin();
	while(it != word.end()){
		total += (*it++ - 'A' + 1); // get value of 'it', subtract 'A' to get numeric value, add 1 because A = 1 and increment pointer
	}
	return is_triangle_number(total);
}

int main(void){
	Chrono c;
	c.start();
	
	std::ifstream data(FILENAME.c_str(), std::ios::in);
	if(!data.is_open()){
		std::cerr << "Could not open file: " << FILENAME << std::endl;
		return -1;
	}
	
	int triangle_count = 0;
	std::string word;
	while(std::getline(data, word, ',')){
		word = word.substr(1, word.size() - 2); // get rid of double quotes
		if(is_triangle_word(word)){
			triangle_count++;
		}
	}
	
	data.close();
	c.stop();
	
	std::cout << "There are " << triangle_count << " triangle words" << std::endl;
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}



