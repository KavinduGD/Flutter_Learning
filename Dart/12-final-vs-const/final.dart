get() {
  final x = [1, 3];
  return x;
}

void main(List<String> args) {
  var n1 = get();
  var n2 = get();

  print(n1 == n2);
  print(n1);
  print(n2);
}
