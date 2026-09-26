import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/themes/styles.dart';

class GreetingHeader extends StatelessWidget {
  const GreetingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodyLarge?.color;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good Evening 👋',
            style: Styles.font28PrimaryBlueBold.copyWith(color: textColor),
          ),
          verticalSpace(6),
          Text(
            'Manage your students',
            style: Styles.font16PrimaryBlueRegular.copyWith(
              color: textColor?.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }
}
