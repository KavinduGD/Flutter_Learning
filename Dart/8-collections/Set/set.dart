void main() {
  var names = <String>{
    "James",
    "Ricky",
    "Devansh",
    "Adam",
    "Adam",
  };
  print(names);

  var names1 = new Set<String>();
  names1.add("James");
  names1.add("Kavindu");
  names1.add("Ranil");
  names1.add("James");

  print(names1);
}
