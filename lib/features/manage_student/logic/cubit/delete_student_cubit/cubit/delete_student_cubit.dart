import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_student_app/core/networking/api_result.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/manage_student/data/repos/delete_student_repo.dart';

part 'delete_student_state.dart';
part 'delete_student_cubit.freezed.dart';

class DeleteStudentCubit extends Cubit<DeleteStudentState> {
  final DeleteStudentRepo deleteStudentRepo;
  DeleteStudentCubit(this.deleteStudentRepo)
    : super(DeleteStudentState.deleteStudentInitial());

  Future<void> deleteStudent(int id) async {
    emit(const DeleteStudentState.deleteStudentLoading());

    final result = await deleteStudentRepo.deleteStudent(id);

    result.when(
      success: (student) {
        emit(DeleteStudentState.deleteStudentSuccess(student));
      },
      failure: (apiErrorModel) {
        emit(DeleteStudentState.deleteStudentFailure(apiErrorModel.errMessage));
      },
    );
  }
}
