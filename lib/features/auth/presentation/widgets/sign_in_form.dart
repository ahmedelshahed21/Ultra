import 'package:flutter/material.dart';
import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/widgets/custom_buttons.dart';
import 'package:ultra_app/core/widgets/custom_text_form_field.dart';
import 'package:ultra_app/core/widgets/spacing.dart';


class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedTextFormField(
          hintText: 'Phone Number',
        ),
        VerticalSpace(12),
        DecoratedTextFormField(
          hintText: 'Password',
        ),
        VerticalSpace(16),
        DefaultButton(
            text: 'Sign In',
            shadowColor: AppColors.pureBlackColor,
            onPressed: (){

            }),
      ],
    );
  }
}