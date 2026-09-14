import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';

class StudentSearchBar extends StatelessWidget {
  const StudentSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: ColorsManager.beige,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: TextField(
        cursorColor: ColorsManager.darkGreen,
        decoration: InputDecoration(
          //Focused border for the search bar
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(color: ColorsManager.darkGreen, width: 1.w),
          ),
          //Enabled border for the search bar
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
              color: ColorsManager.darkGreen.withValues(alpha: 0.3),
              width: 1.w,
            ),
          ),
          hintText: 'Search students...',
          prefixIcon: Icon(Icons.search, color: ColorsManager.darkGreen),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15.h),
        ),
      ),
    );
  }
}
