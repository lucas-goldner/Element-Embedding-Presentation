import 'package:flutter/cupertino.dart';
import 'package:flutter_show/presentation/provider/presentation_controller_provider.dart';
import 'package:flutter_show/slides/05_call/widgets/phone_call/chat_message.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatBox extends ConsumerWidget {
  const ChatBox({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presentation = ref.watch(presentationController);
    final animationIndex = presentation.animationIndex;

    return SingleChildScrollView(
      child: Column(
        children: [
          Visibility(
            visible: animationIndex >= 3,
            child: const ChatMessage(
              text: 'Lucas I need your help',
              incoming: true,
            ),
          ),
          Visibility(
            visible: animationIndex >= 4,
            child: const ChatMessage(
              text: 'I heard you are good at web development',
              incoming: true,
            ),
          ),
          Visibility(
            visible: animationIndex >= 5,
            child: const ChatMessage(
              text: 'You could say so...',
            ),
          ),
          Visibility(
            visible: animationIndex >= 6,
            child: const ChatMessage(
              text:
                  'I have built my landing page for my new app can you check it out?',
              incoming: true,
            ),
          ),
          Visibility(
            visible: animationIndex >= 7,
            child: const ChatMessage(
              text: 'Now?',
            ),
          ),
          Visibility(
            visible: animationIndex >= 8,
            child: const ChatMessage(
              text: 'Yes please!',
              incoming: true,
            ),
          ),
        ],
      ),
    );
  }
}
