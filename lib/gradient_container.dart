import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight),
        ),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}
