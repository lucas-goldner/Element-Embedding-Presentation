import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';

class TitleSlideGDGTokyoLogo extends StatelessWidget {
  const TitleSlideGDGTokyoLogo({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Assets.images.shared.gdgtokyoLogo.image(
          height: 80,
        ),
      );
}
