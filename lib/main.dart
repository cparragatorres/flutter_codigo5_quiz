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

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QuizApp"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 5,
              child: Text("Aqui va la pregunta")),
          Expanded(
            child: MaterialButton(
              color: Colors.greenAccent,
              child: Text("Verdadero"),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: MaterialButton(
              color: Colors.redAccent,
              child: Text("Falso"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
