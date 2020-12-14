#include <sstream>

#include "NumberDecorator.hpp"

std::string NumberDecorator::toString() {
    return "+ " + StreamDecorator::toString() + " +";
}