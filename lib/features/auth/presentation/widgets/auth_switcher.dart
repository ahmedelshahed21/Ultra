import 'package:flutter/material.dart';
import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:ultra_app/core/widgets/auth_container.dart';
import 'package:ultra_app/core/widgets/spacing.dart';
import 'package:ultra_app/features/auth/presentation/widgets/sign_in_form.dart';
import 'package:ultra_app/features/auth/presentation/widgets/sign_up_form.dart';

class AuthSwitcher extends StatefulWidget {
  final bool isSignIn;
  const AuthSwitcher({super.key, required this.isSignIn});

  @override
  AuthSwitcherState createState() => AuthSwitcherState();
}

class AuthSwitcherState extends State<AuthSwitcher> {
  late bool isSignIn;

  @override
  void initState() {
    super.initState();
    isSignIn = widget.isSignIn;
  }

  @override
  Widget build(BuildContext context) {
    return AuthContainer(
      title: isSignIn ? 'Sign in' : 'Sign Up',
      form: isSignIn ? SignInForm() : SignUpForm(),
      bottomRow: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isSignIn ? "Don't have an account ?" : "Already have an account ?",
            style: AppStyles.styleBold13(context),
          ),
          HorizontalSpace(4),
          GestureDetector(
            onTap: () {

              setState(() {
                FocusScope.of(context).unfocus();
                isSignIn = !isSignIn;
              });
            },
            child: Text(
              isSignIn ? 'Sign Up' : 'Sign In',
              style: AppStyles.styleBold13(context).copyWith(color: AppColors.firstColor),
            ),
          ),
        ],
      ),
    );
  }
}