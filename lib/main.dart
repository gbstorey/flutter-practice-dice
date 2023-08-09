import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

const lightColor = Color.fromRGBO(255, 255, 255, 1);
const darkerColor = Color.fromRGBO(195, 255, 220, 1);

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [lightColor, darkerColor]),
      ),
    ),
  );
}
