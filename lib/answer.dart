// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var answer,function, score, text;

  Answer({this.answer, this.function, this.score, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      // padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(15),
      height: 50,
      child: ElevatedButton(
        onPressed: (){
          if(score == null){
            function();
          }else{
          function(score, text);
          }
        },
        child: Center(child:
            Text(answer, style: TextStyle(
            fontSize: 18,

          ),
        )),
      ),
    );
  }
}
