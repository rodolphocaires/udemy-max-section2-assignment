// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_course/phrase.dart';
import 'package:flutter_course/phrase_generator.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _phraseIndex = 0;
  final _phrases = const [
    'Cave o lu',
    'Tromons dosagra',
    'Nafe ou sem?',
    'Gala Fau!',
    'Rabo pracom féca!',
    'Dor',
    'Quecai',
    'Quinhaslu',
    'Culio Joelho',
  ];

  void _generatePhrase() {
    setState(() => _phraseIndex = Random().nextInt(_phrases.length));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text(
            'Section 2 Assignment',
            style: TextStyle(color: Colors.amber),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Phrase(_phrases[_phraseIndex]),
              PhraseGenerator(onPress: _generatePhrase),
            ],
          ),
        ),
      ),
    );
  }
}
