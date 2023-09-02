import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class StartQuizWidget extends StatelessWidget {
  final void Function() switchScreen;
  const StartQuizWidget(this.switchScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return (Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     "assets/images/quiz-logo.png",
        //     width: 300,
        //   ),
        // ),

        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(109, 255, 255, 255),
        ),

        const SizedBox(height: 70),
        Text(
          "Learn Flutter the fun way!",
          style: GoogleFonts.lato(
              color: Colors.grey[400],
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
          onPressed: switchScreen,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quix'),
        ),
      ],
    )));
  }
}
