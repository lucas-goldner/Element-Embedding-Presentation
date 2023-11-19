import 'package:flutter/cupertino.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:fluttershow_keynote/slides/blank/keynote_blank_slide.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WebsiteReview extends ConsumerWidget {
  const WebsiteReview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presentation = ref.watch(presentationController);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: FSGradients.dynamicBackground(presentation.brightness),
      ),
      child: KeynoteBlankSlide(
        bodyWidget: Row(
          children: [
            Assets.images.websiteReview.websitePreview.image(scale: 0.75),
          ],
        ),
      ),
    );
  }
}
