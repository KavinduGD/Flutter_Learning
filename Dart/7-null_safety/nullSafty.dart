void main() {
  //non-nulllable
  //never can't be null
  int x;
  int y = 12;

//can be null
  int? a;
  int? b = 12;
}

class Car {
  //nom-nullable - can't be null
  String make;
  String model;
  String yearMade;

  //nullable- can be null
  bool? hasABS;

  Car(this.make, this.model, this.yearMade);
}
