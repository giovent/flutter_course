import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start_screen';

  void setActiveScreen() {
    setState(() {
      activeScreen = 'question_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? activeScreenWidget;
    switch (activeScreen) {
      case 'start_screen':
        activeScreenWidget = StartScreen(setActiveScreen);
        break;
      case 'question_screen':
        activeScreenWidget = const QuestionScreen();
        break;
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 81, 8, 120),
                Color.fromARGB(255, 122, 40, 190),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreenWidget,
        ),
      ),
    );
  }
}
