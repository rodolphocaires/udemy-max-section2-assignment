import 'package:flutter/material.dart';

class PhraseGenerator extends StatelessWidget {
  final Function onPress;

  PhraseGenerator({this.onPress});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(32),
      shape: CircleBorder(),
      color: Colors.amber,
      onPressed: onPress,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Random\nPhrase',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
