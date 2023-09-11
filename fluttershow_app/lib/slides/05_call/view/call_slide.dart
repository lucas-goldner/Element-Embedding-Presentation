import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/05_call/widgets/fake_slide/element_embedding_fake_slide.dart';
import 'package:flutter_show/slides/05_call/widgets/phone_call/facetime_call_box.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CallSlide extends HookConsumerWidget {
  const CallSlide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presentation = ref.watch(presentationController);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: FSGradients.dynamicBackground(presentation.brightness),
      ),
      child: Stack(
        children: [
          const ElementEmbeddingFakeSlide(),
          AnimatedPositioned(
            top: 40,
            right: presentation.animationIndex >= 1 ? 40 : -440,
            duration: const Duration(milliseconds: 250),
            child: const FacetimeCallBox(),
          ),
        ],
      ),
    );
  }
}
