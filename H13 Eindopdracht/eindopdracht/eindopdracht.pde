int x = 350;
int y = 350;
int score = -10;
int highscore;
int size;
int appleY;
int appleX;
boolean dead = false;
boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
boolean rPressed = false;
boolean eaten = true;
void setup(){
size(800,800);
}

void draw() {
  
  background(250,200,150);
  
  fill(0,0,0);
  textSize(20);
  text("score: " + score,700,50);
  text("hi-score: " + highscore,700,75);
    
    
  if (upPressed && !dead) {
       y -= 50;
      delay(100);
  }
  else if (downPressed && !dead){
    y += 50;
    delay(100);
  }
  else if (leftPressed && !dead){
    x -= 50;
    delay(100);
  }
  else if (rightPressed && !dead){  
    x += 50;
    delay(100);
  } 
  else if (rPressed){
    reset();
    rPressed=false;
  }
  
  
  
  if(y <= -50 || y >= 750 || x <= -50 || x >= 750){
    fill(0,0,0);
    textSize(50);
    text("game over! score: " + score, 200, 350);
    textSize(20);
    text("press r to try again", 300, 400);
    dead = true;
    
}



//snake
fill(220,170,150);
square(x,y,50);

//apple
fill(220,150,120);
circle(appleX,appleY,25);

if(appleX == x + 25  && appleY == y + 25){
  eaten = true;
}

if(eaten){
NewApple();
size++;
score += 10;
}

}

void NewApple(){

  appleX = (Math.round(random(0,15)) * 50 + 25);
  appleY = (Math.round(random(0,15)) * 50 + 25);
  eaten = false;
}

//reset game
void reset(){
  x = 350;
  y = 350;
  size = 0;
  upPressed = false;
  downPressed = false;
  leftPressed = false;
  rightPressed = false;
  rPressed = false;
  dead = false;
  if(score > highscore){
    highscore = score;
  }
  
  score = -10;
  eaten = true;
}

//input
void keyPressed() {
 if (keyCode == UP || key == 'w' && !downPressed) {
    upPressed = true;
    downPressed = false;
    leftPressed = false;
    rightPressed = false;
  } else if (keyCode == DOWN || key == 's' && !upPressed) {
    downPressed = true;
    upPressed = false;
    leftPressed = false;
    rightPressed = false;
  } else if (keyCode == LEFT || key == 'a' && !rightPressed) {
    leftPressed = true;
    rightPressed = false;
    upPressed = false;
    downPressed = false;
  } else if (keyCode == RIGHT || key == 'd' && !leftPressed) {
    rightPressed = true;
    leftPressed = false;
    upPressed = false;
    downPressed = false;
  } else if (key == 'r' && dead) {
    rPressed = true;
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
