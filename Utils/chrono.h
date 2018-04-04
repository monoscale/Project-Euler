#ifndef __CHRONO
#define __CHRONO

#include <ctime>

class Chrono {
	public:
		void start();
		void stop();
		double time() const;
	private:
		clock_t begin;
		clock_t end;
};

#endif
