#include "Vec1D.hpp"

std::string Vec1D::to_string() const {
    return std::to_string(getX());
}

double Vec1D::get_norm() const {
  return _x;
}

