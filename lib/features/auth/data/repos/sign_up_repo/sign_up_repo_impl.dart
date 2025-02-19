import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ultra_app/core/constants/end_points.dart';
import 'package:ultra_app/core/databases/api/dio_consumer.dart';
import 'package:ultra_app/features/auth/data/models/sign_up_failure_model.dart';
import 'package:ultra_app/features/auth/data/models/auth_success_model.dart';
import 'package:ultra_app/features/auth/data/repos/sign_up_repo/sign_up_repo.dart';

class SignUpRepoImpl implements SignUpRepo {
  final DioConsumer dioConsumer;

  SignUpRepoImpl({required this.dioConsumer});

  @override
  Future<Either<SignUpFailureModel, AuthSuccessModel>> signUp({
    required String fullName,
    required String phone,
    required String phoneCode,
    required String email,
    required String password,
    required int userType,
  }) async {
    try {
      final formData = FormData.fromMap({
        'full_name': fullName,
        'phone': phone,
        'phone_code': phoneCode,
        'email': email,
        'password': password,
        'type': userType,
      });

      final response = await dioConsumer.post(EndPoints.signUp, data: formData);

      if (response != null && response is Map<String, dynamic>) {
        final user = AuthSuccessModel.fromJson(response);
        return Right(user);
      } else {
        return Left(SignUpFailureModel(
          payload: [],
          status: false,
          code: 400,
          messages: {},
        ));
      }
    } on DioException catch (e) {
      if (e.response?.data != null && e.response?.data is Map<String, dynamic>) {
        return Left(SignUpFailureModel.fromJson(e.response!.data));
      }
      return Left(SignUpFailureModel(
        payload: [],
        status: false,
        code: e.response?.statusCode ?? 500,
        messages: {},
      ));
    } catch (e) {
      return Left(SignUpFailureModel(
        payload: [],
        status: false,
        code: 500,
        messages: {},
      ));
    }
  }
}
