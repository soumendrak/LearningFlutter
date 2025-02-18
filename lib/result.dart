import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);
  String get resultPhrase {
    var resultText = "You did it.";
    if (resultScore < 101) {
      resultText = "Kou kaamaku nuhan.";
    } else if (resultScore < 1001) {
      resultText = "Need to improve your taste";
    } else if ((resultScore < 5000)) {
      resultText = "Pakka Odia";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,),
              FlatButton(onPressed: this.resetQuiz, textColor: Colors.pinkAccent, child: Text("Restart the quiz!",))
        ],
      ),
    );
  }
}
