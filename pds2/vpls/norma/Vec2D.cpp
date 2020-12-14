#include "Vec2D.hpp"

std::string Vec2D::to_string() const {
    return std::to_string(getY());
}

double Vec2D::get_norm() const {
  return sqrt(_x*_x+_y*_y);
}