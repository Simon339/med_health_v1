import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
 brightness: Brightness.dark,
 appBarTheme:  AppBarTheme(
 backgroundColor: Colors.grey[200],
 elevation: 0,
 iconTheme: const IconThemeData(color: Colors.white),
 ),

 colorScheme: ColorScheme.dark(
  background: Colors.grey[900]!,
  primary: Colors.grey[100]!,
  secondary: Colors.white,
  inversePrimary: Colors.grey[600]!,
 ),
 textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: Colors.white),
  ),
);
