import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      print("questionIndex: $questionIndex");
      while (questionIndex < 1) {
        questionIndex = questionIndex + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite movie?",
      "What is your favourite travel location?",
    ];
    print("questionIndex:-> $questionIndex");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first Flutter App"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              onPressed: answerQuestion,
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
