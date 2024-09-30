import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkModeChecked = true;

  void toggleTheme() {
    isDarkModeChecked = !isDarkModeChecked;
  }
}
