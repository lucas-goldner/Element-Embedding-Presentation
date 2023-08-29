import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_show/generated/assets.gen.dart';

class TitleSlideOsakaCastle extends StatelessWidget {
  const TitleSlideOsakaCastle({super.key});

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: -180,
        left: 40,
        child: Transform.rotate(
          angle: 19,
          child: Assets.images.titleSlide.osakaCastle.image(
            height: 600,
          ),
        ),
      )
          .animate(
            autoPlay: true,
            onPlay: (controller) => controller.repeat(reverse: true),
          )
          .moveY(begin: 0, end: 12, duration: const Duration(seconds: 2));
}
