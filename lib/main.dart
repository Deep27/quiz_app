import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  static const String _KEY_QUESTION_TEXT ='questionText';
  static const String _KEY_QUESTION_ANSWERS = 'answers';
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() => _questionIndex++);
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const List<Map<String, Object>> questions = const [
      {
        _KEY_QUESTION_TEXT: 'What\'s your favorite color?',
        _KEY_QUESTION_ANSWERS: ['Black', 'Grey', 'White', 'Blue']
      },
      {
        _KEY_QUESTION_TEXT: 'What\'s your favorite animal?',
        _KEY_QUESTION_ANSWERS: ['Cat', 'Dog', 'Elephant', 'Snake']
      },
      {
        _KEY_QUESTION_TEXT: 'What\'s your favorite taste?',
        _KEY_QUESTION_ANSWERS: ['Bitter', 'Tasty', 'Salty', 'Sweet']
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex][_KEY_QUESTION_TEXT]),
              ...(questions[_questionIndex][_KEY_QUESTION_ANSWERS]
                      as List<String>)
                  .map((s) => Answer(s, _answerQuestion))
                  .toList(),
            ],
          )),
    );
  }
}
