import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_student_app/core/networking/api_result.dart';
import 'package:my_student_app/features/auth/data/models/register_request.dart';
import 'package:my_student_app/features/auth/data/models/register_response.dart';
import 'package:my_student_app/features/auth/data/repos/auth_repo.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepo authRepo;
  RegisterCubit(this.authRepo) : super(RegisterState.registerInitial());

  Future<void> register(RegisterRequest registerRequest) async {
    emit(RegisterState.registerLoading());

    final result = await authRepo.register(registerRequest);

    result.when(
      success: (registerResponse) {
        emit(RegisterState.registerSuccess(registerResponse));
      },
      failure: (apiErrorModel) {
        emit(RegisterState.registerFailure(apiErrorModel.errMessage));
      },
    );
  }
}
