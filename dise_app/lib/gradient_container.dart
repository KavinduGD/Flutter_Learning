import 'package:dise_app/text_widget.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  const GradientContainer(this.colors, {super.key});

  rollDice() {}

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/dice-1.png",
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    // padding: const EdgeInsets.only(
                    //   top: 20,
                    // ),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 28,
                    )),
                child: const Text("Roll Dice"))
          ],
        )));
  }
}
