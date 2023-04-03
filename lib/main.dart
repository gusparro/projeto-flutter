import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(const ProjetoFlutterApp());
}

class ProjetoFlutterState extends State<ProjetoFlutterApp> {
  var questionIndex = 0;

  void answer() {
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
            ElevatedButton(
              onPressed: answer,
              child: const Text('Alternative 1'),
            ),
            ElevatedButton(
              onPressed: answer,
              child: const Text('Alternative 2'),
            ),
            ElevatedButton(
              onPressed: answer,
              child: const Text('Alternative 3'),
            )
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
