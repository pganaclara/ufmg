#ifndef GET_MAX_H
#define GET_MAX_H

#include <iostream>

struct BitSet {
  BitSet(unsigned value): _set(value) {}
  const unsigned _set;
  friend std::ostream & operator<<(std::ostream& os, const BitSet& i) {
    const int limit = sizeof(unsigned) * 8;
    os << '<';
    for (int aux = 0; aux < limit; aux++) {
      unsigned mask = 1 << aux;
      if (i._set & mask) {
        os << "|";
      } else {
        os << "-";
      }
    }
    os << '>';
    return os;
  } 
  
  bool operator>=(const BitSet& aux){
    return (_set& aux._set) == aux._set ? true : false;
  } 
};

struct Interval {
  Interval(int left, int right): _l(left), _r(right) {}
  const int _l;
  const int _r;
  friend std::ostream & operator<<(std::ostream& os, const Interval& i) {
    os << '(' << i._l << ", " << i._r << ')';
    return os;
  }
  bool operator>=(const Interval& aux){
    return (_l <= aux._l && _r >= aux._r) ? true: false;
  }  
};

template <class T>
T GetMaxDefault (T a, T b, T dflt) {
  if (a >= b){
    return a;
  } else if (b >= a){
    return b;
  } else {
    return dflt;
  }
}

#endif