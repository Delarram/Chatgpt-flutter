import 'package:chatgptflutter/bloc/chatgpt_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'chat_messages.dart';

class ChatGptPage extends StatefulWidget {
  const ChatGptPage({Key? key}) : super(key: key);

  @override
  State<ChatGptPage> createState() => _ChatGptPageState();
}

class _ChatGptPageState extends State<ChatGptPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ChatGptBloc>(
      create: (context) => ChatGptBloc(),
      child: Consumer<ChatGptBloc>(
        builder: (context, bloc, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text("ChatGpt with Flutter"),
              centerTitle: true,
            ),
            body: Column(
              children: [
                // ListView.builder(
                //     itemCount: chatMessage?.length,
                //     itemBuilder: (context, index) {
                //   return chatMessage![index];
                // }),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: bloc.controller,
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
        },
      ),
    );
  }
}
