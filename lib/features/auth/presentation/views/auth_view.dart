import 'package:flutter/material.dart';
import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/widgets/custom_buttons.dart';
import 'package:ultra_app/features/auth/presentation/widgets/auth_switcher.dart';
import 'package:ultra_app/features/splash/presentation/widgets/splash_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  void _showAuthContainer(BuildContext context, bool isSignIn) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return AuthSwitcher(isSignIn: isSignIn);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SplashViewBody(),
          Container(
            color: AppColors.pureBlackColor.withValues(alpha: 0.1),
          ),
          Positioned(
            bottom: 0,
            left: 20,
            right: 20,
            child: GetStartedButton(
              text: 'Get Started With Ultra',
              onPressed: () => _showAuthContainer(context, true),
            ),
          ),
        ],
      ),
    );
  }
}