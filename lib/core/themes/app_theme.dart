import 'package:flutter/material.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorsManager.lightBackground,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.primaryBlue,
      brightness: Brightness.light,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorsManager.primaryBlue,
      foregroundColor: ColorsManager.white,
      elevation: 0,
    ),
    cardColor: ColorsManager.lightCard,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.primaryBlue,
      foregroundColor: ColorsManager.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorsManager.lightCard,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.primaryBlue,
        foregroundColor: ColorsManager.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorsManager.darkBackground,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.primaryBlue,
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorsManager.darkBackground,
      foregroundColor: ColorsManager.darkText,
      elevation: 0,
    ),
    cardColor: ColorsManager.darkCard,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.primaryBlue,
      foregroundColor: ColorsManager.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorsManager.darkCard,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.primaryBlue,
        foregroundColor: ColorsManager.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
  );
}
