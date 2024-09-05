import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  const Quiz(this.startquiz, {super.key});

  final void Function() startquiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 90,
        ),
        Image.asset(
          'images/quiz-logo.png',
          width: 200,
          color: Colors.white.withOpacity(0.5),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Hello Flutter !',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: startquiz,
          child: const Text(
            'Start quiz',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
