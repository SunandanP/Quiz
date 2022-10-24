// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:tryout/answer.dart';

class Result extends StatelessWidget {
int score;
final Function function, detail;

  Result({this.score, this.function, this.detail});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text("Your score is : $score",
            style: TextStyle(
              fontSize: 32,
        ),
            textAlign: TextAlign.center,
      ),
        Answer(answer: "Restart the Quiz",function: function,score : null),
          ElevatedButton(
            onPressed: null,
            child: Text("View Detailed Result"),
          ),
        ],
    );
  }
}
