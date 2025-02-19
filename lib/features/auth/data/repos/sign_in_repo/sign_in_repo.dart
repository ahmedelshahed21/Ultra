import 'package:ultra_app/features/auth/data/models/auth_failure_model.dart';
import 'package:ultra_app/features/auth/data/models/auth_success_model.dart';
import 'package:dartz/dartz.dart';

abstract class SignInRepo{
  Future<Either<AuthFailureModel, AuthSuccessModel>> signIn({
    required String phone,
    required String password,
  });
}