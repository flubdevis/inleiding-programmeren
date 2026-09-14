void setup(){
  size(400,400);
  background(255);
  tekenDriehoek(250,150,150,350,150,220);
}


void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3){
triangle(x1,y1,x2,y2,x3,y3);
}
