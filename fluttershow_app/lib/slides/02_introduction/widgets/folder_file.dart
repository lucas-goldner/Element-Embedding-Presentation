import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';

class FolderFile extends HookWidget {
  const FolderFile(this.text, this.animationIndex, {super.key});
  final String text;
  final int animationIndex;

  @override
  Widget build(BuildContext context) {
    final position = useState(const Offset(100, 100));
    final normalizedAnimationIndex = animationIndex - 3;

    final child = Padding(
      padding: EdgeInsets.only(
        bottom: 180,
        left: (100 * normalizedAnimationIndex).toDouble(),
        right: 140,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 247, 154),
          border: Border.all(width: 2),
        ),
        width: 240,
        height: 240,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                text,
                style: FSTextStyles.regularText(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              verticalMargin16,
              Visibility(
                visible: animationIndex == 5,
                child: Assets.images.introduction.tsukubaDaigaku.image(
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return FadeAnimation(
      delay: 200,
      child: Draggable(
        childWhenDragging: Opacity(
          opacity: .3,
          child: child,
        ),
        onDragEnd: (details) => position.value = details.offset,
        feedback: child,
        child: child,
      ),
    );
  }
}
