import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:ultra_app/core/widgets/spacing.dart';


class AuthContainer extends StatelessWidget {
  const AuthContainer({
    super.key, required this.title, required this.form, required this.bottomRow,
  });

  final String title;
  final Widget form;
  final Widget bottomRow;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.offWhiteColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(36),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.pureBlackColor.withValues(alpha: 0.4),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 16, left: 16, bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 9,
                width: 82,
                decoration: BoxDecoration(
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              VerticalSpace(24),
              Text(
                title,
                style: AppStyles.styleSemiBold16(context).copyWith(
                    color: AppColors.firstColor),
              ),
              VerticalSpace(32),
              form,
              VerticalSpace(24),
              bottomRow,
            ],
          ),
        ),
      ),
    );
  }

}

