import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:my_student_app/core/helpers/extensions.dart';
import 'package:my_student_app/core/helpers/spacing.dart';
import 'package:my_student_app/core/routing/routes.dart';
import 'package:my_student_app/core/themes/colors_manager.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/manage_student/logic/cubit/delete_student_cubit/cubit/delete_student_cubit.dart';
import 'package:my_student_app/features/manage_student/logic/cubit/student_cubit/students_cubit.dart';

class StudentCard extends StatelessWidget {
  final StudentModel student;

  const StudentCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodyLarge?.color;

    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          CustomSlidableAction(
            onPressed: (slidableContext) {
              showDeleteDialog(context, slidableContext);
            },
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              bottomLeft: Radius.circular(16.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.delete, color: Colors.white, size: 24),
                verticalSpace(5),
                const Text('Delete', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.primaryBlue.withValues(alpha: 0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            borderRadius: BorderRadius.circular(16.r),
            onTap: () async {
              await context.pushNamed(
                Routes.studentDetailsScreen,
                arguments: student,
              );

              if (context.mounted) {
                context.read<StudentsCubit>().getStudents();
              }
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24.r,
                    backgroundColor: ColorsManager.primaryBlue,
                    child: Icon(
                      Icons.person,
                      color: ColorsManager.white,
                      size: 32.sp,
                    ),
                  ),
                  horizontalSpace(12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          student.name,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        verticalSpace(4),
                        Text(
                          'Age: ${student.age}',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: textColor?.withValues(alpha: 0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18.sp,
                    color: ColorsManager.primaryBlue,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showDeleteDialog(
    BuildContext context,
    BuildContext slidableContext,
  ) {
    return showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Delete Student'),
          content: Text('Are you sure you want to delete ${student.name} ?'),
          actions: [
            TextButton(
              onPressed: () {
                dialogContext.pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                context.read<DeleteStudentCubit>().deleteStudent(student.id);
                dialogContext.pop();
                Slidable.of(slidableContext)?.close();
              },
              child: const Text('Delete', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
