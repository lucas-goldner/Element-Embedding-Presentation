import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_show/generated/assets.gen.dart';

class TitleSlideLouvre extends StatelessWidget {
  const TitleSlideLouvre({super.key});

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: -40,
        left: 20,
        child: Transform.rotate(
          angle: 0.1,
          child: Assets.images.titleSlide.louvreParis.svg(
            height: 300,
          ),
        ),
      )
          .animate(
            autoPlay: true,
            onPlay: (controller) => controller.repeat(reverse: true),
          )
          .moveY(begin: 0, end: 12, duration: const Duration(seconds: 2));
}
