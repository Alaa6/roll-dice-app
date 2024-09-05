import 'package:flutter/material.dart';
import 'package:second_project/data/questions.dart';
import 'package:second_project/questions.dart';
import 'package:second_project/quiz.dart';
// import 'main.dart';
import 'dart:developer';
import 'package:second_project/result.dart';

const Alignment topAlignment = Alignment.topCenter;
const Alignment topleft = Alignment.topLeft;

class MyCustomContainer extends StatefulWidget {
  const MyCustomContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  State<MyCustomContainer> createState() => _MyCustomContainerState();
}

class _MyCustomContainerState extends State<MyCustomContainer> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = Result(selectedAnswers ,restartQuiz);
      });
    }
    log(selectedAnswers.length.toString());
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = Quiz(startQuiz);
    });
  }

  @override
  void initState() {
    super.initState();
    activeScreen = Quiz(startQuiz);
  }

  void startQuiz() {
    setState(() {
      activeScreen = Questions(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: topAlignment,
            end: topleft,
            colors: [
              widget.color1,
              widget.color2,
            ],
          ),
        ),
        child: Center(
          // child: myCustomWidget('Hello Moo'),
          child: activeScreen,
          // child: Questions(),
        ));
  }
}
