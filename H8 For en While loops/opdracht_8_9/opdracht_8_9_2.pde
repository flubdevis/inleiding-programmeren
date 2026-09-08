size(800,800);
background(255,255,255);

int sizeC = 500;

for(int i = 0; i <50; i++){
  ellipse(150,100,sizeC,sizeC);
  sizeC = sizeC - 10;
  println(sizeC);
}
