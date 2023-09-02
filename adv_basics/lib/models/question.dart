class Question {
  final String text;
  final List<String> answers;

  const Question(this.text, this.answers);

  List<String> getShuffledAnswes() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
