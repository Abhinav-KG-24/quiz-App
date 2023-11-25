//Abstration
import 'package:quiz_app/question.dart';

class QuizBank {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: '1. An atom is the smallest particle.', a: false),
    Question(q: '2. Arachnophobia is the fear of bathing.', a: false),
    Question(q: '3. Boiling water is 100 degrees Celsius.', a: true),
    Question(q: '4. Butterflies taste things with their wings.', a: false)
  ];

  void questionNumber() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswers() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  int getLength() {
    return _questionBank.length;
  }

  bool isfinished() {
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
