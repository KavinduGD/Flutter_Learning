void main() {
  Car car1 = Car('Sri lanka', 's3', '2023', true);
  Car car2 = Car.named('Sri lanka', 's3', '2023');

  print(car1.hasABS);
  print(car2.hasABS);
}

class Car {
  final String? make;
  final String? model;
  final String? yearMade;
  final bool? hasABS;

  const Car(this.make, this.model, this.yearMade, this.hasABS);

  const Car.named(this.make, this.model, this.yearMade) : hasABS = true;
}
