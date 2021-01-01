import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // final List<Map<String, Object>> questions; // ObjectKey instead of String?
  final String questionText;
  final List<Map<String, Object>> answers;
  final Function answerQuestion;

  Quiz(
      {@required this.questionText,
      @required this.answers,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionText),
        ...answers.map((answer) {
          return Answer(answer['text'], () => answerQuestion(answer['score']));
        }).toList(),
      ],
    );
  }
}
