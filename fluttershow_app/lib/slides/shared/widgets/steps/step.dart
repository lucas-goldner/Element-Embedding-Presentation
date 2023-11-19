import 'package:flutter/material.dart';

class ExplanationStep extends StatelessWidget {
  const ExplanationStep(this.count, this.explanation, {super.key});
  final int count;
  final Widget explanation;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Step $count'),
          explanation,
        ],
      );
}
