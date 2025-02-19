import 'package:dartz/dartz.dart';
import 'package:ultra_app/features/auth/data/models/auth_success_model.dart';
import 'package:ultra_app/features/auth/data/models/sign_up_failure_model.dart';

abstract class SignUpRepo {
  Future<Either<SignUpFailureModel, AuthSuccessModel>> signUp({
    required String fullName,
    required String phone,
    required String phoneCode,
    required String email,
    required String password,
    required int userType,
  });
}
