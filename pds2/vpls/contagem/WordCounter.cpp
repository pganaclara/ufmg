#include "WordCounter.hpp"
#include "Word.hpp"

WordCounter::WordCounter(int num_words) {
	words = new Word[num_words];
}

WordCounter::~WordCounter() {
  delete words;
}

void WordCounter::addWord(std::string w){
  Words[w]+=1;
}


void WordCounter::print() const {
  for (auto i : Words){
    std::cout << i.first << " " << i.second << std::endl;
  }
}

