// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String strings;
  // ignore: use_key_in_widget_constructors
  const Answer(this.handler, this.strings);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(100, 45),
            primary: Colors.indigoAccent,
            elevation: 12),
        child: Text(strings),
        onPressed: handler,
      ),
    );
  }
}
