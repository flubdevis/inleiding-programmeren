

void setup(){
 size(500,500);
 background(255,255,255);
 tekenVierkant(200,200,350,200);
}

void draw(){
}

void tekenVierkant(int x, int y, int w, int h){
  line(x,y,w,h);
  line(x,y+h,w,h+h);
  line(x,x+h,x,h);
  line(x*1.75,x+h,w,h);
}
