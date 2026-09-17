int[] mijnStapelGetallen = new int[10];
int count = 0;
void setup(){
  mijnStapelGetallen[0] = 1;
  mijnStapelGetallen[1] = 3;
  mijnStapelGetallen[2] = 3;
  mijnStapelGetallen[3] = 4;
  mijnStapelGetallen[4] = 4;
  mijnStapelGetallen[5] = 4;
  mijnStapelGetallen[6] = 4;
  mijnStapelGetallen[7] = 4;
  mijnStapelGetallen[8] = 4;
  mijnStapelGetallen[9] = 4;
  telHoeVaakGetalVoorkomt(4);
    telHoeVaakGetalVoorkomt(3);
}

void telHoeVaakGetalVoorkomt(int getal){
  for(int i = 0; i < mijnStapelGetallen.length; i++){
    if(mijnStapelGetallen[i] == getal && i<mijnStapelGetallen.length){
      count++;
    }
  }
            println(getal,"komt",count,"keer voor");
            count = 0;
}
