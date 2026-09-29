import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/helpers/validators.dart';
import 'package:my_student_app/features/auth/ui/widgets/auth_button.dart';
import 'package:my_student_app/features/auth/ui/widgets/auth_text_field.dart';
import 'package:my_student_app/features/auth/ui/widgets/register/already_have_account.dart';
import 'package:my_student_app/features/auth/ui/widgets/register/register_header.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(60),
                  const RegisterHeader(),
                  verticalSpace(40),
                  AuthTextField(
                    labelText: 'Name',
                    icon: Icons.person_outline,
                    obscureText: false,
                    controller: nameController,
                    validator: Validators.validateName,
                  ),
                  verticalSpace(20),
                  AuthTextField(
                    labelText: 'Email',
                    icon: Icons.email_outlined,
                    obscureText: false,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: Validators.validateEmail,
                  ),
                  verticalSpace(20),
                  AuthTextField(
                    labelText: 'Password',
                    icon: Icons.lock_outline_rounded,
                    obscureText: true,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    validator: Validators.validatePassword,
                  ),
                  verticalSpace(30),
                  AuthButton(
                    text: 'Register',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print(nameController.text);
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                  ),
                  verticalSpace(20),
                  const AlreadyHaveAccount(),
                  verticalSpace(20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
