// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final question = const [
    'what\'s your favourite animal ?',
    'what\'s your favourite colour ?'
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
          backgroundColor: const Color.fromARGB(255, 64, 194, 144),
          title: const Text('Quiz'),
        ),
        body: Column(children: [
          Question(question[_questionIndex]),
          RaisedButton(
            child: const Text('Answer 1'),
            onPressed: _answerQuestion,
            elevation: 12,
            color: const Color.fromARGB(255, 107, 225, 111),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          RaisedButton(
            autofocus: true,
            child: const Text('Answer 2'),
            onPressed: _answerQuestion,
            elevation: 12,
            color: const Color.fromARGB(255, 232, 104, 95),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          RaisedButton(
            child: const Text('Answer 3'),
            onPressed: _answerQuestion,
            elevation: 12,
            color: const Color.fromARGB(255, 87, 169, 237),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          )
        ]),
      ),
    );
  }
}
