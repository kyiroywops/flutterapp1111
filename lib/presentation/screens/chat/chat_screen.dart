import "package:flutter/material.dart";
import "package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart";
import "package:yes_no_app/presentation/widgets/shared/message_field_box.dart";

import "../../widgets/chat/her_message_bubble.dart";

class ChatScreen extends StatelessWidget {
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const MyMessageBubble()
                    : const HerMessageBubble();
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
