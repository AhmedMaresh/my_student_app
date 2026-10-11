import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_student_app/core/networking/api_result.dart';
import 'package:my_student_app/features/add_student/data/models/add_student_request.dart';
import 'package:my_student_app/features/add_student/data/repos/add_student_repo.dart';
import 'package:my_student_app/features/manage_student/data/models/student_model.dart';

part 'add_student_state.dart';
part 'add_student_cubit.freezed.dart';

class AddStudentCubit extends Cubit<AddStudentState> {
  final AddStudentRepo addStudentRepo;
  AddStudentCubit(this.addStudentRepo)
    : super(AddStudentState.addStudentInitial());

  Future<void> addStudent(AddStudentRequest addStudentRequest) async {
    emit(const AddStudentState.addStudentLoading());

    final result = await addStudentRepo.addStudent(addStudentRequest);

    result.when(
      success: (student) {
        emit(AddStudentState.addStudentSuccess(student));
      },
      failure: (apiErrorModel) {
        emit(AddStudentState.addStudentFailure(apiErrorModel.errMessage));
      },
    );
  }
}
