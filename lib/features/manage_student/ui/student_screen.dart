import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_student_app/core/di/service_locator.dart';
import 'package:my_student_app/core/helpers/extensions.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/core/storage/token_storage.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/features/manage_student/logic/cubit/student_cubit/students_cubit.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/drawer_item.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/greeting_header.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/student_search_bar.dart';
import 'package:my_student_app/features/manage_student/ui/widgets/student_screen/students_bloc.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h),
                child: Icon(
                  Icons.school_outlined,
                  size: 70.sp,
                  color: ColorsManager.primaryBlue,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Divider(color: Theme.of(context).dividerColor),
              ),
              DrawerItem(
                title: 'Settings',
                icon: Icons.settings,
                onPressed: () {
                  Navigator.pop(context);
                  context.pushNamed(Routes.settingsScreen);
                },
              ),
              DrawerItem(
                title: 'Logout',
                icon: Icons.logout,
                onPressed: () async {
                  await getIt<TokenStorage>().deleteToken();
                  if (!context.mounted) return;
                  context.pushReplacementNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () async {
          await context.pushNamed(Routes.addStudentScreen);
          if (context.mounted) {
            context.read<StudentsCubit>().getStudents();
          }
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GreetingHeader(),
            verticalSpace(10),
            const StudentSearchBar(),
            verticalSpace(10),
            const StudentsBloc(),
          ],
        ),
      ),
    );
  }
}
