import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';

class Styles {
  static TextStyle font28PrimaryBlueBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.primaryBlue,
  );

  static TextStyle font20PrimaryBlueBold = TextStyle(
    fontSize: 20.sp,
    color: ColorsManager.primaryBlue,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font16BlackBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.black,
  );

  static TextStyle font16WhiteBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.white,
  );

  static TextStyle font16PrimaryBlueRegular = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.primaryBlue,
  );

  static TextStyle font14BlackRegular = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.black,
  );
}
