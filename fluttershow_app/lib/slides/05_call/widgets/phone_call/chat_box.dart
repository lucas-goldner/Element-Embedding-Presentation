import 'package:flutter/cupertino.dart';
import 'package:flutter_show/slides/05_call/widgets/phone_call/chat_message.dart';
import 'package:flutter_show/styles/fs_text_styles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatBox extends ConsumerWidget {
  const ChatBox({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      const SingleChildScrollView(
        child: Column(
          children: [
            ChatMessage(
              text: 'Hey Lucas',
              opposite: true,
            ),
            ChatMessage(
              text:
                  'Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi, Hey Shinpachi',
            ),
          ],
        ),
      );
}
