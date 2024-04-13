import 'package:flutter/material.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/07_js_interop/widgets/bind_functions_in_js.dart';
import 'package:flutter_show/slides/shared/widgets/explanation_step.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class JSInteropSlide2 extends ConsumerWidget {
  const JSInteropSlide2({super.key});

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
                t.jsInteropInteract,
                style: KeynoteTextstyles.title(fontSize: 64),
              ),
              verticalMargin48,
              ExplanationStep(
                count: 2,
                title: t.bindFunctionsFromDart,
                explanation: const BindFunctionsInsJs(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
