import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/features/auth/ui/widgets/auth_button.dart';
import 'package:my_student_app/features/auth/ui/widgets/auth_text_field.dart';
import 'package:my_student_app/features/auth/ui/widgets/register/already_have_account.dart';
import 'package:my_student_app/features/auth/ui/widgets/register/register_header.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(60),
                const RegisterHeader(),
                verticalSpace(40),
                AuthTextField(
                  labelText: 'Name',
                  icon: Icons.person_outline,
                  obsecureText: false,
                ),
                verticalSpace(20),
                AuthTextField(
                  labelText: 'Email',
                  icon: Icons.email_outlined,
                  obsecureText: false,
                ),
                verticalSpace(20),
                AuthTextField(
                  labelText: 'Password',
                  icon: Icons.lock_outline_rounded,
                  obsecureText: true,
                ),
                verticalSpace(30),
                AuthButton(text: 'Register', onPressed: () {}),
                verticalSpace(20),
                const AlreadyHaveAccount(),
                verticalSpace(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
