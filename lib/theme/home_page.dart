import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final  text = MediaQuery.of(context).platformBrightness == Brightness.dark?"DarkTheme":"LightTheme";

    return Scaffold(
      body: Center(
        child: Text("hello $text"),
      ),
    );
  }
}
