import 'package:flutter/material.dart';
import 'dart:math';

final randoMizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceNumber = 2;

  rollDice() {
    setState(() {
      var diceValue = randoMizer.nextInt(6) + 1;
      currentDiceNumber = diceValue;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset("assets/images/dice-$currentDiceNumber.png", width: 200),
      const SizedBox(height: 30),
      ElevatedButton(
        onPressed: rollDice,
        child: const Text("Roll Dice"),
      ),
    ]);
  }
}
