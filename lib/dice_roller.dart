import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNum = 2;

  void rollDice() {
    setState(() {
      diceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceNum.png',
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(15),
              backgroundColor: Colors.yellow,
              foregroundColor: const Color.fromARGB(255, 166, 29, 239),
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Roll Dice!!'),
        )
      ],
    );
  }
}
