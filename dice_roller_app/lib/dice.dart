import 'package:flutter/material.dart';
import 'dart:math';


final randomizer = Random();

class Dice extends StatefulWidget {
  Dice({super.key});


  @override
  State<Dice> createState() {
    return _DiceState();
  }
}

class _DiceState extends State<Dice> {

  var currentDiceState = 1;

  rollDice() {
    setState(() {
      final randomNumber = randomizer.nextInt(6) + 1;
      currentDiceState = randomNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/dice-$currentDiceState.png', width: 250),
        SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
            padding: const EdgeInsets.all(20),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
