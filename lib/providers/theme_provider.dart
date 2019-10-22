import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _theme = ThemeData.dark();
  bool isDark = true;

  ThemeData get theme {
    return _theme;
  }

  void light() {
    _theme = ThemeData();
    isDark = false;
    notifyListeners();
  }

  void dark() {
    _theme = ThemeData.dark();
    isDark = true;
    notifyListeners();
  }
}
