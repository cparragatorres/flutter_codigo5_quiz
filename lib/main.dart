import 'package:flutter/material.dart';

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
  List<String>questions = [
    "El hombre llegó a la luna?",
    "La tierra es plana?",
    "Desayunaron?",
  ];

  List<bool>answer = [
    false,
    false,
    true,
  ];

  int questionNumber = 0;

  List<Icon> scoreKeeper = [

  ];

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
                questions[questionNumber],
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

                  bool correctAnswer = answer[questionNumber];
                  if(correctAnswer == true){
                    scoreKeeper.add(Icon(Icons.check, color: const Color(0xff00e187),),);
                  }else {
                    scoreKeeper.add(Icon(Icons.close, color: const Color(0xfff62d63),),);
                  }
                  setState((){

                  });

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
                onPressed: () {},
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
