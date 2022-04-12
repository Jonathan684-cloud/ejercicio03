import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static const Color second = Colors.blueAccent;
  //Tema  luminoso
  static final ThemeData lighTheme = ThemeData.light().copyWith(
      primaryColor: Colors.amberAccent,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
  //Tema oscuro
  static final ThemeData darkTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo[900],
      scaffoldBackgroundColor: Colors.black38,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      //TextButton
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.amber)));
}
