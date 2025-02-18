import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/routes/app_router.dart';


class UltraApp extends StatelessWidget {
  const UltraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColors.firstColor,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.pureWhiteColor,
        ),
        scaffoldBackgroundColor: AppColors.offWhiteColor,
      ),
    );
  }
}
