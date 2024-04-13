import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/03_element_embedding/widgets/phone_call/chat_box.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';

class ChatView extends ConsumerStatefulWidget {
  const ChatView({super.key});

  @override
  ConsumerState<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends ConsumerState<ChatView> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(Assets.video.call);
    _controller
      ..initialize()
      ..addListener(() {
        if (_controller.value.position.inSeconds >= 11) {
          _controller.pause();
          ref.read(presentationController.notifier).goToNextItem();
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> startVideoWalkthrough(int index) async {
    final presentationControllerProvider =
        ref.watch(presentationController.notifier);

    if (index == 6) {
      await _controller.play();
      await Future<void>.delayed(const Duration(seconds: 4));
      presentationControllerProvider.goToNextItem();
    }

    if (index == 7) {
      await Future<void>.delayed(const Duration(seconds: 2));
      presentationControllerProvider.goToNextItem();
    }

    if (index == 8) {
      await Future<void>.delayed(const Duration(seconds: 2));
      presentationControllerProvider.goToNextItem();
    }

    if (index == 9) {
      await Future<void>.delayed(const Duration(seconds: 1));
      presentationControllerProvider.goToNextItem();
    }

    if (index == 10) {
      await Future<void>.delayed(const Duration(seconds: 1));
      presentationControllerProvider.goToNextItem();
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);
    final presentation = ref.watch(presentationController);

    if (presentation.animationIndex >= 6) {
      startVideoWalkthrough(presentation.animationIndex);
    }

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
      child: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: CupertinoColors.black.withOpacity(0.5),
            border: Border.all(
              color: CupertinoColors.white.withOpacity(0.2),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: SizedBox(
            height: 800,
            width: 1200,
            child: Row(
              children: [
                horizontalMargin16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalMargin16,
                    horizontalMargin16,
                    Text(
                      t.guyName,
                      style: FSTextStyles.title(
                        fontSize: 60,
                        color: CupertinoColors.white,
                      ),
                    ),
                    SizedBox(
                      width: 450,
                      height: 700,
                      child: VideoPlayer(_controller),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: allPadding12,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: CupertinoColors.black.withOpacity(0.5),
                      border: Border.all(
                        color: CupertinoColors.white.withOpacity(0.2),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const SizedBox(
                      width: 600,
                      height: 800,
                      child: ChatBox(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
