import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_student_app/core/networking/api_result.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/manage_student/data/repos/student_repo.dart';

part 'students_state.dart';
part '../students_cubit.freezed.dart';

class StudentsCubit extends Cubit<StudentsState> {
  final StudentRepo studentRepo;
  StudentsCubit(this.studentRepo) : super(StudentsState.studentsInitial());

  Future<void> getStudents() async {
    emit(StudentsState.studentsLoading());

    final result = await studentRepo.getStudents();

    result.when(
      success: (students) {
        emit(StudentsState.studentsSuccess(students));
      },
      failure: (apiErrorModel) {
        emit(StudentsState.studentsError(apiErrorModel.errMessage));
      },
    );
  }
}
