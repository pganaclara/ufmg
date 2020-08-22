#include "List.hpp"

List::List(){
	_size = 0;
	_head = nullptr;
}

void List::insert(int value){
  Node* node = new Node();
	node->_value = value;
	node->_next = nullptr;
  if(_head == nullptr){
    _head = node;
    _toe = node;
  } else {
    _toe->_next = node;
    _toe = node;
  }
	_size++;
}

void List::clearList() {
	while (_size != 0){
    removeFirst();
  }
}

void List::print(){
	Node* head = _head;
	if (_size > 0){
		while(head){
			std::cout << head->_value << " ";
			head = head->_next;
		}
		std::cout<<std::endl;
	}
	else{
	    std::cout<< "-" <<std::endl;
		return;
	}
}

int List::removeFirst(){
  if (_size != 0){
    _size--;
    Node* current = _head;
	  _head = _head->_next;
    delete current;
			if (_size == 0){
				_head = nullptr;
				_toe = nullptr;
			}
	  return current->_value;
  } else {
    return 1;
  }
}

int List::indexOf(int value){
	if (_size > 0){
		Node* head = _head;
		int index = 0;
		while(head && head->_value != value){
			index++;
			head = head->_next;
		}
		if (head->_value == value)
			return index; 
		return 0;
	}
	else{
		return 0;
	}
}

void List::remove(int value){
	if(_size == 0){
		return;
	}
	else if(_head->_value == value){
		Node* current = _head;
		_head = _head->_next;
    _size--;
		delete current;
	}
	else{
		Node* previous = _head;
		Node* current = _head->_next;
		while(current != NULL) {
			if(current->_value == value) {
				break;
			}
			else {
				previous = current;
				current = current->_next;
			}
		}
		if(current == NULL) {
			return;
		}
		else {
			previous->_next = current->_next;
      _size--;
			delete current;
		}
	}
}