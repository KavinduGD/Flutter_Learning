import 'package:flutter/material.dart';

class StartQuizWidget extends StatelessWidget {
  const StartQuizWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return (Container(
      color: Colors.purple,
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
          ),
          const SizedBox(height: 50),
          Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.grey[400], fontSize: 24),
          ),
          const SizedBox(
            height: 40,
          ),
          FilledButton(onPressed: () => {}, child: const Text('Start Quix'))
        ],
      )),
    ));
  }
}
