import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',
            width: 300, color: const Color.fromARGB(150, 255, 255, 255)),
        const SizedBox(height: 60),
        const Text('Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        const SizedBox(height: 20),
        FilledButton.icon(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 54, 7, 136)),
          ),
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz',
              style: TextStyle(color: Colors.white, fontSize: 15)),
        )
      ],
    );
  }
}
