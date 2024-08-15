import 'package:flutter/material.dart';

import 'gradiant_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        // backgroundColor: Colors.pink[500],
        body: MyCustomContainer(Colors.yellow , Colors.green)
      ),
    );
  }
}


Widget myCustomWidget(String msg) {
  return Text(
    msg,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 30,
      letterSpacing: 8,
      height: 10,
      // shadows: [
      //   Shadow(
      //       color: Color.fromARGB(255, 211, 206, 193),
      //       offset: Offset(0, 10)),
      //   Shadow(
      //       color: Color.fromARGB(255, 42, 186, 107),
      //       offset: Offset(2, 9)),
      //   Shadow(
      //       color: Color.fromARGB(255, 86, 49, 210),
      //       offset: Offset(3, 8))
      // ],
      // decoration: TextDecoration.underline
    ),
  );
}
