import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_keynote/fluttershow_keynote.dart';

class BindFunctionsInsJs extends StatelessWidget {
  const BindFunctionsInsJs({super.key});

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.initAppStateSetCallbacks,
          style: KeynoteTextstyles.body(),
        ),
        verticalMargin24,
        Assets.images.jsInterop.mainJs.image(),
        verticalMargin48,
        Text(
          t.setIds,
          style: KeynoteTextstyles.body(),
        ),
        verticalMargin24,
        Assets.images.jsInterop.bindFields.image(),
      ],
    );
  }
}
