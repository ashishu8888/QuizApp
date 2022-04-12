// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String strings;
  // ignore: use_key_in_widget_constructors
  const Answer(this.handler, this.strings);
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton.icon(
            label: Text(strings),
            icon: Icon(Icons.check),
            onPressed: handler,
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.blue))))),
      ),
    );
  }
}
