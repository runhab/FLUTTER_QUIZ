import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(children: <Widget>[
          ElevatedButton(
            onPressed: selectHandler,
            child: Text(answerText),
            style: ElevatedButton.styleFrom(
              primary: Colors.brown,
              onPrimary: Colors.white,
              //  foregroundColor: MaterialStateProperty.all(Colors.white),
              //backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
          ),
          SizedBox(
            height: 5,
          )
        ]));
  }
}
