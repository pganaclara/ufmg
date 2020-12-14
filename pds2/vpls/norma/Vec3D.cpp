#include "Vec3D.hpp"

std::string Vec3D::to_string() const {
    return std::to_string(getZ());
}

double Vec3D::get_norm() const {
  return sqrt(_x*_x+_y*_y+_z*_z);
}