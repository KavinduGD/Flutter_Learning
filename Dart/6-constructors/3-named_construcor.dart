void main() {
  Car car1 = Car('Sri lanka', 's3', '2023', true);
  Car car2 = Car.named1('Sri lanka', 's3', '2023', true);
  Car car3 = Car.named2('Sri lanka', 's3', '2023');

  car3.hasABS = true;

  print(car3.hasABS);
}

class Car {
  String? make;
  String? model;
  String? yearMade;
  bool? hasABS;

  Car(this.make, this.model, this.yearMade, this.hasABS);

  Car.named1(this.make, this.model, this.yearMade, this.hasABS);

  // Car.named(make, model, year, hasABS) {
  //   this.make = make;
  //   this.model = model;
  //   this.yearMade = year;
  //   this.hasABS = hasABS;
  // }

  Car.named2(this.make, this.model, this.yearMade) : hasABS = false {
    print("sdsd");
  }

  Car.named3(this.make, this.model, this.yearMade, this.hasABS);
}
