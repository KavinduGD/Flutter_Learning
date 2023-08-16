class Student {
  String? name;
  int? id;
  static String? university;

  static String? getUnivercity() {
    return university;
  }
}

void main(List<String> args) {
  Student.university = "Malabe";

  Student s1 = new Student();
  print(Student.getUnivercity());
}
