import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TitleSlideElizabeth extends StatelessWidget {
  const TitleSlideElizabeth({super.key});

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: -100,
        right: 20,
        child: Image.asset(
          'assets/images/title_slide/elizabeth_welcome.png',
          height: 500,
          width: 500,
        ),
      )
          .animate(
            autoPlay: true,
            onPlay: (controller) => controller.repeat(reverse: true),
          )
          .moveY(
            begin: 400,
            end: 0,
            duration: 4.seconds,
            delay: 12.seconds,
          );
}
