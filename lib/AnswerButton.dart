import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//stl
class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onPressed, {super.key});

  final String answerText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(5),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          // color: Colors.white ,
          fontSize: 16 ,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
