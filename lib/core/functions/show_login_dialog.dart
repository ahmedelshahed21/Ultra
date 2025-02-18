import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:ultra_app/core/widgets/custom_buttons.dart';
import 'package:ultra_app/core/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

void showLoginDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: AppColors.offWhiteColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.42,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/images/login.svg',
                  height: 100,
                  colorFilter: ColorFilter.mode(
                      AppColors.offBlackColor, BlendMode.srcIn),
                ),
                const VerticalSpace(4),
                FittedBox(
                  child: Text(
                    '',
                    style: AppStyles.styleExtraBold28(context)
                        .copyWith(color: AppColors.firstColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                const VerticalSpace(8),
                FittedBox(
                  child: Text(
                    'AppStrings.pleaseLogInToContinue.tr()',
                    style: AppStyles.styleSemiBold16(context)
                        .copyWith(color: AppColors.offBlackColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                const VerticalSpace(48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 2,
                      child: GetStartedButton(
                        onPressed: () {
                          GoRouter.of(context).pop();
                        },
                        text: ' AppStrings.cancel.tr()',
                      ),
                    ),
                    const HorizontalSpace(12),
                    Expanded(
                      flex: 3,
                      child: DefaultButton(
                          text: 'AppStrings.login.tr()', onPressed: () {}),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
