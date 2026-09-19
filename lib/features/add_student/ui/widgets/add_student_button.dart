import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/core/themes/styles.dart';

class AddStudentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isLoading;
  const AddStudentButton({
    super.key,
    required this.onPressed,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.darkGreen,
          foregroundColor: ColorsManager.beige,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  color: ColorsManager.beige,
                ),
              )
            : Text('Add Student', style: Styles.font16BeigeBold),
      ),
    );
  }
}
