import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class ErrorContainer extends StatelessWidget {
  const ErrorContainer({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.offWhiteColor),
        child: Text(
          message,
          style: AppStyles.styleSemiBold16(context)
              .copyWith(color: AppColors.greyColor),
        ));
  }
}
