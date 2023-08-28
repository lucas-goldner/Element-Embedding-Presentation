import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/model/presentation.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/02_introduction/widgets/folder_file.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_keynote/slides/blank/keynote_blank_slide.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

class IntroductionSlide extends HookConsumerWidget {
  const IntroductionSlide({super.key});

  void listenToAnimationIndexChanges(
    Presentation presentation,
    ValueNotifier<SimpleAnimation> openAnimationController,
  ) {
    if (presentation.animationIndex >= 3) {
      activateAnimation(openAnimationController);
    }
  }

  void activateAnimation(ValueNotifier<SimpleAnimation> animationController) {
    animationController.value.isActive = true;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = S.of(context);
    final presentation = ref.watch(presentationController);
    final openAnimationController = useState(
      SimpleAnimation('Open', autoplay: false),
    );

    listenToAnimationIndexChanges(
      presentation,
      openAnimationController,
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: FSGradients.dynamicBackground(presentation.brightness),
      ),
      child: KeynoteBlankSlide(
        animationIndex: presentation.animationIndex,
        headerWidget: Text(
          t.selfIntroduction,
          style: FSTextStyles.title(
            fontSize: 80,
          ),
        ),
        headerAlignment: Alignment.centerLeft,
        headerFlexUnits: 2,
        bodyWidget: Stack(
          children: [
            Visibility(
              visible: presentation.animationIndex == 1,
              child: FadeAnimation(
                delay: 3,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 48),
                  child: Text(
                    '?',
                    style: FSTextStyles.title(fontSize: 300),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: presentation.animationIndex >= 2,
              child: FadeAnimation(
                delay: 3,
                child: RiveAnimation.asset(
                  'assets/rive/folder.riv',
                  artboard: 'fold_er.svg',
                  controllers: [
                    openAnimationController.value,
                  ],
                ),
              ),
            ),
            Visibility(
              visible: presentation.animationIndex >= 3,
              child: Center(
                child: Stack(
                  children: [
                    FolderFile(t.fileOne, 4),
                    FolderFile(t.fileTwo, 5),
                    FolderFile(t.fileThree, 6),
                  ],
                ),
              ),
            ),
          ],
        ),
        bodyFlexUnits: 10,
      ),
    );
  }
}
