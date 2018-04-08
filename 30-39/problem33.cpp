

/*

The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify 
it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

There are exactly four non-trivial examples of this type of fraction, less than one in value, 
and containing two digits in the numerator and denominator.

If the product of these four fractions is given in its lowest common terms, find the value of the denominator.
*/

#include <iostream>
#include <cmath>
#include "../Utils/chrono.cpp"


int gcd(int a, int b){
	if(a < 0 || b < 0){
		return gcd(std::abs(a), std::abs(b));
	}
	if(a < b){
		return gcd(b, a);
	}
	if(b == 0){
		return a;
	}
	return gcd(b, a % b);
}

class fraction {
	public:
		fraction(int n = 1, int d = 1) : numerator(n), denominator(d) { };
		friend std::ostream& operator<<(std::ostream& out, const fraction & f){
			out << f.numerator << "/" << f.denominator;
		}
		
		/*
		* A fraction can be a candidate if the same digit exists in the numerator and denominator
		*/
		bool attempt_to_cancel(){

		}
		

		
	private:
		int numerator;
		int denominator;
};



int main(void){
	
	Chrono c;
	c.start();
	for(int i = 10; i < 100; i++){
		for(int j = (i + 1); j < 100; j++){
			fraction f(i, j);
		    if(f.attempt_to_cancel()){
		    	std::cout << f << std::endl;
			}
		}
	}
	c.stop();
		
	std::cout << "Found the answer in " << c.time() << " seconds" << std::endl;
	return 0;
}
