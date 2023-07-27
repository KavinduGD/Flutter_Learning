void main() {
  var fixedLengthList = List<int>.filled(5, 0); // Creates fixed-length list.
  print(fixedLengthList);
  fixedLengthList[0] = 34;
  fixedLengthList[1] = 23;
  fixedLengthList[2] = 45;
  fixedLengthList[3] = 12;
  fixedLengthList[4] = 1;

  print(fixedLengthList);
}
