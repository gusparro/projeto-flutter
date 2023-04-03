import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String label;

  const Question({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(label);
  }
}
