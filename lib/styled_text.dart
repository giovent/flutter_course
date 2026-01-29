import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Text(
              'Hello World!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            );
  }
}