int x = 350;
int y = 350;
int prevX;
int prevY;
int score = -10;
int highScore;
int prevSize;
int size = -1;
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
  text("hi-score: " + highScore,700,75);
    
      prevY=y;
    prevX=x;
    
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

if(size>0){
  for(int i = 0; i<=size; i++){
    fill(220,180,160);
    square(prevX,prevY,50);
  }
}
//square(prevX,prevY,50);
//spawn new cubes (need to fix)
/*if(size>0){
 fill(220,180,160);
 for(int i = 0; i<=size; i++){
   square(x-i*50,y+i*50,50);
 }
}*/

//apple
fill(220,150,120);
circle(appleX,appleY,25);

if(appleX == x + 25  && appleY == y + 25){
  eaten = true;
}

if(eaten){
NewApple();
prevSize = size;
size++;
score += 10;
}

/*if(size>prevSize && prevSize !=-1){
  println("u should grow bigger rn");
  prevSize = size;
}*/
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
  prevSize = 0;
  size = -1;
  upPressed = false;
  downPressed = false;
  leftPressed = false;
  rightPressed = false;
  rPressed = false;
  dead = false;
  dir = "";
  if(score > highScore){
    highScore = score;
  }
 
  score = -10;
  eaten = true;
  
  
}

//input
void keyPressed() {
  
 if (keyCode == UP && !downPressed || key == 'w' && !downPressed) {
    upPressed = true;
    downPressed = false;
    leftPressed = false;
    rightPressed = false;
    dir = "UP";
  } else if (keyCode == DOWN && !upPressed || key == 's' && !upPressed) {
    downPressed = true;
    upPressed = false;
    leftPressed = false;
    rightPressed = false;
    dir = "DOWN";
  } else if (keyCode == LEFT && !rightPressed || key == 'a' && !rightPressed) {
    leftPressed = true;
    rightPressed = false;
    upPressed = false;
    downPressed = false;
    dir = "LEFT";
  } else if (keyCode == RIGHT && !leftPressed || key == 'd' && !leftPressed) {
    rightPressed = true;
    leftPressed = false;
    upPressed = false;
    downPressed = false;
    dir = "RIGHT";
  } else if (key == 'r' && dead) {
    rPressed = true;
  }
}
