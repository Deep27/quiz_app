import 'package:flutter/material.dart';

import 'constants.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex][Constants.QUESTION_TEXT],
        ),
        ...(questions[questionIndex][Constants.QUESTION_ANSWERS] as List<Map<String, Object>>)
        .map((answer) => Answer(answer[Constants.ANSWER_TEXT], () => answerQuestion(answer[Constants.SCORE]))).toList()
      ],
    );
  }
}
