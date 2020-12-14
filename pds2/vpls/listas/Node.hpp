#ifndef NODE
#define NODE

class Node {
  private:
    int _data;
    Node * _next;
  public:
    Node(int data, Node* next);
    ~Node();
    void setData(int data);
    void setNext(Node *next);
    int getData() const;
    Node* getNext() const;
};

#endif