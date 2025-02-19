import 'package:ultra_app/features/auth/data/models/auth_success_model.dart';

abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {
  final AuthSuccessModel authSuccessModel;

  SignInSuccess(this.authSuccessModel);
}

class SignInFailure extends SignInState {
  final String errorMessage;

  SignInFailure(this.errorMessage);
}
