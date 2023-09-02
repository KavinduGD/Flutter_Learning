import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  final void Function(String ansers) addAnswers;
  const QuestionScreen(this.addAnswers, {super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var num = 0;

  onTap(String answer) {
    widget.addAnswers(answer);
    setState(() {
      num = num + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQustion = questions[num];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQustion.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 222, 140, 252),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQustion
                .getShuffledAnswes()
                .map((answer) => AnswerButton(answer, () => onTap(answer))),
          ],
        ),
      ),
    );
  }
}
