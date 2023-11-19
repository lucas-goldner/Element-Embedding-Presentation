import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_show/generated/assets.gen.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/slides/03_element_emebdding/widgets/phone_call/chat_box.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:rive/rive.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);

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
                horizontalMargin48,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          t.guyName,
                          style: FSTextStyles.title(fontSize: 80),
                        ),
                      ],
                    ),
                    verticalMargin48,
                    CircleAvatar(
                      radius: 240,
                      child: ClipOval(
                        child: RiveAnimation.asset(
                          Assets.rive.guy,
                          artboard: 'Guy',
                        ),
                      ),
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
