import 'package:flutter/material.dart';
import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/functions/navigation.dart';
import 'package:ultra_app/core/routes/app_router.dart';
import 'package:ultra_app/core/widgets/custom_buttons.dart';
import 'package:ultra_app/core/widgets/custom_text_form_field.dart';
import 'package:ultra_app/core/widgets/spacing.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedTextFormField(
          hintText: 'Name',
          type: TextInputType.name,
        ),
        VerticalSpace(12),
        DecoratedTextFormField(
          hintText: 'Phone Number',
          type: TextInputType.phone,
        ),
        VerticalSpace(12),
        DecoratedTextFormField(
          hintText: 'Email',
          type: TextInputType.emailAddress,
        ),
        VerticalSpace(12),
        DecoratedTextFormField(
          hintText: 'Password',
        ),
        VerticalSpace(16),
        DefaultButton(
            text: 'Sign Up',
            shadowColor: AppColors.pureBlackColor,
            onPressed: (){
              customPush(context, AppRouter.otpVerificationView);
            }),
      ],
    );
  }
}