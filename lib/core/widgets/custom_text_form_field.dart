import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:ultra_app/core/functions/input_border.dart';
import 'package:flutter/material.dart';

class DecoratedTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final bool? obscureText;
  final String? Function(String? val)? validate;
  final TextInputType? type;
  final void Function(String)? onSubmit;
  final String? Function(String val)? onChanged;
  final Widget? prefixIcon;
  final String? prefixIconPath;
  final Widget? suffixIcon;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;

  const DecoratedTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.controller,
    this.obscureText,
    this.suffixIcon,
    this.validate,
    this.type,
    this.onSubmit,
    this.onChanged,
    this.prefixIcon,
    this.maxLength,
    this.prefixIconPath,
    this.minLines,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.9,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColors.pureBlackColor.withValues(alpha: 0.1),
              spreadRadius: 16,
              blurRadius: 8,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorRadius: const Radius.circular(16),
          cursorColor: const Color(0xFF999999),
          cursorHeight: 28,
          cursorWidth: 1.2,
          minLines: minLines,
          maxLines: maxLines,
          maxLength: maxLength,
          buildCounter: (context,
                  {required currentLength,
                  required isFocused,
                  required maxLength}) =>
              SizedBox.shrink(),
          obscureText: obscureText ?? false,
          onFieldSubmitted: onSubmit,
          onChanged: onChanged,
          keyboardType: type,
          style: AppStyles.styleMedium18(context)
              .copyWith(color: AppColors.pureBlackColor),
          validator: validate,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.pureWhiteColor,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            labelText: labelText,
            labelStyle: AppStyles.styleLight18(context)
                .copyWith(color: AppColors.firstColor),
            hintText: hintText,
            hintStyle: AppStyles.styleMedium14(context)
                .copyWith(color: AppColors.greyColor),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(color: AppColors.firstColor),
            errorBorder: buildOutlineInputBorder(color: Colors.red),
            focusedErrorBorder:
                buildOutlineInputBorder(color: Colors.red),
          ),
          controller: controller,
        ),
      ),
    );
  }
}


