void setup(){
  size(400,400);
  Rectangle myRectangle = new Rectangle(150,150,50,150);
  myRectangle.display();
}

class Rectangle {
  float x;
  float y;
  float w;
  float h;
  
  Rectangle(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void display() {
    rect(x,y,w,h);
  }
}
