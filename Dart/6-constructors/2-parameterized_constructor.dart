void main() {
  Car car1 = Car('Sri lanka', 's3', '2023', true);
  print(car1.make);
}

class Car {
  String make;
  String model;
  String yearMade;
  bool hasABS;

  // Car(String make, String model, int year, bool hasABS) {
  // 	this.make = make;
  //   	this.model = model;
  //   	this.yearMade = year;
  //   	this.hasABS = hasABS;
  // }
  Car(this.make, this.model, this.yearMade, this.hasABS);
}
