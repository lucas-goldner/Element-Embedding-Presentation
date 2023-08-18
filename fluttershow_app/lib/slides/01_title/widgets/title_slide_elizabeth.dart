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
      ).animate().moveY(
            begin: 400,
            end: 0,
            duration: 5.seconds,
            delay: 30.seconds,
          );
}
