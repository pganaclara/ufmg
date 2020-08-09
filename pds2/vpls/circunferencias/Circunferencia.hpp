#ifndef CIRCUNFERENCIA_HPP
#define CIRCUNFERENCIA_HPP

struct Circunferencia { 
    //Dados
    double _xc, _yc, _raio; //coordenadas do centro e comprimento do raio, respectivamente

    Circunferencia(double, double, double); //Construtor

    //Operacoes
    double calcularArea();
    bool possuiIntersecao(Circunferencia* c); 
};

#endif