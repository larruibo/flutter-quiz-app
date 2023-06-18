import 'package:adv_basics/gradient_container.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

const List<Color> colors = [
  Colors.purple,
  Colors.deepPurple,
];
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
