int mijnGetal = 8;
int gemiddeldeGetal;

void setup(){
    gemiddeldeGetal = mijnMethode(mijnGetal,6);
    println(gemiddeldeGetal);
}

void draw(){
  
}


int mijnMethode(int getal, int getaltwee){
  int gemiddelde = (getal + getaltwee) / 2;
  return gemiddelde;
}
