#include "Stack.h"
#include <iostream>

struct Node {
  unsigned elem;
  Node* next;
};

void Stack::push(unsigned elem) {
    if (_top != nullptr){
        Node* temp = new Node;
        temp->elem = elem;
        temp->next = _top;
        _top = temp;
        _count++;
    }
}

void Stack::pop() {
  if (_count == 0){
      throw EmptyException();
  } else {
    _top = _top->next;
    _top[_count--];
  }
}

unsigned Stack::top() const {
  if (_count == 0){
      throw EmptyException();
  } else {
      return _top->elem;
  }
}

unsigned Stack::count() const {
  return _count;  
}