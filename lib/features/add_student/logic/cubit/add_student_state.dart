part of 'add_student_cubit.dart';

@freezed
class AddStudentState with _$AddStudentState {
  const factory AddStudentState.addStudentInitial() = _AddStudentInitial;

  const factory AddStudentState.addStudentLoading() = _AddStudentLoading;

  const factory AddStudentState.addStudentSuccess(StudentModel student) =
      _AddStudentSuccess;

  const factory AddStudentState.addStudentFailure(String errMessage) =
      _AddStudentFailure;
}
