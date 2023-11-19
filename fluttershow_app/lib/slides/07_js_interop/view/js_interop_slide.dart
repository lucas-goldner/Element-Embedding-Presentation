import 'package:flutter/material.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/07_js_interop/widgets/bind_functions_in_js.dart';
import 'package:flutter_show/slides/07_js_interop/widgets/setup_js_in_flutter.dart';
import 'package:flutter_show/slides/shared/widgets/explanation_step.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:fluttershow_base/components/model/enum/code_display_themes.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/components/widgets/wrapper/code_display.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class JSInteropSlide extends ConsumerWidget {
  const JSInteropSlide({super.key});

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
                'Interact with app using JS Interop',
                style: KeynoteTextstyles.title(fontSize: 64),
              ),
              verticalMargin48,
              verticalMargin48,
              const ExplanationStep(
                count: 1,
                title: '- Setup JS Interop in Flutter app',
                explanation: SetupJSInFlutter(),
              ),
              verticalMargin48,
              const ExplanationStep(
                count: 2,
                title: '- Bind functions from Dart to JS',
                explanation: BindFunctionsInsJs(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
