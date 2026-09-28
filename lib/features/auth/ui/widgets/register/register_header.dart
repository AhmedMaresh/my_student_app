import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create Account ✨',
          style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
        ),
        verticalSpace(8),
        Text(
          'Register to get started',
          style: TextStyle(
            fontSize: 16.sp,
            color: Theme.of(
              context,
            ).textTheme.bodyLarge?.color?.withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }
}
