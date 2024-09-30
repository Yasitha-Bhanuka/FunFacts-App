import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkModeChecked = true;

  String dataToUpdate = "Hello world from global state";

  void updateStringData({required String newData}) {
    dataToUpdate = newData;
    notifyListeners();
  }
}
