import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;
  Question({@required this.question});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Text(
        question,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
