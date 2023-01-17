import 'package:flutter/material.dart';

import 'chat_messages.dart';

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
        backgroundColor: Colors.white,
        title: Text("ChatGpt with Flutter"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: chatMessage?.length,
              itemBuilder: (context, index) {
            return chatMessage![index];
          }),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration.collapsed(
                      hintText: "send a message",
                    ),
                  ),
                ),
                Icon(Icons.send)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
