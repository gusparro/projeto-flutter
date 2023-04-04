import 'package:flutter/material.dart';
import 'package:projeto_flutter/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final bool areThereMoreQuestions;
  final void Function() onSelection;

  const Quiz({
    Key? key,
    required this.questions,
    required this.questionIndex,
    required this.onSelection,
    required this.areThereMoreQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Answer>? answers = areThereMoreQuestions
        ? (questions[questionIndex]['answers'] as List<String>?)
            ?.map(
                (answer) => Answer(label: answer, onSelection: onSelection))
            .toList()
        : null;

    return Column(
      children: [
        Question(
          label: questions[questionIndex]['label'].toString(),
        ),
        ...?answers,
      ],
    );
  }
}
