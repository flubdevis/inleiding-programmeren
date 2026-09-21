void setup() {
  BankAccount newBank = new BankAccount("Gerard");
  newBank.stort(100.03);
  newBank.neemOp(44.44);
  newBank.create();
}

class BankAccount {
  String name;
  float saldo = 0;
  int accountnr;
  
    void gennr(){
    float gen = random(100000,999999);
    accountnr = Math.round(gen);
  }
  
  BankAccount(String name) {
    this.name = name;
  }
  
  void stort(float ta){
    saldo = saldo + ta;
    println("+",ta);
  }
  
   void neemOp(float ta){
    if(saldo-ta >=0){
    saldo = saldo - ta;
    println("-",ta);
    } else {
      println("te weinig saldo");
    }
  }

  void create() {
    gennr();
    println("eigenaar:",name);
    println("accountNr:",accountnr);
    println("saldo:", saldo);
  }
}
