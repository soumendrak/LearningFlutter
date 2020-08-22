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
      "answersText": ["Hakim Babu", "Hugo", "Masaan"]
    },
    {
      "questionText": "What is your favourite travel location?",
      "answersText": ["Chilika", "Kashmir", "Dead sea"]
    },
    {
      "questionText": "What will you become in future?",
      "answersText": ["Astronaut", "Billionaire", "Happy"]
    }
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      print("_questionIndex: $_questionIndex");
      _questionIndex = _questionIndex + 1;
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
            : Result()
      ),
    );
  }
}
