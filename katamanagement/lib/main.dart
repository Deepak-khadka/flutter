import 'package:flutter/material.dart';
import './answer.dart';
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
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\'s your favorite color ?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'what\'s your favorite animal ?',
        'answers': ['Tiger', 'Lion', 'Rabbit', 'Elephant']
      },
      {
        'questionText': 'what\'s your favorite School ?',
        'answers': ['GGN', 'Kathford', 'Bageshwori', 'Neputer']
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text("My App"),
          ),
          body: Column(
            children: [
              Question(
                  questions[_questionIndex]['questionText']
              ),
              ...(questions[_questionIndex]['answers'] as List<String>).map((
                  answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
