void setup() {
  Person p = new Person("Gerard", 12, "male");
  p.display();
}

class Person {
  String name;
  int age;
  String gender;
  
  Person(String name, int age, String gender) {
    this.name = name;
    this.age = age;
    this.gender = gender;
  }
  
  void display() {
    println("name:",name);
    println("age:",age);
    println("gender:",gender);
  }
}
