import 'package:chatgptflutter/theme/home_page.dart';
import 'package:chatgptflutter/theme/my_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(builder: (context,_){
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
        title: 'Chatgpt With Flutter',
        theme: MyTheme.lightTheme,
        themeMode: themeProvider.themeMode,
        darkTheme: MyTheme.darkTheme,
        home: const HomePage(),
      );
    }, create: (BuildContext context) =>ThemeProvider(),
    );
  }
}

