void main() {
  Person p1 = new Person("kavindu");
  p1.printName();
}

class Person {
  String firstName = "kk";

  Person(this.firstName);

  void printName() {
    print(this.firstName);
  }
}
