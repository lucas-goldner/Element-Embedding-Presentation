import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/05_embedding_process/widgets/build_web.dart';
import 'package:flutter_show/slides/05_embedding_process/widgets/host_element.dart';
import 'package:flutter_show/slides/05_embedding_process/widgets/load_scripts.dart';
import 'package:flutter_show/slides/shared/widgets/explanation_step.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:fluttershow_base/components/model/enum/code_display_themes.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/components/widgets/wrapper/code_display.dart';
import 'package:fluttershow_keynote/slides/blank/keynote_blank_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmbeddingProcess extends ConsumerWidget {
  const EmbeddingProcess({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presentation = ref.watch(presentationController);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: FSGradients.dynamicBackground(presentation.brightness),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: allPadding48,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'How to embedd your Flutter app?',
                style: KeynoteTextstyles.title(fontSize: 64),
              ),
              verticalMargin48,
              verticalMargin48,
              const ExplanationStep(
                count: 1,
                title: '- Build web version',
                explanation: BuildWeb(),
              ),
              verticalMargin48,
              const ExplanationStep(
                count: 2,
                title: '- Load script and initialize engine',
                explanation: LoadScripts(),
              ),
              verticalMargin48,
              const ExplanationStep(
                count: 3,
                title: '- Load app into div',
                explanation: HostElement(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
