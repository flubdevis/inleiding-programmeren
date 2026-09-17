int[] mijnStapelGetallen = new int[10];
int count;

void setup(){
  mijnStapelGetallen[0] = 1;
  mijnStapelGetallen[1] = 2;
  mijnStapelGetallen[2] = 3;
  mijnStapelGetallen[3] = 4;
  mijnStapelGetallen[4] = 4;
  mijnStapelGetallen[5] = 4;
  mijnStapelGetallen[6] = 4;
  mijnStapelGetallen[7] = 4;
  mijnStapelGetallen[8] = 4;
  mijnStapelGetallen[9] = 4;
  
  for(int i = 0; i < mijnStapelGetallen.length; i++){
    if(mijnStapelGetallen[i] == 4){
      count++;
    }
  }
  println("4 komt",count,"keer voor");
}
