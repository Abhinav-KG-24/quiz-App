import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_bank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBank quizBank = QuizBank();

void main() {
  runApp(const Quizzy());
}

class Quizzy extends StatelessWidget {
  const Quizzy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey[900],
          body: const SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: QuizPage()),
          )),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  void checkAnswer(bool userSelectedAnswer) {
    bool correctAnswer = quizBank.getAnswers();
    quizBank.questionNumber();
    setState(() {
      if (quizBank.isfinished() == true) {
        Alert(
                context: context,
                title: 'Finished',
                desc: 'You are completed the quiz sucessfully')
            .show();
        quizBank.reset();
        scoreKeeper = [];
      } else {
        if (userSelectedAnswer == correctAnswer) {
          scoreKeeper.add(const Icon(
            Icons.done,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(const Icon(
            Icons.clear,
            color: Colors.red,
          ));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 6,
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                    child: Text(
                  quizBank.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 25.0),
                )))),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                    onPressed: () {
                      checkAnswer(true);
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text(
                      'true',
                      style: TextStyle(color: Colors.white),
                    )))),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                    onPressed: () {
                      bool correctAnswer = quizBank.getAnswers();
                      quizBank.questionNumber();

                      setState(() {
                        if (correctAnswer == false) {
                          scoreKeeper.add(const Icon(
                            Icons.done,
                            color: Colors.green,
                          ));
                        } else {
                          scoreKeeper.add(const Icon(
                            Icons.clear,
                            color: Colors.red,
                          ));
                        }
                      });
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text(
                      'False',
                      style: TextStyle(color: Colors.white),
                    )))),
        Row(children: scoreKeeper),
      ],
    );
  }
}
