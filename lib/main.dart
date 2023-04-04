import 'package:flutter/material.dart';
import 'package:projeto_flutter/result.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(const ProjetoFlutterApp());
}

class ProjetoFlutterState extends State<ProjetoFlutterApp> {
  final List<Map<String, Object>> _questions = const [
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

  var questionIndex = 0;

  bool get areThereMoreQuestions {
    return questionIndex < _questions.length;
  }

  void _changeQuestion() {
    if (areThereMoreQuestions) {
      setState(() {
        questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Answer>? answers = areThereMoreQuestions
        ? (_questions[questionIndex]['answers'] as List<String>?)
            ?.map(
                (answer) => Answer(label: answer, onSelection: _changeQuestion))
            .toList()
        : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Projeto Flutter'),
          centerTitle: true,
        ),
        body: areThereMoreQuestions
            ? Column(
                children: [
                  Question(
                    label: _questions[questionIndex]['label'].toString(),
                  ),
                  ...?answers,
                ],
              )
            : const Result(),
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
