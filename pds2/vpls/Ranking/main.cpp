#include "Estudante.hpp"

#include <iostream>
#include <string>
#include <iomanip>
#include <vector>
#include <algorithm>

int main(){
  std::string nome;
  int matricula;
  float notas[5];
  std::vector<Estudante> listaEstudantes;
  Estudante estudante;

  for (int j = 1; j <= 10; j++){
    std::cin >> estudante.matricula >> estudante.nome;
    Estudante* temp = new Estudante;

    for (int i = 0; i < 5; i++){
      std::cin >> estudante.notas[i];
      temp->notas[i] = estudante.notas[i];
    }

    std::cout << std::fixed << std::showpoint; 
    std::cout << std::setprecision(2);

    estudante.notas[0] = temp->calcularRSG();

    listaEstudantes.push_back(estudante);
  }

    std::sort( listaEstudantes.begin(), listaEstudantes.end(), 
    []( const Estudante& a, const Estudante&b ){
        return a.notas[0] > b.notas[0];
    } );
    
    std::vector<Estudante>ranking;
    ranking = std::vector<Estudante>(listaEstudantes.begin(), listaEstudantes.begin() + 3);

    for (auto const &a : ranking){
        std::cout << a.matricula << " " << a.nome << " " << a.notas[0]  << std::endl;
    }
    
    
  return 0;
}