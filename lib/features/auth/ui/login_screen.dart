import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/features/auth/ui/widgets/auth_button.dart';
import 'package:my_student_app/features/auth/ui/widgets/auth_text_field.dart';
import 'package:my_student_app/features/auth/ui/widgets/login/do_not_have_account.dart';
import 'package:my_student_app/features/auth/ui/widgets/login/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const LoginHeader(),
                verticalSpace(40),
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
                AuthButton(text: 'Login', onPressed: () {}),
                verticalSpace(20),
                const DoNotHaveAccount(),
                verticalSpace(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
