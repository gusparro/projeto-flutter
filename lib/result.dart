import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int punctuation;
  final void Function() onReset;

  const Result({Key? key, required this.punctuation, required this.onReset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Parabéns, sua pontuação foi de $punctuation pontos.',
            style: const TextStyle(
              fontSize: 26,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(24),
          child: TextButton(
            onPressed: onReset,
            child: const Text(
              'Reiniciar Quiz?',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
