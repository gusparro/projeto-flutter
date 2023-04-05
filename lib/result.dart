import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int punctuation;

  const Result({Key? key, required this.punctuation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Parabéns, sua pontuação foi de $punctuation pontos.',
        style: const TextStyle(
          fontSize: 26,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
