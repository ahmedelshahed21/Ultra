import 'package:dartz/dartz.dart';
import 'package:ultra_app/core/constants/end_points.dart';
import 'package:ultra_app/core/databases/api/dio_consumer.dart';
import 'package:ultra_app/features/auth/data/models/auth_failure_model.dart';
import 'package:ultra_app/features/auth/data/models/auth_success_model.dart';
import 'package:ultra_app/features/auth/data/repos/sign_in_repo/sign_in_repo.dart';
import 'package:dio/dio.dart';

class SignInRepoImpl implements SignInRepo {
  final DioConsumer dioConsumer;

  SignInRepoImpl({required this.dioConsumer});

  @override
  Future<Either<AuthFailureModel, AuthSuccessModel>> signIn({
    required String phone,
    required String password,
  }) async {
    try {
      final response = await dioConsumer.post(
        EndPoints.signIn,
        data: {
          "phone": phone,
          "password": password,
        },
      );

      if (response != null && response is Map<String, dynamic>) {
        if (response['status'] == true) {
          final authSuccess = AuthSuccessModel.fromJson(response);
          return Right(authSuccess);
        } else {
          final authFailure = AuthFailureModel.fromJson(response);
          return Left(authFailure);
        }
      } else {
        return Left(AuthFailureModel(
          status: false,
          code: 500,
          messages: 'Invalid response format',
        ));
      }
    } on DioException catch (e) {
      return Left(AuthFailureModel(
        status: false,
        code: e.response?.statusCode ?? 500,
        messages: e.response?.data['messages'] ?? 'Dio error occurred: ${e.message}',
      ));
    } catch (e) {
      return Left(AuthFailureModel(
        status: false,
        code: 500,
        messages: 'An unexpected error occurred: ${e.toString()}',
      ));
    }
  }
}
