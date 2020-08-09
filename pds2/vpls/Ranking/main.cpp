#include "Estudante.hpp"

#include <iostream>
#include <string>
#include <iomanip>
#include <list>

int main(){
  std::string nome;
  int matricula;
  float notas[5];
  std::list<Estudante> listaEstudantes;
  Estudante estudante;

  for (int j = 1; j <= 2; j++){
    std::cin >> estudante.matricula >> estudante.nome;
    Estudante* ej = new Estudante;

    for (int i = 0; i < 5; i++){
      std::cin >> estudante.notas[i];
      ej->notas[i] = estudante.notas[i];
    }

    std::cout << std::fixed << std::showpoint; 
    std::cout << std::setprecision(2);

    estudante.notas[0] = ej->calcularRSG();

    listaEstudantes.push_back(estudante);
  }

  return 0;
}
