import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:ultra_app/core/widgets/spacing.dart';
import 'package:flutter/material.dart';

void floatingSnackBar(BuildContext context, String message,
    {IconData? icon, Color? iconColor}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: AppColors.offBlackColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 64),
      duration: const Duration(seconds: 3),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          icon != null
              ? Icon(
                  icon,
                  color: iconColor ?? Colors.green,
                  size: 24,
                )
              : const SizedBox(),
          const HorizontalSpace(8),
          Flexible(
            child: Text(message,
                style: AppStyles.styleSemiBold16(context)
                    .copyWith(color: AppColors.offWhiteColor)),
          ),
        ],
      )));
}
