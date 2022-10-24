// ignore_for_file: prefer_final_fields, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:tryout/details.dart';
import 'package:tryout/question.dart';
import 'package:tryout/quiz.dart';
import 'package:tryout/result.dart';

class MyApp extends StatefulWidget{
  State<MyApp> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  var totalScore = 0;
  var _questionIndex = 0;
  var answers = [];
  var _questions = [
    {"question" : "What kinda bear is best?",
      "answer": [
        {"text": "Black", "score": 10},
        {"text": "White", "score": 0},
        {"text": "That's debatable", "score": 8},
      ]
    },
    {
      "question": "Would you rather be feared or loved?",
      "answer": [
        {"text": "Feared", "score":5 },
        {"text": "Loved", "score": 7},
        {"text": "I want them to fear about how much they love me.", "score": 10},

      ]
    }
  ];
  void restart(){
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  void detailedResult(){
    setState(() {
      _questionIndex++;
    });
  }
  void _buttonClick(int score, String text){
    totalScore += score;
    answers.add(text);
    setState(() {
      _questionIndex++;
    });
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Office Quiz",
          style: TextStyle(
              fontSize: 25,
          ),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child:
              _questionIndex < _questions.length ?
              Quiz(questions: _questions, questionIndex: _questionIndex, function: _buttonClick,)
              : _questionIndex != 3 ?
              Result(score: totalScore, function: restart, detail: detailedResult,):
                  Details(questions: _questions, answers: answers,)
          ),
        ),debugShowCheckedModeBanner: false,
      );
  }
}

void main(){
  runApp(MyApp());
}

