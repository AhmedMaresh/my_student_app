part of 'update_student_cubit.dart';

@freezed
class UpdateStudentState with _$UpdateStudentState {
  const factory UpdateStudentState.updateStudentStateInitial() =
      _UpdateStudentStateInitial;

  const factory UpdateStudentState.updateStudentStateLoading() =
      _UpdateStudentStateLoading;

  const factory UpdateStudentState.updateStudentStateSuccess(
    StudentModel student,
  ) = _UpdateStudentStateSuccess;

  const factory UpdateStudentState.updateStudentStateFailure(
    String errMessage,
  ) = _UpdateStudentStateFailure;
}
