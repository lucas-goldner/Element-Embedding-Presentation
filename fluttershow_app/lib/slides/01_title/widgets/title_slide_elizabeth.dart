import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_show/generated/assets.gen.dart';

class TitleSlideElizabeth extends StatelessWidget {
  const TitleSlideElizabeth({super.key});

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: -100,
        right: 20,
        child: Assets.images.titleSlide.elizabethWelcome.image(
          height: 500,
          width: 500,
        ),
      ).animate().moveY(
            begin: 400,
            end: 0,
            duration: 5.seconds,
            delay: 10.seconds,
          );
}
