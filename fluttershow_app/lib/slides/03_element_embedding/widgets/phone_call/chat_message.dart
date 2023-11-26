import 'package:flutter/cupertino.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    required this.text,
    this.incoming = false,
    this.link = false,
    super.key,
  });
  final String text;
  final bool incoming;
  final bool link;

  @override
  Widget build(BuildContext context) {
    final messageColorBox =
        incoming ? CupertinoColors.activeBlue : CupertinoColors.white;
    final colorText = incoming ? CupertinoColors.white : CupertinoColors.black;

    final widgetList = [
      const Spacer(),
      ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 540,
        ),
        child: Padding(
          padding: allPadding12,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: messageColorBox,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Padding(
              padding: allPadding12,
              child: Text(
                text,
                style: FSTextStyles.regularText(
                  color: colorText,
                  fontSize: 22,
                  decoration:
                      link ? TextDecoration.underline : TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
      ),
    ];

    return Row(
      children: incoming ? widgetList.reversed.toList() : widgetList,
    );
  }
}
