// import 'dart:developer';

import 'dart:developer' as dev;
import 'dart:math';
import 'package:flutter/material.dart';

var random = Random();

class RollDice extends StatefulWidget {
  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }

  const RollDice({super.key});
}

class _RollDiceState extends State<RollDice> {
  var activeRollNum = 1;

  @override
  Widget build(BuildContext context) {
    void rollDice() {
      setState(() {
        activeRollNum = random.nextInt(6) + 1;
      });
      dev.log("herrooo");
    }

    // void onButtonPressedMessage(String msg) {
    //   log("the msg is $msg");
    // }

    return Center(
      // width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('images/dice-$activeRollNum.png', width: 100),
          // Image.asset('images/dice-2.png' , width :100),
          // Image.asset('images/dice-3.png' , width :100)
          const SizedBox(
            height: 20,
          ),
          TextButton.icon(
            onPressed: rollDice,
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: const Text('click me'),
            style: TextButton.styleFrom(
                backgroundColor: Colors.amber, foregroundColor: Colors.white),
          ),
          // OutlinedButton(
          //   onPressed: () => {onButtonPressedMessage("good morning alaa")},
          //   child: const Text('click me'),
          // ),
          //  TextButton(onPressed: ()=>log('clicked'), child: const Text('click me'))
          ElevatedButton(
            onPressed: rollDice,
            child: const Text('please click here !'),
          )
        ],
      ),
    );
  }
}
