import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_screen.dart';
import 'package:adv_basics/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/startQuizWidget.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start';

  void addAnswers(String answer) {
    selectedAnswers.add(answer);
    if (questions.length == selectedAnswers.length) {
      setState(() {
        activeScreen = "result";
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question';
      selectedAnswers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartQuizWidget(switchScreen);

    if (activeScreen == "question") {
      screenWidget = QuestionScreen(addAnswers);
    }
    if (activeScreen == "result") {
      screenWidget = ResultScreen(selectedAnswers, switchScreen);
    }
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 89, 9, 103),
          Color.fromARGB(255, 164, 41, 181)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: screenWidget,
      )),
    );
  }
}
