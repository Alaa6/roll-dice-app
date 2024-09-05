import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_project/AnswerButton.dart';
import 'data/questions.dart';

//stf

class Questions extends StatefulWidget {
  const Questions(this.onSelectedAnswer, {super.key});
  final void Function(String) onSelectedAnswer;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });

    // log(currentQuestionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    final currentQ = questions[currentQuestionIndex];

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 90,
        ),
        Text(
          currentQ.text,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 40,
        ),
        const SizedBox(
          height: 20,
        ),
        ...currentQ.shuffledAnswers.map(
          (ans) {
            return Container(
                margin: const EdgeInsets.all(5),
                child: AnswerButton(ans, () {
                  answerQuestion(ans);
                }));
          },
        ),
      ],
    );
  }
}
