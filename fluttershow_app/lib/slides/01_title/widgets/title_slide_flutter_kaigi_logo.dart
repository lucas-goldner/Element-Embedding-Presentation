import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TitleSlideFlutterKaigiLogo extends StatelessWidget {
  const TitleSlideFlutterKaigiLogo({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: SvgPicture.asset(
          'assets/images/shared/flutterkaigi_logo.svg',
          height: 80,
        ),
      );
}
