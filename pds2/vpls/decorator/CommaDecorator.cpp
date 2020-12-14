#include <sstream>

#include "CommaDecorator.hpp"

std::string CommaDecorator::toString() {
  return ", " + StreamDecorator::toString() + " ,";
}