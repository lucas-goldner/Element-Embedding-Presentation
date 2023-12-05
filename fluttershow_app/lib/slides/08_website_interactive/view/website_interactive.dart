import 'package:flutter/cupertino.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/shared/constants.dart';
import 'package:flutter_show/slides/shared/widgets/webview/web_view.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:fluttershow_keynote/slides/blank/keynote_blank_slide.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WebsiteInteractive extends ConsumerWidget {
  const WebsiteInteractive({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presentation = ref.watch(presentationController);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: FSGradients.dynamicBackground(presentation.brightness),
      ),
      child: const KeynoteBlankSlide(
        bodyWidget: WebView('${PresentationConstants.baseURL}interactive.html'),
      ),
    );
  }
}
