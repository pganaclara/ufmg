#ifndef WORD
#define WORD

#include <string>

class Word {

public:

	std::string word;
	int count;

	Word ();
	void incrementFreq ();
};

#endif
