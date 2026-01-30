import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() onStartQuiz;

  const StartScreen(this.onStartQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz_logo.png', width: 300,
          color: const Color.fromARGB(150, 255, 255, 255)),
          SizedBox(height: 20),
          Text('Learn Flutter the fun way', style: TextStyle(fontSize: 24, color: Colors.white)),
          SizedBox(height: 20),
      
          Container( // I have wrapped the button in a Container in the hope to make gradient backround on the button, but resulted in a failure
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.white),
                backgroundColor: Colors.transparent
              ),
              onPressed: onStartQuiz,
              icon: Icon(Icons.bolt, color: Colors.white),
              label: Text('Start Quiz', style: TextStyle(color: Colors.white, fontSize: 20))),
          )
      ],),
    );
  }
}
