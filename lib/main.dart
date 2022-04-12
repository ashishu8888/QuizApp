// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Question.dart';
import './answer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var question = [
    {
      'questionText': 'what\'s your favourite color ?',
      'answerText': ['Red', 'Blue', 'Yellow'],
    },
    {
      'questionText': 'what\'s your favourite Animal ?',
      'answerText': ['Lion', 'Elephant', 'Wolf'],
    },
    {
      'questionText': 'who\'s your favourite personality ?',
      'answerText': ['Virat kohli', 'Amitabh bachhan', 'Rolando'],
    },
    {
      'questionText': 'Rate our App?',
      'answerText': ['5', '4', '3'],
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex + 1 < question.length) {
        _questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Quiz'),
        ),
        body: Column(children: [
          Question(question[_questionIndex]['questionText'] as String),
          ...(question[_questionIndex]['answerText'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList(),
        ]),
      ),
    );
  }
}
