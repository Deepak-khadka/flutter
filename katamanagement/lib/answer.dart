import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;

  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: () => {
          print('clicked')
        },
      child: Text(answerText),
    )
    );
  }
}
