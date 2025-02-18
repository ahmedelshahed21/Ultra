import 'package:ultra_app/features/auth/presentation/views/auth_view.dart';
import 'package:ultra_app/features/auth/presentation/views/otp_verification_view.dart';
import 'package:ultra_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const signInView = '/signInView';
  static const otpVerificationView = '/otpVerificationView';


  static final router = GoRouter(
      routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: signInView, builder: (context, state) => const AuthView()),
    GoRoute(path: otpVerificationView, builder: (context, state) => OTPVerificationView()),
  ]);
}
