import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key, required this.sender, required this.text}) : super(key: key);

  final String sender;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 50,backgroundColor: Colors.white,child: Text(sender[0]),),
        Expanded(
          child: Column(
            children: [
              Text(sender,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),),SizedBox(height:5,),
              Text(text,style: TextStyle(fontSize: 14),)
            ],
          ),
        )
      ],
    );
  }
}
