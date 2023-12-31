import 'package:flutter/cupertino.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/03_element_embedding/widgets/element_embedding_info.dart';
import 'package:flutter_show/slides/03_element_embedding/widgets/phone_call/chat_view.dart';
import 'package:flutter_show/slides/03_element_embedding/widgets/phone_call/facetime_call_box.dart';
import 'package:flutter_show/styles/fs_gradients.dart';
import 'package:fluttershow_base/components/widgets/animation/fade_animation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ElementEmbeddingSlide extends ConsumerWidget {
  const ElementEmbeddingSlide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presentation = ref.watch(presentationController);

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: FSGradients.dynamicBackground(presentation.brightness),
      ),
      child: Stack(
        children: [
          const ElementEmbeddingInfo(),
          Visibility(
            visible: presentation.animationIndex >= 5,
            child: AnimatedPositioned(
              top: 40,
              right: presentation.animationIndex >= 1 ? 40 : -440,
              duration: const Duration(milliseconds: 250),
              child: const FacetimeCallBox(),
            ),
          ),
          Visibility(
            visible: presentation.animationIndex >= 6,
            child: const FadeAnimation(
              delay: 3,
              child: ChatView(),
            ),
          ),
        ],
      ),
    );
  }
}
