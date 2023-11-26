import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';

class LoadScripts extends StatelessWidget {
  const LoadScripts({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalMargin32,
          Assets.images.embeddingProcess.loadingScripts.image(),
        ],
      );
}
