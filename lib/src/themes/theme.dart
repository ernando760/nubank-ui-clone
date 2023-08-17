import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData themeLight = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF820AD1),
          brightness: Brightness.light,
          primary: const Color(0xFF8A19D6),
          background: const Color(0xFFf5f5f5),
          primaryContainer: const Color(0xFFF0F1F5)),
      textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )));
  static final ThemeData themeDark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF820AD1),
        brightness: Brightness.dark,
        primary: const Color(0xFF8A19D6),
        background: const Color(0xFF000000),
        primaryContainer: const Color(0xFF313131)),
    textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
  );
}
