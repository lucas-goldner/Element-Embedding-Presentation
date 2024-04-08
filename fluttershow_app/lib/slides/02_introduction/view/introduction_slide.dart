import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/model/presentation.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/02_introduction/widgets/folder_file.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_keynote/slides/blank/keynote_blank_slide.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

class IntroductionSlide extends HookConsumerWidget {
  const IntroductionSlide({super.key});

  void listenToAnimationIndexChanges(
    Presentation presentation,
    ValueNotifier<SimpleAnimation> openAnimationController,
  ) {
    if (presentation.animationIndex >= 2) {
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
        headerWidget: Column(
          children: [
            verticalMargin32,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 112,
                  backgroundImage: Assets.images.introduction.lucas.provider(),
                ),
                horizontalMargin32,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalMargin32,
                    Text(
                      t.hiIam,
                      style: FSTextStyles.regularText(
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      t.lucasGoldner,
                      style: FSTextStyles.title(
                        fontSize: 80,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),

        headerFlexUnits: 4,
        bodyWidget: Stack(
          children: [
            FadeAnimation(
              delay: 1,
              child: RiveAnimation.asset(
                'assets/rive/folder.riv',
                artboard: 'fold_er.svg',
                controllers: [
                  openAnimationController.value,
                ],
              ),
            ),
            Visibility(
              visible: presentation.animationIndex >= 2,
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Visibility(
                      visible: presentation.animationIndex >= 4,
                      child: FolderFile(t.fileThree, 6),
                    ),
                    Visibility(
                      visible: presentation.animationIndex >= 3,
                      child: FolderFile(
                        t.fileTwo,
                        5,
                        textReplacement: Column(
                          children: [
                            Text(
                              t.fileTwo,
                              textAlign: TextAlign.center,
                              style: FSTextStyles.regularText(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                            FittedBox(
                              child: Assets.images.introduction.youtrust.image(
                                fit: BoxFit.fitHeight,
                                height: 120,
                                width: 120,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: presentation.animationIndex >= 5,
                      child: FolderFile(t.fileOne, 4),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        //  Stack(
        //   children: [
        //     FadeAnimation(
        //       delay: 3,
        //       child: RiveAnimation.asset(
        //         'assets/rive/folder.riv',
        //         artboard: 'fold_er.svg',
        //         controllers: [
        //           openAnimationController.value,
        //         ],
        //       ),
        //     ),
        //     Visibility(
        //       visible: presentation.animationIndex >= 3,
        //       child: Center(
        //         child: Stack(
        //           children: [
        //             FolderFile(t.fileThree, 6),
        //             FolderFile(t.fileTwo, 5),
        //             FolderFile(t.fileOne, 4),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
