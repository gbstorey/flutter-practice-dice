import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class Dice extends StatefulWidget {
  const Dice({super.key});
  @override
  State<Dice> createState() {
    return _DiceState();
  }
}

class _DiceState extends State<Dice> {
  var currentRoll = 2;
  void rollDice() {
    setState(() {
      currentRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.black87,
            textStyle:
                const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
