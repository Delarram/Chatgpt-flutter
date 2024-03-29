import 'package:chatgptflutter/main.dart';
import 'package:chatgptflutter/theme/chage-theme-button-widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   final  text = MediaQuery.of(context).platformBrightness == Brightness.dark?"DarkTheme":"LightTheme";
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        title: const Text("Themes"),
        actions: const [
          ThemeButtonWidget()
        ],
      ),
      body: Center(
        child: Text("hello $text"),
      ),
    );
  }
}
