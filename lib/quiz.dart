import 'package:flutter/material.dart';
import 'package:tryout/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  var questions,questionIndex,function, score;

  Quiz({this.questions, this.questionIndex, this.function, this.score});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question: questions[questionIndex]["question"]),
        ...(questions[questionIndex]["answer"] as List<Map<String, Object>>).map((e) {
      return Answer(answer: e["text"], function: function, score: e["score"], text: e["text"],);
    }).toList(),
  ]
    );
  }
}
