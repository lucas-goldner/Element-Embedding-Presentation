import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_show/presentation/config/presentation_slides.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/presentation/widgets/menu.dart';
import 'package:flutter_show/styles/fs_style_constants.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PresentationSlides extends HookConsumerWidget {
  const PresentationSlides({this.slides, super.key});

  /// Used for widget tests, safe to ignore.
  @visibleForTesting
  final List<PresentationSlide>? slides;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presentationSlides = slides ?? PagesOfPresentation.values.slides;
    final presentation = ref.watch(presentationController);
    final controller =
        ref.read<PresentationController>(presentationController.notifier);
    final focusNode = useFocusNode();
    final size = MediaQuery.sizeOf(context);

    void onSlidePress() {
      if (!focusNode.hasFocus) {
        FocusScope.of(context).requestFocus(focusNode);
      }

      controller.goToNextItem();
    }

    void onSecondaryTap() => controller.toLastPage();

    return Focus(
      autofocus: true,
      focusNode: focusNode,
      onKey: (focus, onKey) => controller.handleKeyEvents(onKey),
      child: GestureDetector(
        onTap: onSlidePress,
        onSecondaryTap: onSecondaryTap,
        child: Stack(
          children: [
            CupertinoPageScaffold(
              child: FadingPresentation(
                pageIndex: presentation.page,
                presentationPages: presentationSlides,
                pageController: presentation.pageController,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedSize(
                curve: Curves.fastOutSlowIn,
                duration: const Duration(milliseconds: 500),
                child: SizedBox(
                  height: presentation.menuOpen
                      ? FSStyleConstants.getMenuHeight(size)
                      : 0,
                  child: Menu(
                    slides: slides,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
