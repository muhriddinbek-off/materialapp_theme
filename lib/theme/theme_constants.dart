import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.amberAccent,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.orange,
  ),
  scaffoldBackgroundColor: const Color(0xFFC2CCD1),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
);
