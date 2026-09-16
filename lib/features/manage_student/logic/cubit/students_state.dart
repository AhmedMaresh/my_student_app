part of 'students_cubit.dart';

@freezed
class StudentsState with _$StudentsState {
  const factory StudentsState.studentsInitial() = _StudentsInitial;

  const factory StudentsState.studentsLoading() = _StudentsLoading;

  const factory StudentsState.studentsSuccess(List<StudentModel> students) =
      _StudentsSuccess;

  const factory StudentsState.studentsError(String errMessage) = _StudentsError;
}
