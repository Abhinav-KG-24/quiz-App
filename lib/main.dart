import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
            flex: 6,
            child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Center(
                    child: Text(
                  'Which animal is known as the "Ship of the Desert"?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                )))),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text(
                      'true',
                      style: TextStyle(color: Colors.white),
                    )))),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text(
                      'False',
                      style: TextStyle(color: Colors.white),
                    )))),
        const Row(
          children: [
            Icon(
              Icons.done,
              color: Colors.green,
            ),
            Icon(
              Icons.clear,
              color: Colors.red,
            )
          ],
        )
      ],
    );
  }
}
