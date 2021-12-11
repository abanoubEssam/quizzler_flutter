import 'package:quizzler_flutter/questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _answerNumber = 0;

  final List<Question> _questionBank = [
    Question(question: "q1", answer: false),
    Question(question: "q2", answer: true),
    Question(question: "q3", answer: true)
  ];

  nextQuestion() {
    _answerNumber++;
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_answerNumber >= _questionBank.length) {
      return true;
    } else {
      return false;
    }
  }

  String getQuestion() {
    return _questionBank[_questionNumber].question;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].answer;
  }
}
