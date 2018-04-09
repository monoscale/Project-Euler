#include <iostream>
#include <fstream>
#include "../Utils/chrono.cpp"

const std::string FILENAME = "p042_words.txt";

int t(int n){
	return (n*(n + 1)) / 2;
}

bool is_triangle_number(int total){
	int i = 1;
	while(t(i) < total){
		i++;
	}
	
	return t(i) == total;
}

bool is_triangle_word(std::string word){
	int max = 26 * word.size(); // the maximum amount this word can ever have, in case the whole word constists of Z
	
	int total = 0;
	std::string::iterator it = word.begin();
	while(it != word.end()){
		total += (*it++ - 'A' + 1);
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



