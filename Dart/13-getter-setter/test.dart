class Vehicle {
  String make;
  String model;

  Vehicle(
    this.make,
    this.model,
  );

  String get veh_make {
    return make;
  }

  String get veh_model {
    return model;
  }

  void set veh_make(String make) {
    this.make = make;
  }

  void set veh_model(String model) {
    this.model = model;
  }
}

void main(List<String> args) {
  Vehicle c1 = new Vehicle("2022", "BMW");
  print(c1.veh_make);
  print(c1.veh_model);
  c1.veh_make = "2023";
  c1.veh_model = "Audi";
  print(c1.veh_make);
}
