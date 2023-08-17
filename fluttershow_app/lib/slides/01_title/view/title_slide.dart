import 'package:flutter/material.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/01_title/widgets/title_slide_elizabeth.dart';
import 'package:flutter_show/slides/01_title/widgets/title_slide_flutter_kaigi_logo.dart';
import 'package:flutter_show/slides/01_title/widgets/title_slide_osaka_castle.dart';
import 'package:flutter_show/slides/01_title/widgets/title_slide_title.dart';
import 'package:flutter_show/slides/01_title/widgets/title_slide_tokyo_tower.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_keynote/fluttershow_keynote.dart';
import 'package:fluttershow_keynote/slides/title_slide/keynote_title_slide.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TitleSlide extends ConsumerWidget {
  const TitleSlide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = S.of(context);
    final presentation = ref.watch(presentationController);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: FSGradients.dynamicBackground(presentation.brightness),
      ),
      child: Stack(
        children: [
          KeynoteTitleSlide(
            titleText: t.presentationTitle,
            subTitleText: t.presentationsInFlutter,
            footerText: t.author,
            titleGradient: FSGradients.titlePrimary,
            titleStyle: KeynoteTextstyles.title(),
            subtitleStyle: KeynoteTextstyles.subtitle(fontSize: 44),
            footerStyle: FSTextStyles.footerText(),
            titleWidgetReplacement: const TitleSlideTitle(),
            titleSubTitleSpacing: verticalMargin12,
          ),
          const TitleSlideFlutterKaigiLogo(),
          const TitleSlideOsakaCastle(),
          const TitleSlideTokyoTower(),
          const TitleSlideElizabeth(),
        ],
      ),
    );
  }
}
