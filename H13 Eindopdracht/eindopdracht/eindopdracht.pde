int x;
int y;
int score;
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;

void setup(){
size(600,700);

}

void draw() {
  
  background(250,200,150);
   fill(0,0,0);
    textSize(20);
    text("score: "+score,500,50);
   if (upPressed) {
       y-=50;
       println(y);
      delay(80);
  }
   else if (downPressed){
    y+=50;
    delay(80);
  }
   else if (leftPressed){
    
    x -= 50;
    delay(80);
  }
   else if (rightPressed){
     
    x += 50;
    delay(80);
  }
  if(y<=-50 || y>=650 || x<=-50 || x>=550){
    println("game over! score:", score);
    fill(0,0,0);
    textSize(50);
    text("game over! score: " + score, 100, 350);
    textSize(20);
    text("press r to try again", 200, 400);
    stop();
    
}
fill(220,170,150);
square(x,y,50);
/*square(x+50,y,50);
square(x+100,y,50);
square(x+150,y,50);*/


}

void kill(){
  
}
void keyPressed() {
 if (keyCode == UP) {
    upPressed = true;
    downPressed = false;
    leftPressed = false;
    rightPressed = false;
  } else if (keyCode == DOWN) {
    downPressed = true;
    leftPressed = false;
    rightPressed = false;
    upPressed = false;
  } else if (keyCode == LEFT) {
    leftPressed = true;
    rightPressed = false;
    upPressed = false;
    downPressed = false;
  } else if (keyCode == RIGHT) {
    rightPressed = true;
     upPressed = false;
    downPressed = false;
    leftPressed = false;
  }
}

/*void keyReleased() {
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
}*/
