import 'package:flutter/material.dart';
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
        ),
        VerticalSpace(12),
        DecoratedTextFormField(
          hintText: 'Phone Number',
        ),
        VerticalSpace(12),
        DecoratedTextFormField(
          hintText: 'Email',
        ),
        VerticalSpace(12),
        DecoratedTextFormField(
          hintText: 'Password',
        ),
        VerticalSpace(16),
        DefaultButton(
            text: 'Sign Up',
            onPressed: (){

            }),
      ],
    );
  }
}