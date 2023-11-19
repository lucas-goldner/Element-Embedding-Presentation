import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class HostElement extends StatelessWidget {
  const HostElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalMargin16,
          Text(
            'Create a host element',
            style: KeynoteTextstyles.body(),
          ),
          verticalMargin16,
          Assets.images.embeddingProcess.hostElement.image(),
        ],
      );
}
