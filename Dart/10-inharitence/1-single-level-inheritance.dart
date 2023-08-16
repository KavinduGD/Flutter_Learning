class Vehicle {
  Vehicle() {
    print("I am a Vehicle");
  }
}

class Car extends Vehicle {
  Car() {
    print("I am a Car");
  }
}

void main(List<String> args) {
  Car car = new Car();
}
