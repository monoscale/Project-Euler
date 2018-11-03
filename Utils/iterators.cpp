#include <vector>
#include <map>
#include <set>

/*
* Code to write out various STL containers
*/



/*
* Prints out a vector in the following format:
*  [ 1 | 2 | 3 | ... | n ]
*/
template<typename T>
std::ostream& operator<<(std::ostream& out, const std::vector<T> & v){
	out << "[ ";
	typename std::vector<T>::const_iterator it = v.begin();
	out << *it++;
	while(it != v.end()){
		out << " | " << *it++;
	}
	out << " ]";
	out << std::endl;
	return out;
}

/*
* Prints out a set in the following format:
*  { 1 , 2 , 3 , ... , n } 
*/
template<typename T>
std::ostream& operator<<(std::ostream& out, const std::set<T> & s){
	out << "{ ";
	typename std::set<T>::const_iterator it = s.begin();
	out << *it++;
	while(it != s.end()){
		out  << " , " << *it++;
	}
	out << " }";
	out << std::endl;
	return out;
}

/*
* Prints out a map in the following format
* key1 -> value1\n
* key2 -> value2\n
*/
template<typename T, typename K>
std::ostream& operator<<(std::ostream& out, std::map<T, K> & m){
	typename std::map<T, K>::const_iterator it = m.begin();
	while(it != m.end()){
		out << it->first;
		out << " -> ";
		out << it->second;
		out << std::endl;
		it++;	
	}
	return out;
}


