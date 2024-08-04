import 'package:flutter/material.dart';

ThemeData themelight() {
  return ThemeData(
    useMaterial3: true,
    iconTheme: const IconThemeData(color: Colors.blue),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          textBaseline: TextBaseline.alphabetic),
    ),
  );
}

ThemeData themedark() {
  return ThemeData(
    useMaterial3: true,
    iconTheme: const IconThemeData(color: Colors.blue),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          textBaseline: TextBaseline.alphabetic),
    ),
  );
}
