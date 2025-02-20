import 'package:flutter/material.dart';
import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/widgets/custom_buttons.dart';
import 'package:ultra_app/core/widgets/custom_text_form_field.dart';
import 'package:ultra_app/core/widgets/spacing.dart';


class SignInForm extends StatelessWidget {
  SignInForm({
    super.key,
  });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          DecoratedTextFormField(
            hintText: 'Phone Number',
            type: TextInputType.phone,
            controller: phoneController,
          ),
          VerticalSpace(12),
          DecoratedTextFormField(
            hintText: 'Password',
            controller: passwordController,
          ),
          VerticalSpace(16),
          DefaultButton(
              text: 'Sign In',
              shadowColor: AppColors.pureBlackColor,
              onPressed: (){

              }),
        ],
      ),
    );
  }
}