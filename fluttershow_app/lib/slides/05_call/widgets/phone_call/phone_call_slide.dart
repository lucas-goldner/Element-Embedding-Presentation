import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/05_call/widgets/phone_call/facetime_call_box.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:fluttershow_keynote/slides/blank/keynote_blank_slide.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PhoneCallSlide extends ConsumerWidget {
  const PhoneCallSlide({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presentation = ref.watch(presentationController);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: FSGradients.dynamicBackground(presentation.brightness),
      ),
      child: const KeynoteBlankSlide(
        bodyWidget: FacetimeCallBox(),
      ),
    );
  }
}
