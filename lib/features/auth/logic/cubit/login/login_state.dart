part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loginInitial() = _LoginInitial;

  const factory LoginState.loginLoading() = _LoginLoading;

  const factory LoginState.loginSuccess(LoginResponse loginResponse) =
      _LoginSuccess;

  const factory LoginState.loginFailure(String errorMessage) = _LoginFailure;
}
