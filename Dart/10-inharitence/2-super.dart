class Vehicle {
  int? tires;

  Vehicle({this.tires}) {
    print("I am a Vehicle");
  }

  void display() {
    print("I have $tires tires");
  }
}

class Car extends Vehicle {
  int? airConditioner;

  Car(this.airConditioner, tires) : super(tires: tires) {
    print("I am a Car");
  }

  void display() {
    super.display();
    print("I have $airConditioner aire conditioner");
  }
}

void main(List<String> args) {
  var car = Car(1, 4);
  car.display();
}
