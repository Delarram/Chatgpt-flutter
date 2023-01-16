import 'package:flutter/material.dart';

class ChatGptPage extends StatefulWidget {
  const ChatGptPage({Key? key}) : super(key: key);

  @override
  State<ChatGptPage> createState() => _ChatGptPageState();
}

class _ChatGptPageState extends State<ChatGptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chatgpt page"),

      ),
    );
  }
}
