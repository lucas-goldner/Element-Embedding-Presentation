import 'package:flutter/material.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/05_embedding_process/widgets/build_web.dart';
import 'package:flutter_show/slides/05_embedding_process/widgets/host_element.dart';
import 'package:flutter_show/slides/05_embedding_process/widgets/load_scripts.dart';
import 'package:flutter_show/slides/shared/widgets/explanation_step.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmbeddingProcessSlide extends ConsumerWidget {
  const EmbeddingProcessSlide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = S.of(context);
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
                t.howToEmbedd,
                style: KeynoteTextstyles.title(fontSize: 64),
              ),
              verticalMargin48,
              verticalMargin48,
              ExplanationStep(
                count: 1,
                title: t.buildWeb,
                explanation: const BuildWeb(),
              ),
              verticalMargin48,
              ExplanationStep(
                count: 2,
                title: t.initEngine,
                explanation: const LoadScripts(),
              ),
              verticalMargin48,
              ExplanationStep(
                count: 3,
                title: t.loadAppIntoDiv,
                explanation: const HostElement(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
