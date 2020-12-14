#include "List.hpp"
#include "Node.hpp"
#include <iostream>

  List::List(){
    head = nullptr;
    toe = nullptr;
    tam = 0;
  }

  List::~List(){
    Node *previous = nullptr;
    Node *next = head;
    while (next != nullptr){
      previous = next;
      next = next->getNext();
      delete previous;
      tam--;
    }
  }
  
  void List::insert(int value){
    Node* novo = new Node(value, head);
    if(isEmpty()){
      head = novo;
      toe = novo;
    } else {
      novo->setNext(head);
      head = novo;
    }
    tam++;
  }

  int List::remove(){
    if (tam != 0){
      tam--;
      Node* current = head;
      head = head->getNext();
      return current->getData();
      delete current;
    } else {
      return 0;
    }
  }

  int List::isEmpty(){
    return (tam == 0);
  }

  unsigned List::size() const{ 
      return tam;
  }

  int List::middle() const{
    if (tam != 0){
      Node* percorre = head;
      for(int i = 0; i < (tam/2); i++){
        percorre = percorre->getNext();
      }
        return percorre->getData();
    }  else {
      return 0;
    }
  }

  int List::last() const{
    if (tam != 0){
      return toe->getData();
    } else {
      return 0;
    }
  }

  void List::rotate(){
    if (head == toe){
      return;
    }
    Node* aux = head;
    head = aux->getNext();
    aux->setNext(nullptr);
    toe->setNext(aux);
    toe = aux;
  }