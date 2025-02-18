import 'package:ultra_app/core/constants/end_points.dart';
import 'package:ultra_app/core/databases/api/api_consumer.dart';
import 'package:ultra_app/core/errors/exceptions.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baserUrl;
  }

  //! POST
  @override
  Future post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool isFormData = false,
  }) async {
    try {
      var res = await dio.post(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
        options: Options(headers: headers), // Add headers here
      );
      return res.data;
    } on DioException catch (e) {
      throw handleDioException(e);
    }
  }

  //! GET
  @override
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      var res = await dio.get(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers), // Add headers here
      );
      return res.data;
    } on DioException catch (e) {
      throw handleDioException(e);
    }
  }

  //! DELETE
  @override
  Future delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      var res = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(headers: headers), // Add headers here
      );
      return res.data;
    } on DioException catch (e) {
      throw handleDioException(e);
    }
  }

  //! PATCH
  @override
  Future patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool isFormData = false,
  }) async {
    try {
      var res = await dio.patch(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
        options: Options(headers: headers), // Add headers here
      );
      return res.data;
    } on DioException catch (e) {
      throw handleDioException(e);
    }
  }
}
