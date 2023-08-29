import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/model/enum/directional_animation_direction.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_keynote/slides/image/keynote_image_slide.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoldenHammerSlide extends ConsumerWidget {
  const GoldenHammerSlide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = S.of(context);
    final presentation = ref.watch(presentationController);
    final size = MediaQuery.sizeOf(context);

    return DirectionalAnimation(
      delay: 1000,
      direction: DirectionalAnimationDirection.bottom,
      curve: Curves.bounceOut,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            KeynoteImageSlide(
              image: Assets.images.goldenHammer.goldenHammer.image(
                width: size.width,
                height: size.height,
              ),
            ),
            Visibility(
              visible: presentation.animationIndex >= 1,
              child: Positioned(
                left: size.width / 2 + 200,
                top: size.height / 2,
                height: 400,
                width: 400,
                child: Stack(
                  children: [
                    Assets.images.goldenHammer.explosion.image(
                      fit: BoxFit.contain,
                    ),
                    Center(
                      child: Text(
                        t.what,
                        style: FSTextStyles.regularText(
                          color: Colors.black,
                          fontSize: 120,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
