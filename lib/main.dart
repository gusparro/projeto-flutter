import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(const ProjetoFlutterApp());
}

class ProjetoFlutterState extends State<ProjetoFlutterApp> {
  var questionIndex = 0;

  void _changeQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      'Qual a sua cor favorita?',
      'Qual o nome do seu cachorro?',
      'Qual o seu anime favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Projeto Flutter'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(label: questions[questionIndex]),
            Answer(
              label: 'Answer 01',
              onSelection: _changeQuestion,
            ),
            Answer(
              label: 'Answer 02',
              onSelection: _changeQuestion,
            ),
            Answer(
              label: 'Answer 03',
              onSelection: _changeQuestion,
            ),
          ],
        ),
      ),
    );
  }
}

class ProjetoFlutterApp extends StatefulWidget {
  const ProjetoFlutterApp({super.key});

  @override
  ProjetoFlutterState createState() {
    return ProjetoFlutterState();
  }
}
