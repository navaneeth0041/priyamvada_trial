import 'package:flutter/material.dart';

final themeData = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.black,
    onPrimary: Colors.white,
    secondary: Colors.black,
    onSecondary: Colors.black,
    error: Color(0xffFF0000),
    onError: Color(0xffFF0000),
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.transparent,
    onSurface: Colors.black,
  ),
  primaryColor: Colors.black,
  textTheme: const TextTheme(
    headlineSmall: TextStyle(
        fontFamily: "Nunito", fontWeight: FontWeight.w300, color: Colors.black,fontSize: 16),
  ),
);
