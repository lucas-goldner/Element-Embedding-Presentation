import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:fluttershow_base/components/widgets/wrapper/brightness_wrapper.dart';

class TitleSlideGDGTokyoLogo extends StatelessWidget {
  const TitleSlideGDGTokyoLogo({super.key});

  @override
  Widget build(BuildContext context) => BrightnessWrapper(
        lightThemeChild: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Assets.images.shared.gdgtokyoLogo.image(
            height: 80,
          ),
        ),
        darkThemeChild: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Assets.images.shared.gdgtokyoLogoDarkMode.image(
            height: 80,
          ),
        ),
      );
}
