import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = "assets/images/dice-1.png";
  rollDice() {
    var diceValue = Random().nextInt(6) + 1;

    setState(() {
      activeImage = "assets/images/dice-$diceValue.png";
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(activeImage, width: 200),
      const SizedBox(height: 30),
      ElevatedButton(
        onPressed: rollDice,
        child: const Text("Roll Dice"),
      ),
    ]);
  }
}
