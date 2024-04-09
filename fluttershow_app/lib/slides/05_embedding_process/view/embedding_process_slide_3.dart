import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/05_embedding_process/widgets/host_element.dart';
import 'package:flutter_show/slides/shared/widgets/explanation_step.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmbeddingProcessSlide3 extends ConsumerWidget {
  const EmbeddingProcessSlide3({super.key});

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
            ExplanationStep(
              count: 3,
              title: t.loadAppIntoDiv,
              explanation: const HostElement(),
            ),
            verticalMargin48,
            Visibility(
              visible: presentation.animationIndex >= 1,
              child: Text(
                t.andThatsIt,
                style: FSTextStyles.regularText(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
