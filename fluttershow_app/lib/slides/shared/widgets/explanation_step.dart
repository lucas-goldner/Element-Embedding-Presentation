import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_keynote/fluttershow_keynote.dart';

class ExplanationStep extends StatelessWidget {
  const ExplanationStep({
    required this.explanation,
    required this.count,
    String? title,
    super.key,
  }) : _title = title ?? '';

  final int count;
  final String _title;
  final Widget explanation;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step $count $_title',
            style: KeynoteTextstyles.fact(fontSize: 48),
          ),
          verticalMargin32,
          explanation,
        ],
      );
}
