import 'package:flutter_codigo5_quiz/question.dart';

class QuizBrain{

  List<Question> _questions = [
    Question(questionText: "¿El hombre llegó a la luna?", questionAnswer: true),
    Question(questionText: "¿El mar es azul?", questionAnswer: false),
    Question(questionText: "¿El koala es un oso?", questionAnswer: false),
    Question(questionText: "¿Las arañas son insectos?", questionAnswer: false),
    Question(questionText: "¿O3 es oxígeno?", questionAnswer: false),
    Question(questionText: "¿Todas las palabras agudas llevan tilde?", questionAnswer: false),
    Question(questionText: "¿Todas las palabras esdrújulas llevan tilde?", questionAnswer: true),
    Question(questionText: "¿Albert Einstein dijo que la cuarta guerra mundial se lucharía con piedras?", questionAnswer: true),
    Question(questionText: "¿Instagram es la red social más usada del mundo?", questionAnswer: false),
    Question(questionText: "¿Las plantas se reproducen?", questionAnswer: true),
  ];

  int _questionNumber = 0;

  String getQuestionText(){
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer(){
    return _questions[_questionNumber].questionAnswer;
  }

  void nextQuestion(){
    if(_questionNumber < _questions.length - 1){
      _questionNumber++;
    }
  }

}