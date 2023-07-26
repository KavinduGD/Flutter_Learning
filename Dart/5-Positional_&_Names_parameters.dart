void main() {
  add1(3, 4);
  add2(b: 3, a: 4);

//functions that use posiitonal parameteres ==  positional parameters are required and must not be omitted
  // add1();
  // add1(2);
//functions that use named parameteres == named parameters are optional and can be omitted
  // add2();
  // add2(a: 3);

  //can make positional arguments optional by ueing []
  add3(9);

  //can make named arguments required by ueing 'required'
  add4(a: 4, b: 5);

  displayInfo("Kavindu", age: 23, address: "gampaha");
  displayInfo("Kavindu", address: "gampaha");
  displayInfo("Kavindu", age: 23);
}

//position
//required parameters do not have default values
void add1(a, b) {
  print('a is $a');
  print('b is $b');

  print(a + b);
}

//named
//Default values can also be assigned to named parameters - which are optional by default
void add2({a = 7, b = 7}) {
  print('a is $a');
  print('b is $b');
  print(a + b);
}

//positioned parameter fuction with optional parameter
//Optional parameters can only be declared after any required parameters
void add3(a, [b = 7]) {
  print('a is $a');
  print('b is $b');

  print(a + b);
}

//named parameter function with required parameter
//You can also make named parameters required by using the built-in required keyword
void add4({required a, required b}) {
  print('a is $a');
  print('b is $b');
  print(a + b);
}

//positional and named parameters
void displayInfo(name, {age = 18, address = "Sri Lanka"}) {
  print(name);
  print(age);
  print(address);
}
