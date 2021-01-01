import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _handlePress;
  final String _answerText;

  Answer(this._answerText, this._handlePress);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text(_answerText),
          onPressed: _handlePress,
          textColor: Colors.white,
          color: Colors.blue,
        ));
  }
}
