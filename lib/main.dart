import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
      "questionText": "What is your favourite movie?",
      "answersText": [
        {"text": "Hakim Babu", "score": 1000},
        {"text": "Hugo", "score": 10},
        {"text": "Masaan", "score": 100}
      ]
    },
    {
      "questionText": "What is your favourite travel location?",
      "answersText": [
        {"text": "Chilika", "score": 1000},
        {"text": "Kashmir", "score": 100},
        {"text": "Dead sea", "score": 10}
      ]
    },
    {
      "questionText": "What will you become in future?",
      "answersText": [
        {"text": "Happy", "score": 1000},
        {"text": "Billionaire", "score": 10},
        {"text": "Politician", "score": 100}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      print("_questionIndex: $_questionIndex");
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("_questionIndex:-> $_questionIndex");
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My first Flutter App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex)
              : Result(_totalScore)),
    );
  }
}
