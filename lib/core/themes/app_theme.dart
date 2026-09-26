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
  );
}
