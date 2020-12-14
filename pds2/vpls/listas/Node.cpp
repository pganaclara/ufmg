#include "Node.hpp"
#include <iostream>

  Node::Node(int data, Node* next){
    _data = data;
    _next = next;
  }

  Node::~Node(){
    if(_next != nullptr)
      delete this->_next;
  }

  void Node::setData(int data){
    _data = data;
  }
  
  void Node::setNext(Node *next){
    _next = next;
  }
    
  int Node::getData() const{
    return this->_data;
  }
  
  Node* Node::getNext() const{
    return this->_next;
  }