import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_show/generated/assets.gen.dart';

class TitleSlideTokyoTower extends StatelessWidget {
  const TitleSlideTokyoTower({super.key});

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: -40,
        left: 40,
        child: Transform.rotate(
          angle: 270,
          child: Assets.images.titleSlide.tokyoTower.image(
            height: 500,
          ),
        ),
      )
          .animate(
            autoPlay: true,
            onPlay: (controller) => controller.repeat(reverse: true),
          )
          .moveY(begin: 0, end: 20, duration: const Duration(seconds: 4));
}
