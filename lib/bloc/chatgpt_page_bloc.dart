import 'package:flutter/cupertino.dart';

import '../chatgptpage/chat_messages.dart';

class ChatGptBloc extends ChangeNotifier{
  final List<Messages>? chatMessage = [];
  final TextEditingController controller = TextEditingController();




  void sendMessage(){
  Messages messages = Messages(sender:controller.text, text: "User");
  chatMessage?.insert(0, messages);
  controller.clear();



  notifyListeners();
  }
}