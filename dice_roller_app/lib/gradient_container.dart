import 'package:flutter/material.dart';
import 'dice.dart';

// Gradient alignment variables
const startAlignment = Alignment.centerRight;
const endAlignment = Alignment.centerLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    this.colorList = const [Colors.blue, Colors.blueGrey],
  });

  final List<Color> colorList;

  GradientContainer.instaGradient({super.key})
    : colorList = [Colors.purple, Colors.pink, Colors.orange];

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colorList,
        ),
      ),
      child: Center(
        child: Dice(),
      ),
    );
  }
}
