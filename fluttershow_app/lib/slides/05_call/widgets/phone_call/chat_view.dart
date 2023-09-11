import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatView extends ConsumerWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            child: Column(
              children: [
                Row(
                  children: [
                    horizontalMargin32,
                    Text(
                      t.guyName,
                      style: FSTextStyles.title(fontSize: 80),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
