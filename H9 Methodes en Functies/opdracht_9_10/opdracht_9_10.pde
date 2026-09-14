
void setup(){
  size(450,450);
  background(100,150,255);
  tekenBos();
}

void tekenBoom(int x){
  
  fill(255,100,0);
  rect(x,300,50,150);
  fill(0,255,0);
  ellipse(x+25,225,175,175);

  
}

void tekenBos(){
tekenBoom(50);
tekenBoom(100);
tekenBoom(150);
tekenBoom(200);
tekenBoom(250);
tekenBoom(300);
tekenBoom(350);
}
