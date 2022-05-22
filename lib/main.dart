import 'package:flutter/material.dart';
import 'package:flutter_codigo5_quiz/question.dart';
import 'package:flutter_codigo5_quiz/quiz_brain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  QuizBrain matasquita = QuizBrain();

  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Color(0xff272c2f),
      appBar: AppBar(
        backgroundColor: Color(0xff272c2f),
        title: Text("QuizApp"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                matasquita.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: const Color(0xff00e187),
                child: const Text("Verdadero"),
                onPressed: () {
                  bool correctAnswer = matasquita.getQuestionAnswer();

                  if (correctAnswer == true) {
                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: const Color(0xff00e187),
                      ),
                    );
                  } else {
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: const Color(0xfff62d63),
                      ),
                    );
                  }
                  matasquita.nextQuestion();
                  setState(() {});
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: const Color(0xfff62d63),
                child: const Text("Falso"),
                onPressed: () {
                  bool correctAnswer = matasquita.getQuestionAnswer();

                  if (correctAnswer == true) {
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: const Color(0xfff62d63),
                      ),
                    );
                  } else {
                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: const Color(0xff00e187),
                      ),
                    );
                  }
                  matasquita.nextQuestion();
                  setState(() {});
                },
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
