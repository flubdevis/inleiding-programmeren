int score = 0;
int highScore;
int size = 0;
int appleY;
int appleX;
int moveTime;
int[] x = new int[1];
int[] y = new int[1];
boolean dead = false;
boolean rPressed = false;
String move = "";
void setup(){
size(800,800);
NewApple();
x[0] = 350;
y[0] = 350;
}

void draw() {
  background(250,200,150);
  //score display
  fill(0,0,0);
  textSize(20);
  text("score: " + score,680,50);
  text("hi-score: " + highScore,680,75);
  //move parts
if(size>0 && millis() - moveTime >=150){
  for(int i = x.length-1; i>=1; i--){
    x[i]=x[i-1];
  }
  }
  if(size>0 && millis() - moveTime >=150){
  for(int i = y.length-1; i>=1; i--){
    y[i]=y[i-1];
  }
  }
  //move head
  if (move == "UP" && !dead && millis() - moveTime >=150) {
       y[0] -= 50;
       moveTime = millis();
  }
  else if (move == "DOWN" && !dead && millis() - moveTime >=150){
    y[0] += 50;
    moveTime = millis();
  }
  else if (move == "LEFT" && !dead && millis() - moveTime >=150){
    x[0] -= 50;
    moveTime = millis();
  }
  else if (move == "RIGHT" && !dead && millis() - moveTime >=150){  
    x[0] += 50;
    moveTime = millis();
  } 
  //reset input
  else if (rPressed){
    reset();
    rPressed=false;
  }
  
  
//die when touching edges
  if(y[0] <= -50 || y[0] >= 800 || x[0] <= -50 || x[0] >= 800){
    
    dead = true;
}
//die when touching other parts
if(size>0){
 for(int i =1; i<x.length; i++){
  if(y[0]==y[i] && x[0]==x[i]){
  dead = true;
}

}
}
//death screen
if(dead){
  background(255,150,150);
  fill(0,0,0);
    textSize(50);
    text("game over! score: " + score, 200, 350);
    textSize(20);
    text("press r to try again", 300, 400);
}

//head
fill(220,170,150);
square(x[0],y[0],50);

//make new squares
if(size>0){
for(int i = 0; i<=size; i++){
  square(x[i],y[i],50);
}
}

//apple
fill(220,150,120);
circle(appleX,appleY,25);

//apple collision and grow snake
if(appleX == x[0] + 25  && appleY == y[0] + 25){
size++;
x = expand(x,x.length +1);
y = expand(y,y.length +1);
x[x.length-1] = 900;
y[y.length-1] = 900;
score += 10;
NewApple();
}

}

//spawn new apple
void NewApple(){
  appleX = (Math.round(random(0,15)) * 50 + 25);
  appleY = (Math.round(random(0,15)) * 50 + 25);
}

//reset game
void reset(){
  background(250,200,150);
  x = expand(x,1);
  y = expand(y,1);
  x[0] = 350;
  y[0] = 350;
  size = 0;
  move = "";
  rPressed = false;
  dead = false;
  if(score > highScore){
    highScore = score;
  }
  score = 0;
  NewApple();
}

//input
void keyPressed() {
  
 if (keyCode == UP && move != "DOWN" || key == 'w' && move != "DOWN") {
    move = "UP";
  } else if (keyCode == DOWN && move != "UP" || key == 's' && move != "UP") {
    move = "DOWN";
  } else if (keyCode == LEFT && move != "RIGHT" || key == 'a' && move != "RIGHT") {
    move = "LEFT";
  } else if (keyCode == RIGHT && move != "LEFT" || key == 'd' && move != "LEFT") {
    move = "RIGHT";
  } else if (key == 'r' && dead) {
    rPressed = true;
  }
}
