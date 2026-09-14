import 'package:flutter/material.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';

class Styles {
  static TextStyle font28DarkGreenBold = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: ColorsManager.darkGreen,
  );

  static TextStyle font16BlackBold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle font16DarkGreenRegular = const TextStyle(
    fontSize: 16,
    color: ColorsManager.darkGreen,
  );

  static TextStyle font14BlackRegular = const TextStyle(
    fontSize: 14,
    color: Colors.black,
  );
}
