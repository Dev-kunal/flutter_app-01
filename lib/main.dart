import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: GradientWidget(
          Color.fromARGB(255, 36, 179, 223),
          Color.fromARGB(255, 52, 181, 181),
        ),
      ),
    ),
  );
}
