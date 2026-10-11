import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';

class StudentImagePicker extends StatelessWidget {
  const StudentImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          width: 110.w,
          height: 110.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsManager.lightCard,
            border: Border.all(color: ColorsManager.primaryBlue, width: 2.w),
          ),
          child: Icon(
            Icons.person,
            size: 55.sp,
            color: ColorsManager.primaryBlue,
          ),
        ),
        Container(
          width: 34.w,
          height: 34.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsManager.primaryBlue,
          ),
          child: Icon(
            Icons.add_a_photo_outlined,
            size: 18.sp,
            color: ColorsManager.white,
          ),
        ),
      ],
    );
  }
}
