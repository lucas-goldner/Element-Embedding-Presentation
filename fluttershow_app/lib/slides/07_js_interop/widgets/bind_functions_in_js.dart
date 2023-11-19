import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_keynote/fluttershow_keynote.dart';

class BindFunctionsInsJs extends StatelessWidget {
  const BindFunctionsInsJs({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Initialize app state and bind functions',
            style: KeynoteTextstyles.body(),
          ),
          verticalMargin24,
          Assets.images.jsInterop.mainJs.image(),
          verticalMargin48,
          Text(
            'Initialize app state and bind functions',
            style: KeynoteTextstyles.body(),
          ),
          verticalMargin24,
          Assets.images.jsInterop.mainJs.image(),
          verticalMargin48,
          Text(
            'Set ids for inputs',
            style: KeynoteTextstyles.body(),
          ),
          verticalMargin24,
          Assets.images.jsInterop.bindFields.image(),
        ],
      );
}
