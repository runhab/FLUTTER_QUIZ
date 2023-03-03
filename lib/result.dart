import 'package:flutter/material.dart';
//import 'answer.dart';
//import 'main.dart';
//import 'question.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'you did it';
    if (resultScore <= 1) {
      resultText = 'Sory to say this but you are idiot';
    } else if (resultScore <= 2) {
      resultText = 'Good!';
    } else if (resultScore <= 4) {
      resultText = 'Very Good!';
    } else {
      resultText = 'Really nice!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 94, 15, 168)),
          textAlign: TextAlign.center,
        ),
        Text(
          'you score $resultScore  points',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 94, 15, 168)),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          child: Text(
            'Restart Quiz',
          ),
          onPressed: resetHandler,
        ),
      ],
    )); //$_questionIndex
  }
}
