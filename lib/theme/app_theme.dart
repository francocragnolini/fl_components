import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // color primario
      primaryColor: Colors.indigo,

      // appbar theme
      appBarTheme: const AppBarTheme(
        color: primary,
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // color primario
      primaryColor: Colors.indigo,
      // scaffold color
      scaffoldBackgroundColor: Colors.black,
      // appbar theme
      appBarTheme: const AppBarTheme(
        color: primary,
      ));
}
