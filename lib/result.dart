import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function _resetHandler;

  Result(this._resultScore, this._resetHandler);

  String get resultPhrase {
    if (_resultScore > 25) {
      return 'You are awesome and scored $_resultScore!';
    } else if (_resultScore > 18) {
      return 'You are not bad; you scored $_resultScore.';
    } else {
      return 'You scored $_resultScore... interesting.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: _resetHandler,
          ),
        ],
      ),
    );
  }
}
