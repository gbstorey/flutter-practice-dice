import 'package:flutter/material.dart';

class HeaderOne extends StatelessWidget {
  const HeaderOne(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 32, color: Colors.black87, fontWeight: FontWeight.bold),
    );
  }
}
