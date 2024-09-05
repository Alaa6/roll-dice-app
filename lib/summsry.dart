import 'package:flutter/material.dart';

class Summarty extends StatelessWidget {
  const Summarty(this.summeryData ,{super.key});
  final List<Map<String, Object>> summeryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         ...summeryData.map((ans) => Column(children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: CircleAvatar(
                      backgroundColor: ans['correct_answer']== ans['user_answer'] ? Colors.blueAccent : Colors.red,
                      radius: 16,
                      child:
                          Text(((ans["question_index"] as int) + 1).toString()),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ans["question"].toString(),
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(ans["user_answer"].toString(),
                          style: const TextStyle(
                              color: Color.fromARGB(255, 155, 194, 165))),
                      Text(ans["correct_answer"].toString(),
                          style: const TextStyle(
                              color: Color.fromARGB(255, 33, 12, 94))),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ))
                ],
              ),
            ])),
      ],
    );
  }
}
