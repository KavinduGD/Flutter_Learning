import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_summery.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  final void Function() startAgain;
  const ResultScreen(this.selectedAnswers, this.startAgain, {super.key});

  List<Map<String, Object>> getSummery() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_selectes_answers': selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummery();
    final numTotalQ = questions.length;
    final numCorrectQ = summaryData.where((data) {
      return (data['correct_answer'] == data['user_selectes_answers']);
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have answerd $numTotalQ out of $numCorrectQ question correctly',
              style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 240, 158, 232),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: startAgain,
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              label: const Text('Restart Quiz'),
              icon: const Icon(Icons.restart_alt),
            )
          ],
        ),
      ),
    );
  }
}
