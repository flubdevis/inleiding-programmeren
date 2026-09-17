boolean gevonden;
String[] namen = {"Jan","Pieter","Henk","Twan","Bas","Bram","Jantje"};

void setup(){
  for(int i = 0; i<namen.length; i++){
  if(namen[i] == "Jan"){
    gevonden = true;
  }
  }
  println(gevonden);
}
