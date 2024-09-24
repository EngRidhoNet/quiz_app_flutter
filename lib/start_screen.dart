import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            'Learn Flutter The Fun Way!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              ),
          ),
          const SizedBox(height: 50),
          ElevatedButton.icon(
            onPressed: () {
              startQuiz();
              
            },
            label: const Text('Start Quiz'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 211, 182, 216),
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 20,
              ),
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            icon: const Icon(Icons.quiz),
          ),
        ],
      ),
    );
  }
}
