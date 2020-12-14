#include <iostream>

template <class T, int N> class BoundedArray {
  public:
    void set(int index, T value) {
        if (index < 0){
            std::cout << "Erro: indice negativo." << std::endl;
        } else if(index >= N) {
            std::cout << "Erro: indice maior que arranjo." << std::endl;
        } else {
           buf[index] = value;
           isSet[index] = true;
        }
    }
    void get(int index) {
        if (index < 0){
            std::cout << "Erro: indice negativo." << std::endl;
        } else if(index >= N) {
            std::cout << "Erro: indice maior que arranjo." << std::endl;
        } else if (isSet[index] != true){
            std::cout << "Erro: indice nao inicializado." << std::endl;
        } else {
            std::cout << buf[index] << std::endl;
        }
    }
    
  private:
    T buf[N];
    bool isSet[N];
};

template <class T> void testArray() {
  BoundedArray<T, 8> a;
  char action;
  while (std::cin >> action) {
    int index;
    std::cin >> index;
    try {
      if (action == 's') {
        T value;
        std::cin >> value;
        a.set(index, value);
      } else if (action == 'g') {
        a.get(index);
      }
    } catch (...) {
      std::cerr << "Erro desconhecido." << std::endl;
    }
  }
}

int main() {
  char type;
  std::cin >> type;
  switch(type) {
    case 'd':
      testArray<double>();
      break;
    case 'i':
      testArray<int>();
      break;
    case 's':
      testArray<std::string>();
      break;
  }
  return 0;
}