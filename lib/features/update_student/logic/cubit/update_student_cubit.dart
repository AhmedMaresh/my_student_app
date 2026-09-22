import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_student_app/core/networking/api_result.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';
import 'package:my_student_app/features/update_student/data/models/update_student_request.dart';
import 'package:my_student_app/features/update_student/data/repos/update_student_repo.dart';

part 'update_student_state.dart';
part 'update_student_cubit.freezed.dart';

class UpdateStudentCubit extends Cubit<UpdateStudentState> {
  final UpdateStudentRepo updateStudentRepo;
  UpdateStudentCubit(this.updateStudentRepo)
    : super(UpdateStudentState.updateStudentStateInitial());

  Future<void> updateStudent(
    int id,
    UpdateStudentRequest updateStudentRequest,
  ) async {
    emit(UpdateStudentState.updateStudentStateLoading());

    final result = await updateStudentRepo.updateStudent(
      id,
      updateStudentRequest,
    );

    result.when(
      success: (student) {
        emit(UpdateStudentState.updateStudentStateSuccess(student));
      },
      failure: (apiErrorModel) {
        emit(
          UpdateStudentState.updateStudentStateFailure(
            apiErrorModel.errMessage,
          ),
        );
      },
    );
  }
}
