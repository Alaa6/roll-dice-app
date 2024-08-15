import 'package:flutter/material.dart';

import 'main.dart';

const Alignment topAlignment = Alignment.topCenter;
const Alignment topleft = Alignment.topLeft;

class MyCustomContainer extends StatelessWidget {
  const MyCustomContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: topAlignment,
            end: topleft,
            colors: [
              color1,
              color2,
            ],
          ),
        ),
        child: Center(
          child: myCustomWidget('Hello Moo'),
        ));
  }
}
