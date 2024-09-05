// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:second_project/data/questions.dart';
import 'package:second_project/summsry.dart';

class Result extends StatelessWidget {
  const Result(this.selectedAnswers, this.restart , {super.key});

  final List<String> selectedAnswers;
  final void Function () restart;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summery = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summery.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answer[0],
          'user_answer': selectedAnswers[i],
        },
      );
    }
    return summery;
  }

  @override
  Widget build(BuildContext context) {
    var numOfCorrectAnswers = summaryData.where((element) =>  element['user_answer']==element['correct_answer']).length;

    // for (var i = 0; i < summaryData.length; i++) {
    //   if (summaryData[i]['user_answer'] == summaryData[i]['correct_answer']) {
    //     numOfCorrectAnswers++;
    //   }
    // }


    return SizedBox(
      // height: 360,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 90,
              ),
              Text(
                'you answered $numOfCorrectAnswers out of ${questions.length} questions correctly',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Summarty(summaryData),
              const SizedBox(
                height: 30,
              ),
              TextButton.icon(
                icon: const Icon(
                  Icons.restart_alt_outlined,
                  color: Colors.white,
                ),
                onPressed: restart,
                label: const Text(
                  'restart Quiz',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
