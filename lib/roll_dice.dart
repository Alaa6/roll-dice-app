import 'dart:developer';

import 'package:flutter/material.dart';

class RollDice extends StatelessWidget {
  const RollDice({super.key});
  void onButtonPressed() {
    log("the btn pressed from onButtonPressed function");
  }
    void onButtonPressedMessage(String msg) {
    log("the msg is $msg");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('images/dice-1.png', width: 100),
          // Image.asset('images/dice-2.png' , width :100),
          // Image.asset('images/dice-3.png' , width :100)
          TextButton.icon(
            onPressed: () => log('clicked'),
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: const Text('click me'),
          ),
          OutlinedButton(
              onPressed: () => {onButtonPressedMessage("good morning alaa")}, child: const Text('click me')),
          //  TextButton(onPressed: ()=>log('clicked'), child: const Text('click me'))
          ElevatedButton(
              onPressed: onButtonPressed,
              child: const Text('please click here !'))
              
        ],
      ),
    );
  }
}
