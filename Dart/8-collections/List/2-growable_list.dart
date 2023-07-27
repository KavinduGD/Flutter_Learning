void main(List<String> args) {
  var numbers = <int>[4, 3, 4, 234, 23];
  // print(numbers.runtimeType);

  numbers.remove(23);
  print(numbers);
  numbers.add(34);
  print(numbers);
  numbers.add(34);
  print(numbers);
  final number1 = <num>[1, 2, 3];
  final listFrom = List<int>.from(number1);
  print(listFrom); // [1, 2, 3]
}
