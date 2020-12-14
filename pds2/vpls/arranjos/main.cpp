#include <iostream>

#include "RingArray.h"

template <class T, unsigned N>
void RingArray<T, N>::add(T value) {
  if (!isFull()){
    buf[_last] = value;
    _last++;
  } else {
    std::cout << "Erro: anel cheio";
    exit(1);
  }
}

template <class T, unsigned N>
T RingArray<T, N>::get() {
  if (!isEmpty()){
    T aux;
    aux = buf[_first];
    for (int i = _first; i < _last; i++){
      buf[i] = buf[i+1];
    }
    _last--;
    return aux;
  } else {
    std::cout << "Erro: anel vazio";
    exit(1);
  }
}

template <class T, unsigned N>
bool RingArray<T, N>::isFull() const {
  return (_last == N-1);
}

template <class T, unsigned N>
bool RingArray<T, N>::isEmpty() const {
  return (_last == _first);
}

template <class T>
void test_add_then_get() {
  RingArray<T, 8> r;
  T value;
  while (std::cin >> value) {
    r.add(value);
  }
  while (!r.isEmpty()) {
    std::cout << r.get() << std::endl;
  }
}

template <class T>
void test_add_or_get() {
  RingArray<T, 8> r;
  T value;
  char c;
  while (std::cin >> c) {
    if (c == '+') {
      std::cin >> value;
      r.add(value);
    } else if (c == '-') {
      std::cout << r.get() << std::endl;
    } else {
      std::cout << "Invalid operation\n";
    }
  }
}

int main () {
  char data;
  while (std::cin >> data) {
    switch (data) {
      case 'd': test_add_then_get<double>();
                break;
      case 's': test_add_then_get<std::string>();
                break;
      case 'D': test_add_or_get<double>();
                break;
      case 'S': test_add_or_get<std::string>();
                break;
      default: std::cout << "Invalid type\n";
    }
  }
  return 0;
}