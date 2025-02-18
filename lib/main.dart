import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultra_app/app/ultra_app.dart';
import 'package:ultra_app/core/databases/cache/cache_helper.dart';
import 'package:ultra_app/core/services/observer.dart';
import 'package:ultra_app/core/services/service_locator.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await CacheHelper().init();
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      child: const UltraApp(),
    ),
  );
}
