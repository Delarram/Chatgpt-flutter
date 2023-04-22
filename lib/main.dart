import 'package:chatgptflutter/chatgptpage/chatgpt_page.dart';
import 'package:chatgptflutter/theme/home_page.dart';
import 'package:chatgptflutter/theme/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatgpt With Flutter',
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: MyTheme.darkTheme,
      home: HomePage(),
    );
  }
}

