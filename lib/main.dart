// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final question = const [
    'what\'s your favourite animal',
    'what\'s is your favourite colour'
  ];

  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (questionIndex + 1 < question.length) {
        questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: Column(children: [
          // ignore: unnecessary_string_interpolations
          Text('${question[questionIndex]}'),
          RaisedButton(
            child: const Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: const Text('Answer 2'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: const Text('Answer 3'),
            onPressed: answerQuestion,
          )
        ]),
      ),
    );
  }
}
