import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      print("_questionIndex: $_questionIndex");
      while (_questionIndex < 1) {
        _questionIndex = _questionIndex + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite movie?",
      "What is your favourite travel location?",
    ];
    print("_questionIndex:-> $_questionIndex");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first Flutter App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: () => print("Answer 2 is chosen."),
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: () => {
                //
                print("Answer 3 has been chosen.")
              },
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
