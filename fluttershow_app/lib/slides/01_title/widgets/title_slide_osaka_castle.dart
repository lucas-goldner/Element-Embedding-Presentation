import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TitleSlideOsakaCastle extends StatelessWidget {
  const TitleSlideOsakaCastle({super.key});

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: -180,
        left: 100,
        child: Transform.rotate(
          angle: 19,
          child: Image.asset(
            'assets/images/title_slide/osaka_castle.png',
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
