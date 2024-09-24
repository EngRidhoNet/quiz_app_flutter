import 'package:flutter/material.dart';
import 'package:quiz_app/questionsscreen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // maksudnya layar active juga bisa menjadi nol
  Widget? activeScreen; 

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.deepPurple,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: activeScreen),
      ),
    );
  }
}
