// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: Column(children: const [
          Text('The question is: '),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: null,
          )
        ]),
      ),
    );
  }
}
