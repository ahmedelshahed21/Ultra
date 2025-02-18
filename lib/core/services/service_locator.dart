import 'package:ultra_app/core/connection/network_cubit.dart';
import 'package:ultra_app/core/connection/network_info.dart';
import 'package:ultra_app/core/databases/api/dio_consumer.dart';
import 'package:ultra_app/core/databases/cache/cache_helper.dart';
import 'package:ultra_app/core/services/secure_storage_service.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<CacheHelper>(() => CacheHelper());
  getIt.registerLazySingleton<DioConsumer>(() => DioConsumer(dio: Dio()));
  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(DataConnectionChecker()));
  getIt.registerLazySingleton<NetworkCubit>(
      () => NetworkCubit(getIt.get<NetworkInfo>()));
  getIt.registerLazySingleton<SecureStorageService>(
      () => SecureStorageService());
}
