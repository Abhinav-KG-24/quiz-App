//Abstration

import 'package:quiz_app/question.dart';

class QuizBank {
  List<Question> questionBank = [
    Question(q: '1. An atom is the smallest particle.', a: false),
    Question(q: '2. Arachnophobia is the fear of bathing.', a: false),
    Question(q: '3. Boiling water is 100 degrees Celsius.', a: true),
    Question(q: '4. Butterflies taste things with their wings.', a: false)
  ];
}
