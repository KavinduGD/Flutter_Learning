import 'package:flutter/material.dart';
import "dart:math";

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  //createState return a state
  //Which kind of state in here <DiceState>
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//convertion is to take widget name and append State in the end
// _ means private so the _DiceRollerState class is only userble only in the file
class _DiceRollerState extends State<DiceRoller> {
  var currentDise = 1;
  var randermObject = Random();
  rollDice() {
    //provided by State class
    setState(() => currentDise = randermObject.nextInt(6) + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDise.png",
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
    );
  }
}
