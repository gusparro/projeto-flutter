import 'package:flutter/material.dart';
import 'package:projeto_flutter/quiz.dart';
import 'package:projeto_flutter/result.dart';

void main() {
  runApp(const ProjetoFlutterApp());
}

class ProjetoFlutterState extends State<ProjetoFlutterApp> {
  final List<Map<String, Object>> _questions = const [
    {
      'label': 'Qual a sua cor favorita?',
      'answers': [
        {
          'label': 'Azul',
          'value': 6,
        },
        {
          'label': 'Verde',
          'value': 10,
        },
        {
          'label': 'Roxo',
          'value': 5,
        },
        {
          'label': 'Preto',
          'value': 8,
        },
      ],
    },
    {
      'label': 'Qual o nome do seu cachorro?',
      'answers': [
        {
          'label': 'Caramelo',
          'value': 10,
        },
        {
          'label': 'Bolinha',
          'value': 6,
        },
        {
          'label': 'Doguinho',
          'value': 7,
        },
        {
          'label': 'Pretinho',
          'value': 4,
        },
      ],
    },
    {
      'label': 'Qual o seu anime favorito?',
      'answers': [
        {
          'label': 'Naruto',
          'value': 8,
        },
        {
          'label': 'Hunter X Hunter',
          'value': 10,
        },
        {
          'label': 'One Piece',
          'value': 7,
        },
        {
          'label': 'Black Clover',
          'value': 4,
        },
      ],
    },
  ];

  int _questionIndex = 0;
  int _totalPunctuation = 0;

  bool get areThereMoreQuestions {
    return _questionIndex < _questions.length;
  }

  void _nextQuestion(int punctuation) {
    if (areThereMoreQuestions) {
      setState(() {
        _questionIndex++;
        _totalPunctuation += punctuation;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Projeto Flutter'),
          centerTitle: true,
        ),
        body: areThereMoreQuestions
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                onSelection: _nextQuestion,
                areThereMoreQuestions: areThereMoreQuestions,
              )
            : Result(punctuation: _totalPunctuation),
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
