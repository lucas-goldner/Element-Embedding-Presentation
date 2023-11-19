import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_show/generated/assets.gen.dart';

class TitleSlideMeijiJingu extends StatelessWidget {
  const TitleSlideMeijiJingu({super.key});

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: -60,
        left: -54,
        child: Assets.images.titleSlide.meijiJingu.image(
          height: 300,
        ),
      )
          .animate(
            autoPlay: true,
            onPlay: (controller) => controller.repeat(reverse: true),
          )
          .moveY(begin: 0, end: 12, duration: const Duration(seconds: 2));
}
