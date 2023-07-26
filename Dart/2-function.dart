void main() {
  displayName();

  var name = returnName();
  print("My name is $name");

  displayAge(34);
}

void displayName() {
  print('Kavindu');
}

String returnName() {
  return "Kavindu";
}

void displayAge(int age) {
  print(age);
}
