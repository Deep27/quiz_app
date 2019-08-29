import 'package:flutter/material.dart';

import 'quiz_data.dart';
import 'quiz.dart';
import 'result.dart';

import 'assignment/main.dart';

void main() => runApp(QuizApp());
//void main() => runApp(AssignmentApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() => _questionIndex++);
  }

  void _restartQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < QuizData.QUESTIONS.length
            ? Quiz(
                questions: QuizData.QUESTIONS,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
