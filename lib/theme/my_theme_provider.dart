import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;

  bool get  isDarkMode {
  return  themeMode == ThemeMode.dark;
  }

  void toggleTheme(bool isOn){
    themeMode = isOn? ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }
}
class MyTheme{
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade900,
      primaryColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.purple.withOpacity(0.5)),
      colorScheme: const ColorScheme.dark()
  );

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.purple.withOpacity(0.5)),
    colorScheme: const ColorScheme.light()
  );
}