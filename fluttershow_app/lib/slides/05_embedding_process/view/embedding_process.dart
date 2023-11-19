import 'package:flutter/material.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/shared/widgets/steps/step.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
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
      child: KeynoteBlankSlide(
        headerWidget: Text(
          'Header',
          style: KeynoteTextstyles.title(),
        ),
        bodyWidget: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ExplanationStep(1, Text('Build web version')),
              ExplanationStep(2, Text('Load script and initialize engine')),
            ],
          ),
        ),
      ),
    );
  }
}
