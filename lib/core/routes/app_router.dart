import 'package:ultra_app/features/auth/presentation/views/auth_view.dart';
import 'package:ultra_app/features/auth/presentation/views/otp_verification_view.dart';
import 'package:ultra_app/features/auth/presentation/views/verification_success_view.dart';
import 'package:ultra_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';
import 'package:ultra_app/features/user_location_detection/presentation/views/user_location_detection_view.dart';

abstract class AppRouter {
  static const signInView = '/signInView';
  static const otpVerificationView = '/otpVerificationView';
  static const verificationSuccessView = '/verificationSuccessView';
  static const userLocationDetectionView = '/userLocationDetectionView';

  static final router = GoRouter(
      routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: signInView, builder: (context, state) => const AuthView()),
    GoRoute(
        path: otpVerificationView,
        builder: (context, state) => OTPVerificationView()),
    GoRoute(
        path: verificationSuccessView,
        builder: (context, state) => VerificationSuccessView()),
    GoRoute(
        path: userLocationDetectionView,
        builder: (context, state) => UserLocationDetectionView()),
  ]);
}
