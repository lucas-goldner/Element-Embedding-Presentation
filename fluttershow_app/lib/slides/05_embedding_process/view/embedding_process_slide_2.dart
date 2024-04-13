import 'package:flutter/material.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/05_embedding_process/widgets/load_scripts.dart';
import 'package:flutter_show/slides/shared/widgets/explanation_step.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmbeddingProcessSlide2 extends ConsumerWidget {
  const EmbeddingProcessSlide2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = S.of(context);
    final presentation = ref.watch(presentationController);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: FSGradients.dynamicBackground(presentation.brightness),
      ),
      child: Padding(
        padding: allPadding48,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            verticalMargin48,
            ExplanationStep(
              count: 2,
              title: t.initEngine,
              explanation: const LoadScripts(),
            ),
          ],
        ),
      ),
    );
  }
}
