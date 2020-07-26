import 'package:flutter/material.dart';

class Phrase extends StatelessWidget {
  final String phrase;

  Phrase(this.phrase);

  @override
  Widget build(BuildContext context) {
    return Text(
      phrase,
      style: TextStyle(
        color: Colors.amber,
        fontSize: 36,
      ),
      textAlign: TextAlign.center,
    );
  }
}
