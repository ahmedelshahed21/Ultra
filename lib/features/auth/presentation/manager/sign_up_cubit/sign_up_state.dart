import 'package:ultra_app/features/auth/data/models/auth_success_model.dart';
import 'package:ultra_app/features/auth/data/models/sign_up_failure_model.dart';

abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {
  final AuthSuccessModel authSuccessModel;

  SignUpSuccess(this.authSuccessModel);
}

class SignUpFailure extends SignUpState {
  final SignUpFailureModel signUpFailureModel;

  SignUpFailure(this.signUpFailureModel);
}
