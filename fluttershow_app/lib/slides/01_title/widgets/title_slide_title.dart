import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';

class TitleSlideTitle extends StatelessWidget {
  const TitleSlideTitle({super.key});

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          S.of(context).presentationTitle,
          style: FSTextStyles.title(),
        )
            .animate(
              autoPlay: true,
              onPlay: (controller) => controller.repeat(),
            )
            .shimmer(
              duration: 5.seconds,
              colors: [
                const Color.fromARGB(255, 255, 87, 221),
                const Color.fromARGB(255, 86, 194, 255),
                const Color.fromARGB(255, 255, 87, 221),
              ],
              stops: [0, 0.2, 1],
              curve: Curves.easeInQuad,
            ),
      );
}
