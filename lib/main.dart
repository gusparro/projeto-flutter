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
    final List<Map<String, Object>> questions = [
      {
        'label': 'Qual a sua cor favorita?',
        'answers': ['Azul', 'Verde', 'Roxo'],
      },
      {
        'label': 'Qual o nome do seu cachorro?',
        'answers': ['Caramelo', 'Bolinha', 'Doguinho'],
      },
      {
        'label': 'Qual o seu anime favorito?',
        'answers': ['Naruto', 'Hunter X Hunter', 'One Piece'],
      },
    ];

    List<Answer>? answers = (questions[questionIndex]['answers'] as List<String>?)
        ?.map((answer) => Answer(label: answer, onSelection: _changeQuestion)).toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Projeto Flutter'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(label: questions[questionIndex]['label'].toString()),
            ...?answers,
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
