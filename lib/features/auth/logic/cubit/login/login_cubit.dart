import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_student_app/core/networking/api_result.dart';
import 'package:my_student_app/features/auth/data/models/login_request.dart';
import 'package:my_student_app/features/auth/data/models/login_response.dart';
import 'package:my_student_app/features/auth/data/repos/auth_repo.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;
  LoginCubit(AuthRepo authRepo)
    : _authRepo = authRepo,
      super(LoginState.loginInitial());

  Future<void> login(LoginRequest loginRequest) async {
    emit(LoginState.loginLoading());

    final result = await _authRepo.login(loginRequest);

    result.when(
      success: (loginResponse) {
        emit(LoginState.loginSuccess(loginResponse));
      },
      failure: (apiErrorModel) {
        emit(LoginState.loginFailure(apiErrorModel.errMessage));
      },
    );
  }
}
