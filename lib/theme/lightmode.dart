import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black, 
    fontSize: 20,
  ),
  ),
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary:  Colors.grey[800]!,
    secondary: Colors.grey[100]!,
    inversePrimary: Colors.black
  ),
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: Colors.black),
  ),
);