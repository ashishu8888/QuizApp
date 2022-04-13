// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Question.dart';
import './answer.dart';
import './result.dart';

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
      'answerText': [
        {'Text': 'Red', 'score': 10},
        {'Text': 'Blue', 'score': 8},
        {'Text': 'Yellow', 'score': 7},
        {'Text': 'Black', 'score': 9}
      ],
    },
    {
      'questionText': 'what\'s your favourite Animal ?',
      'answerText': [
        {'Text': 'Lion', 'score': 5},
        {'Text': 'Elephant', 'score': 7},
        {'Text': 'Wolf', 'score': 8},
        {'Text': 'Dog', 'score': 10}
      ],
    },
    {
      'questionText': 'who\'s your favourite personality ?',
      'answerText': [
        {'Text': 'Virat kohli', 'score': 10},
        {'Text': 'Amitabh bachhan', 'score': 10},
        {'Text': 'Rolando', 'score': 10},
        {'Text': 'All', 'score': 10}
      ],
    },
    {
      'questionText': 'what\'s your favourite flower ?',
      'answerText': [
        {'Text': 'Rose', 'score': 10},
        {'Text': 'Lily', 'score': 5},
        {'Text': 'Jasmine', 'score': 8},
        {'Text': 'Lavender', 'score': 10}
      ],
    }
  ];

  var _questionIndex = 0;
  var _toatalScore = 0;
  void _answerQuestion(int score) {
    _toatalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // primarySwatch: Colors.amber,
          ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: _questionIndex < question.length
            ? AppBar(
                backgroundColor: Colors.indigoAccent,
                title: const Text('Quiz'),
              )
            : null,
        body: _questionIndex < question.length
            ? Column(children: [
                Question(question[_questionIndex]['questionText'] as String),
                ...(question[_questionIndex]['answerText']
                        as List<Map<String, Object>>)
                    .map((answer) {
                  return Answer(() => _answerQuestion(answer['score'] as int),
                      answer['Text'] as String);
                }).toList(),
              ])
            : Result(_toatalScore),
      ),
    );
  }
}
