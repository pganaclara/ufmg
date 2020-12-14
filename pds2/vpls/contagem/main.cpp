#include <iostream>
#include "WordCounter.hpp"

int main() {

	WordCounter *wc = new WordCounter(100);
	std::string s;
	std::cin >> s;
	while (s != ".") {
		wc->addWord(s);
		std::cin >> s;
	}
	wc->print();

	return 0;
}