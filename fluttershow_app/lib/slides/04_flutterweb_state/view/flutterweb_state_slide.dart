import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_keynote/slides/blank/keynote_blank_slide.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scratcher/widgets.dart';

class FlutterWebStateSlide extends ConsumerWidget {
  const FlutterWebStateSlide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(presentationController);
    final size = MediaQuery.sizeOf(context);
    final t = S.of(context);
    final scratchKey = GlobalKey<ScratcherState>();

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: FSGradients.dynamicBackground(controller.brightness),
      ),
      child: KeynoteBlankSlide(
        headerWidget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              t.flutterWebStateCard,
              style: FSTextStyles.title(fontSize: 64),
            ),
            horizontalMargin24,
            CupertinoButton.filled(
              onPressed: () => scratchKey.currentState?.reset(),
              child: const Text('Reset'),
            ),
          ],
        ),
        headerFlexUnits: 1,
        bodyWidget: Scratcher(
          key: scratchKey,
          brushSize: 50,
          color: Colors.blueGrey,
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      t.flutterWebBenefitProgressiveWebApp,
                      style: FSTextStyles.regularText(),
                    ),
                    horizontalMargin48,
                  ],
                ),
                verticalMargin12,
                Row(
                  children: [
                    Text(
                      t.flutterWebDownsideHotRestart,
                      style: FSTextStyles.regularText(),
                    ),
                    horizontalMargin48,
                    horizontalMargin48,
                    horizontalMargin48,
                    horizontalMargin48,
                  ],
                ),
                verticalMargin48,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    horizontalMargin48,
                    horizontalMargin48,
                    horizontalMargin48,
                    Text(
                      t.flutterWebBenefitSinglePageApp,
                      style: FSTextStyles.regularText(),
                    ),
                    horizontalMargin48,
                    horizontalMargin48,
                  ],
                ),
                Row(
                  children: [
                    horizontalMargin48,
                    horizontalMargin48,
                    Text(
                      t.flutterWebBenefitEasyWebRelease,
                      style: FSTextStyles.regularText(),
                    ),
                    horizontalMargin12,
                    horizontalMargin48,
                  ],
                ),
                verticalMargin32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      t.flutterWebDownsideSEOHeavyWebsite,
                      style: FSTextStyles.regularText(),
                    ),
                    horizontalMargin48,
                  ],
                ),
                Row(
                  children: [
                    horizontalMargin48,
                    horizontalMargin48,
                    Text(
                      t.flutterWebDownsidePackageSupport,
                      style: FSTextStyles.regularText(),
                    ),
                    horizontalMargin48,
                    horizontalMargin48,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
