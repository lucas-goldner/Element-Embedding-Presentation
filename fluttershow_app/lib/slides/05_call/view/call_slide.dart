import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/05_call/widgets/fake_slide/element_embedding_fake_slide.dart';
import 'package:flutter_show/slides/05_call/widgets/phone_call/phone_call_slide.dart';
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
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
            child: switch (presentation.animationIndex) {
              0 => const ElementEmbeddingFakeSlide(),
              1 => const PhoneCallSlide(),
              _ => const ElementEmbeddingFakeSlide(),
            },
          ),
        ],
      ),
    );
  }
}
