import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 8},
        {'text': 'Red', 'score': 3},
        {'text': 'Purple', 'score': 5},
      ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 8},
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 3},
        {'text': 'Snake', 'score': 1},
      ],
    },
    {
      'questionText': 'what\'s your favorite food?',
      'answers': [
        {'text': 'Fries', 'score': 10},
        {'text': 'Noodles', 'score': 10},
        {'text': 'Rice', 'score': 10},
        {'text': 'Meat', 'score': 10},
      ],
    },
  ]; // It would probably be better to just have this as a Class Object
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Quiz App')),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionText: _questions[_questionIndex]['questionText'],
                answers: _questions[_questionIndex]['answers'],
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
