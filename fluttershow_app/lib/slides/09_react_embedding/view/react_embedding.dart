import 'package:flutter/material.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:fluttershow_keynote/slides/title_and_bullets/keynote_title_and_bullets_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReactEmbeddingSlide extends ConsumerWidget {
  const ReactEmbeddingSlide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presentation = ref.watch(presentationController);
    final t = S.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: FSGradients.dynamicBackground(presentation.brightness),
      ),
      child: KeynoteTitleAndBulletsSlide(
        animationIndex: presentation.animationIndex,
        titleText: t.otherFrameworks,
        subTitleText: t.worksWith,
        bulletPoints: [
          t.adjustmentsReact,
          t.jasprHas,
        ],
        titleStyle: KeynoteTextstyles.title(),
        subtitleStyle: KeynoteTextstyles.body(),
        bulletTextStyle: KeynoteTextstyles.body(),
      ),
    );
  }
}
