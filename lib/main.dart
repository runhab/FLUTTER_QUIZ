import 'package:flutter/material.dart';
import 'quiz.dart';
//import 'answer.dart';
import 'question.dart';
import 'result.dart';

//void main() {
//runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'who\'s the author of FIKIR ESKE MEKABIR? ',
      'answers': [
        {'text': 'Hadiss Alemayehu', 'score': 1},
        {'text': 'yismaeke Werku', 'score': 0},
        {'text': 'bealu girma', 'score': 0},
        {'text': 'Abe gubegna', 'score': 0}
      ],
    },
    {
      'questionText': 'who\'s the author of ALWELEDM? ',
      'answers': [
        {'text': 'Hadiss Alemayehu', 'score': 0},
        {'text': 'yismaeke Werku', 'score': 0},
        {'text': 'bealu girma', 'score': 0},
        {'text': 'Abe gubegna', 'score': 1}
      ],
    },
    {
      'questionText': 'which\'s is Ethiopians  favorite food? ',
      'answers': [
        {'text': 'Pizza', 'score': 0},
        {'text': 'Pasta', 'score': 0},
        {'text': 'Injera', 'score': 1},
        {'text': 'Mortodala', 'score': 0}
      ],
    },
    {
      'questionText': 'who have more Ballendores Award?',
      'answers': [
        {'text': 'Ronaldo', 'score': 0},
        {'text': 'Messi', 'score': 1},
        {'text': 'Mbappe', 'score': 0},
        {'text': 'Adane', 'score': 0}
      ],
    },
    {
      'questionText': 'who is the current top of English Priemier Liege?',
      'answers': [
        {'text': 'Liverpool', 'score': 0},
        {'text': 'Totenham', 'score': 0},
        {'text': 'Chelse', 'score': 0},
        {'text': 'Arsenal', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
    print(_questionIndex);
    //return _totalScore;
    if (_questionIndex < _questions.length) {
      print('you have other questions');
    } else {
      print('you have finithed all questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Question("My App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
