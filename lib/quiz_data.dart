import 'constants.dart';

class QuizData {
  static const _QUESTION_TEXT = Constants.QUESTION_TEXT;
  static const _QUESTION_ANSWERS = Constants.QUESTION_ANSWERS;
  static const _ANSWER_TEXT = Constants.ANSWER_TEXT;
  static const _SCORE = Constants.SCORE;

  static const List<Map<String, Object>> QUESTIONS = const [
    {
      _QUESTION_TEXT: 'What\'s your favorite color?',
      _QUESTION_ANSWERS: [
        {_ANSWER_TEXT: 'Black', _SCORE: 1},
        {_ANSWER_TEXT: 'Grey', _SCORE: 5},
        {_ANSWER_TEXT: 'White', _SCORE: 10},
        {_ANSWER_TEXT: 'Blue', _SCORE: 20}
      ]
    },
    {
      _QUESTION_TEXT: 'What\'s your favorite animal?',
      _QUESTION_ANSWERS: [
        {_ANSWER_TEXT: 'Elephant', _SCORE: 1},
        {_ANSWER_TEXT: 'Dog', _SCORE: 5},
        {_ANSWER_TEXT: 'Snake', _SCORE: 10},
        {_ANSWER_TEXT: 'Cat', _SCORE: 20}
      ]
    },
    {
      _QUESTION_TEXT: 'What\'s your favorite taste?',
      _QUESTION_ANSWERS: [
        {_ANSWER_TEXT: 'Bitter', _SCORE: 1},
        {_ANSWER_TEXT: 'Salty', _SCORE: 5},
        {_ANSWER_TEXT: 'Tasty', _SCORE: 10},
        {_ANSWER_TEXT: 'Sweet', _SCORE: 20}
      ]
    }
  ];
}
