int sizeC = 100;
int i = 0;

void setup(){
size(200,200);
background(255,255,255);
}

void draw(){
while(i<5){
  ellipse(150,100,sizeC,sizeC);
  i++;
  sizeC -=10;
  
}
}
