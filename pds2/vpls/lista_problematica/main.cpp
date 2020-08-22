#include <iostream>
#include "List.hpp"

int main(){
  int N, K;

  std::cin >> N >> K;
  List *L = new List();
    
  for (int i = N; i >= 0; i--){
    L->insert(i); //insere um a um os elementos [N, 0]
  }

  L->print();
  std::cout << L->_size << std::endl;

  for (int j = 0; j < K; j++){
    L->removeFirst(); // remove os primeiros elementos k vezes
  }

  L->print();
  std::cout << L->_size << std::endl;

  for (int k = 0; k <= N; k+=2) {
    L->remove(k); // começa retirando o 0 e vai de 2 em 2, tirando os pares
  }

  L->print();
  std::cout << L->_size << std::endl;

  L->clearList();
  delete L;
	return 0;
}