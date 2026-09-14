import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/extensions.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/core/themes/styles.dart';

class StudentCard extends StatelessWidget {
  final String name;
  final int age;

  const StudentCard({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: ColorsManager.beige,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.darkGreen.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16.r),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          borderRadius: BorderRadius.circular(16.r),
          onTap: () {
            context.pushNamed(
              Routes.studentDetailsScreen,
              arguments: {'name': name, 'age': age},
            );
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24.r,
                  backgroundColor: ColorsManager.darkGreen,
                  child: Icon(
                    Icons.person,
                    color: ColorsManager.beige,
                    size: 32.sp,
                  ),
                ),
                horizontalSpace(12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: Styles.font16BlackBold),
                      verticalSpace(4),
                      Text('Age: $age', style: Styles.font14BlackRegular),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18.sp,
                  color: ColorsManager.darkGreen,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
