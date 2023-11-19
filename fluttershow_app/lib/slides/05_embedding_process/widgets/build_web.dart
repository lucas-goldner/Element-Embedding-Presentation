import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:fluttershow_base/components/model/enum/code_display_themes.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/wrapper/code_display.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class BuildWeb extends StatelessWidget {
  const BuildWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalMargin16,
          Text(
            'Run build command:',
            style: KeynoteTextstyles.body(),
          ),
          verticalMargin4,
          SizedBox(
            width: 180,
            child: CodeDisplay(
              'flutter build web',
              codeColorTheme: CodeDisplayColorThemes.cobalt,
              height: 20,
            ),
          ),
          verticalMargin32,
          Text(
            'Output',
            style: KeynoteTextstyles.body(),
          ),
          verticalMargin16,
          Assets.images.embeddingProcess.webOutput.image(),
        ],
      );
}
