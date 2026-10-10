import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/di/service_locator.dart';
import 'package:my_student_app/core/routing/app_navigator.dart';
import 'package:my_student_app/core/routing/app_router.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/core/themes/app_theme.dart';
import 'package:my_student_app/features/settings/logic/cubit/theme_cubit.dart';

void main() {
  setupGetIt();
  runApp(const StudentApp());
}

class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (_) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, themeMode) {
            print('Theme Mode: $themeMode');
            return MaterialApp(
              navigatorKey: AppNavigator.navigatorKey,
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.splashScreen,
              onGenerateRoute: AppRouter().generateRoute,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: themeMode,
            );
          },
        ),
      ),
    );
  }
}
