import 'package:flutter/material.dart';
import 'package:tryout/question.dart';

class Details extends StatelessWidget {
  var answers;
  var questions;

  Details({this.questions , this.answers});

  @override
  Widget build(BuildContext context) {
    int _questionIndex = 0;
    List<String> questions = [];

    for(int i = 0; i < this.questions.length; i++ ){
      questions.add(this.questions[_questionIndex][questions]);
    }

    return Container(
      child: Column(
        children: [
          ...(questions as List<String>).map((e) {
            return Container(
              child: Column(
                children: [
                  Question(question: e,),
                  Question(question: answers[_questionIndex])
                ],
              ),

            );
          }).toList(),
          Question(question: "=> ${answers[_questionIndex]}")


        ],
      ),
    );
  }
}
