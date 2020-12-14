#include <iostream>

#include "Point.h"

std::ostream & operator << (std::ostream &out, const Point &c) {
  return out << "(" << c.getX() << ", "<< c.getY() << ")";
}

std::istream & operator >> (std::istream &in,  Point &c) {
  return in >> c._x >> c._y;
}

Point Point::operator + (const Point &p) {
  Point point;
  point._x = this->_x + p.getX();
  point._y = this->_y + p.getY();

  return point;
}

Point& Point::operator += (const Point &p) {
  this->_x += p.getX();
  this->_y += p.getY();

  return *this;
}