part of 'delete_student_cubit.dart';

@freezed
class DeleteStudentState with _$DeleteStudentState {
  const factory DeleteStudentState.deleteStudentInitial() =
      _DeleteStudentInitial;

  const factory DeleteStudentState.deleteStudentLoading() =
      _DeleteStudentLoading;

  const factory DeleteStudentState.deleteStudentSuccess(StudentModel student) =
      _DeleteStudentSuccess;

  const factory DeleteStudentState.deleteStudentFailure(String errMessage) =
      _DeleteStudentFailure;
}
