import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/di/service_locator.dart';
import 'package:my_student_app/core/helpers/extensions.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/core/storage/token_storage.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkToken();
  }

  Future<void> _checkToken() async {
    final token = await getIt<TokenStorage>().getToken();

    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    if (token != null && token.isNotEmpty) {
      context.pushReplacementNamed(Routes.studentsScreen);
    } else {
      context.pushReplacementNamed(Routes.loginScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.school_outlined,
          size: 150.sp,
          color: ColorsManager.primaryBlue,
        ),
      ),
    );
  }
}
