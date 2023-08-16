import 'package:flutter/cupertino.dart';

class TitleSlideTokyoTower extends StatelessWidget {
  const TitleSlideTokyoTower({super.key});

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: -40,
        child: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Transform.rotate(
            angle: 270,
            child: Image.asset(
              'assets/images/title_slide/tokyo_tower.png',
              height: 500,
            ),
          ),
        ),
      );
}
