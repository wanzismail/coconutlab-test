import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF672ECE);
  static const Color lightPurple = Color(0xFFEBE4FA);
  static const Color darkGrey = Color(0xFF333333);
  static const Color mediumGrey = Color(0xFF828282);
  static const Color lightGrey = Color(0xFFE0E0E0);

  static final ThemeData themeData = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: darkGrey,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: darkGrey,
      ),
      bodyMedium: TextStyle(fontSize: 14, color: darkGrey),
      bodySmall: TextStyle(fontSize: 12, color: mediumGrey),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),
  );
}
