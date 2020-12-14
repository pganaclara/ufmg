#ifndef WORDCOUNT
#define WORDCOUNT

#include <map>
#include <vector>
#include <iostream>
#include <string>
#include "Word.hpp"

class WordCounter {

public:
    std::map <std::string, int> Words;
	Word *words;
	int size = 0;

	WordCounter(int num_words);
	~WordCounter();
	void addWord(std::string w);
	void print() const;
};

#endif