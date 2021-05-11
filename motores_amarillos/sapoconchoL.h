#ifndef sapoconchoL
#define sapoconchoL

class sapoconchoL {
  public:
    sapoconchoL(int ain1, int bin1, int pwma, int pwmb);
    void forward(int l, int r, int t);
    void reverse(int l, int r, int t);
    void rotate(int l, int r, int t);
    void brake(int t);
    void drive(int l, int r, int t);
  private:
    int _ain1;
    int _bin1;
    int _pwma;
    int _pwmb;
}; 

#endif
