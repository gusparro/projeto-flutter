import 'package:flutter/material.dart';

void main() {
  runApp(const ProjetoFlutterApp());
}

class ProjetoFlutterState extends State<ProjetoFlutterApp> {
  var indexPergunta = 0;

  void responder() {
    setState(() {
      indexPergunta++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
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
            Text(perguntas[indexPergunta]),
            ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 1')
            ),
            ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 2')
            ),
            ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 3')
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
