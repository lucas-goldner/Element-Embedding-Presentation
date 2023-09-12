import 'package:flutter/cupertino.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({required this.text, this.opposite = false, super.key});
  final String text;
  final bool opposite;

  @override
  Widget build(BuildContext context) {
    final messageColorBox =
        opposite ? CupertinoColors.white : CupertinoColors.activeBlue;
    final colorText = opposite ? CupertinoColors.black : CupertinoColors.white;

    final widgetList = [
      const Spacer(),
      ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 540,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: messageColorBox,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                text,
                style: FSTextStyles.regularText(
                  color: colorText,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ),
      ),
    ];

    return Row(
      children: opposite ? widgetList : widgetList.reversed.toList(),
    );
  }
}
