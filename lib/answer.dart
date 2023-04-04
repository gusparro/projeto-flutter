import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String label;
  final void Function() onSelection;

  const Answer({Key? key, required this.label, required this.onSelection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onSelection,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
