void main(List<String> args) {
  //Using Map Literals
  var scores = {"Kavindu": 10, "Mahinda": 3, "Ranil": 1};
  print(scores["Kavindu"]);

  //Using Map Constructor
  var student = new Map();
  student['name'] = 'Tom';
  student['age'] = 23;
  student['course'] = 'B.tech';
  student['Branch'] = 'Computer Science';
  print(student);
}
