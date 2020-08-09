#include <cmath>

#include "Circunferencia.hpp"

    Circunferencia::Circunferencia(double xc, double yc, double raio) {
        _xc = xc;
        _yc = yc;
        _raio= raio;
    }
    
    double Circunferencia::calcularArea() {
        return 3.14 * (_raio * _raio);
    }
    
    bool Circunferencia::possuiIntersecao(Circunferencia* c) {
        if (sqrt((_xc - c->_xc)*(_xc - c->_xc)+(_yc - c->_yc)*(_yc - c->_yc)) <= (_raio + c->_raio))  {
            return true; //distancia entre os pontos do centro é menor ou igual a soma dos raios
        } else {
            return false;
        }
    }