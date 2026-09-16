import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';

class Styles {
  static TextStyle font28DarkGreenBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.darkGreen,
  );

  static TextStyle font20Bold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font16BlackBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.black,
  );

  static TextStyle font16DarkGreenRegular = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.darkGreen,
  );

  static TextStyle font14BlackRegular = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.black,
  );
}
