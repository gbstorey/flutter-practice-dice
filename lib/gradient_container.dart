import 'package:flutter/material.dart';
import 'package:first_app/dice.dart';

// const == compile-time known variable. use 'final' for dynamic values.
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: startAlignment, end: endAlignment, colors: colors)),
      child: Center(child: Dice()),
    );
  }
}
