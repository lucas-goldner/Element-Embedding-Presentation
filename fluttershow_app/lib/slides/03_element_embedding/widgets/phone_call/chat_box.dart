import 'package:flutter/cupertino.dart';
import 'package:flutter_show/generated/l10n.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/03_element_embedding/widgets/phone_call/chat_message.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatBox extends ConsumerWidget {
  const ChatBox({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presentation = ref.watch(presentationController);
    final animationIndex = presentation.animationIndex;
    final t = S.of(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Visibility(
            visible: animationIndex >= 6,
            child: ChatMessage(
              text: t.chatMessage1,
              incoming: true,
            ),
          ),
          Visibility(
            visible: animationIndex >= 7,
            child: ChatMessage(
              text: t.chatMessage2,
              incoming: true,
            ),
          ),
          Visibility(
            visible: animationIndex >= 8,
            child: ChatMessage(
              text: t.chatMessage3,
            ),
          ),
          Visibility(
            visible: animationIndex >= 9,
            child: ChatMessage(
              text: t.chatMessage4,
              incoming: true,
            ),
          ),
          Visibility(
            visible: animationIndex >= 10,
            child: ChatMessage(
              text: t.chatMessage5,
            ),
          ),
          Visibility(
            visible: animationIndex >= 11,
            child: ChatMessage(
              text: t.chatMessage6,
              incoming: true,
            ),
          ),
          Visibility(
            visible: animationIndex >= 12,
            child: ChatMessage(
              text: t.chatMessage7,
              incoming: true,
              link: true,
            ),
          ),
        ],
      ),
    );
  }
}
