int x;
int y;
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;

void setup(){
size(600,700);

}

void draw() {
  
  background(250,200,150);
  
   if (upPressed) {
      //rotate the object
      delay(80);
  }
   else if (downPressed && y<550){
    y+=50;
    delay(80);
  }
   else if (leftPressed && x>-50){
    
    x -= 50;
    delay(80);
  }
   else if (rightPressed && x<400){
     
    x += 50;
    delay(80);
  }
fill(220,170,150);
square(x+50,y+50,50);
square(x+100,y+50,50);
square(x+150,y+50,50);
square(x+150,y+100,50);


}

void keyPressed() {
 if (keyCode == UP) {
    upPressed = true;
  } else if (keyCode == DOWN) {
    downPressed = true;
  } else if (keyCode == LEFT) {
    leftPressed = true;
  } else if (keyCode == RIGHT) {
    rightPressed = true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    upPressed = false;
  }
  else if (keyCode == DOWN) {
    downPressed = false;
  }
  else if (keyCode == LEFT) {
    leftPressed = false;
  }
  else if (keyCode == RIGHT) {
    rightPressed = false;
  }
}
