import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/wrapper/brightness_wrapper.dart';

class TitleSlideFlutterConnectionLogo extends StatelessWidget {
  const TitleSlideFlutterConnectionLogo({super.key});

  @override
  Widget build(BuildContext context) => Row(
        children: [
          BrightnessWrapper(
            lightThemeChild: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Assets.images.titleSlide.flutterconnectionLogo.svg(
                height: 80,
              ),
            ),
            darkThemeChild: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Assets.images.titleSlide.flutterconnectionLogo.svg(
                height: 80,
              ),
            ),
          ),
          horizontalMargin16,
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Text(
              'Flutter Connection',
              style: FSTextStyles.regularText(
                fontSize: 40,
              ),
            ),
          ),
        ],
      );
}
