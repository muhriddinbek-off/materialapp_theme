import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  get themMode => _themeMode;

  toggleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
