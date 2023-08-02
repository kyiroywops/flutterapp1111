import "package:flutter/material.dart";

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
    );
  }
}
