#ifndef RING_ARRAY_H
#define RING_ARRAY_H

template <class T, unsigned N> class RingArray {
  public:
    RingArray(): _first(0), _last(0) {}
    void add(T value);
    T get();
    bool isFull() const;
    bool isEmpty() const;

  private:
    unsigned _first; 
    unsigned _last;
    T buf[N]; 
};

#endif