import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateStudentTextButton extends StatelessWidget {
  final String buttonText;
  final Color color;
  final VoidCallback? onPressed;
  final bool isLoading;

  const UpdateStudentTextButton({
    super.key,
    required this.buttonText,
    required this.color,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: isLoading
          ? SizedBox(
              width: 18.w,
              height: 18.h,
              child: CircularProgressIndicator(strokeWidth: 2, color: color),
            )
          : Text(buttonText, style: TextStyle(color: color)),
    );
  }
}
