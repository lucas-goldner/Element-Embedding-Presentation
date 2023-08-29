import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';

class TitleSlideFlutterKaigiLogo extends StatelessWidget {
  const TitleSlideFlutterKaigiLogo({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Assets.images.shared.flutterkaigiLogo.svg(
          height: 80,
        ),
      );
}
