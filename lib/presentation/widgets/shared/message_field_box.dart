import 'package:flutter/material.dart';

class MessageFieldBox extends StatefulWidget {
  const MessageFieldBox({Key? key}) : super(key: key);

  @override
  _MessageFieldBoxState createState() => _MessageFieldBoxState();
}

class _MessageFieldBoxState extends State<MessageFieldBox> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController
        .dispose(); // ¡Importante! Liberar el controlador cuando el widget se elimine.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();

    final inputDecoration = InputDecoration(
      filled: true,
      hintText: "Escribe un mensaje",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      suffixIcon: IconButton(
        icon: const Icon(Icons.arrow_forward_rounded),
        onPressed: () {
          final textValue = textController.value.text;
          print('$textValue');
          textController
              .clear(); // Limpiar el campo después de enviar el mensaje.
        },
      ),
    );
    return TextFormField(
      onTapOutside: ((event) {
        focusNode.unfocus();
      }),
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('enviando mensaje $value');
        textController.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) {
        print('escribiendo mensaje $value');
      },
    );
  }
}
