import 'package:flutter/material.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'hola', fromWho: FromWho.me),
    Message(text: 'q pasa rey', fromWho: FromWho.me)
  ];
}

Future<void> sendMessage() async {
  // TODO: Implementar el envío de mensajes.
}
