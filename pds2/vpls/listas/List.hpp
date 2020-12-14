#ifndef LIST
#define LIST

#include <iostream>
#include "Node.hpp"

class List {
  public:
    List();
    ~List();
    void insert(int value);
    int remove();
    int isEmpty();
    unsigned size() const;
    int middle() const;
    int last() const;
    void rotate();
  private:
    Node *head;
    Node *toe;
    int tam;
};

#endif