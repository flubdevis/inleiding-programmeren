int A = 0;
int B = 1;
int C = 0;

while(C<60){
  C = A + B;
  A = B;
  B = C;
  println(C);
}
