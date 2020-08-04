// O objetivo desse problema é praticar a questão de entrada e saída via console.

// Escreva um programa que lê um número inteiro e escreve como saída uma pirâmide formada por '*' que possui altura igual ao valor lido. Por exemplo:

// Entrada: 5

// Saída:
// *
// **
// ***
// ****
// *****
// ****
// ***
// **
// *

#include <iostream>

int main() {
  int num, i, j;

  std::cin >> num;

  for(i=0;i<=num;i++){
    for(j=0;j<i;j++){
      std::cout << "*";
    }
    std::cout << "\n";
  }

  for(i=num;i>=0;i--){
    for(j=0;j<i;j++){
      std::cout << "*";
    }
    std::cout << "\n";
  }
}