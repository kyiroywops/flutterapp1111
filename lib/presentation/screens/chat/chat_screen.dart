import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart";
import "package:yes_no_app/presentation/widgets/shared/message_field_box.dart";

import "../../providers/chat_provider.dart";
import "../../widgets/chat/her_message_bubble.dart";

class ChatScreen extends StatelessWidget {
  final Onvalue;
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "kkkk",
        ),
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZVXUv9Dt-YSWQqgxkIQ0m1Pl_YNzWEwNWfh-tkK_oUARsxqqDLGVPZoJjveFK_nuV0SQ&usqp=CAU'),
          ),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];
                return (message.fromWho == FromWho.me)
                    ? HerMessageBubble(message: message)
                    : MyMessageBubble(message: message);
              },
            )),
            const MessageFieldBox(),
            // Caja de texto
          ],
        ),
      ),
    );
  }
}
