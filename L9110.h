#ifndef L9110_h
#define L9110_h

class L9110 {
  public:
    L9110();
    void forward(int l, int r, int t);
    void reverse(int l, int r, int t);
    void rotate(int l, int r, int t);
    void brake(int t);
    void drive(int l, int r, int t);
};
#endif
