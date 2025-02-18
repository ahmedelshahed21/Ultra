import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:ultra_app/core/functions/is_arabic.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key, this.text, required this.onPressed, this.child});

  final String? text;
  final Widget? child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width*0.5,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: AppColors.pureBlackColor,
              elevation: 8,
              backgroundColor: AppColors.firstColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: onPressed,
          child: FittedBox(
            child: child ??
                Text(
                  text ?? '',
                  style: AppStyles.styleRegular20(context).copyWith(

                    color: AppColors.pureWhiteColor,
                    // letterSpacing: isArabic(context) ? 0 : 4
                  ),
                ),
          )),
    );
  }
}

class GetStartedButton extends StatelessWidget {
  const GetStartedButton(
      {super.key,
      this.text,
      required this.onPressed,
      this.backgroundColor,
      this.child});

  final String? text;
  final Widget? child;
  final void Function() onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 48,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor ?? AppColors.secondColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(8),topEnd: Radius.circular(8),
                  ),
                )
            ),
            onPressed: onPressed,
            child: FittedBox(
              child: child ??
                  Text(
                    text ?? '',
                    style: AppStyles.styleMedium18(context)
                        .copyWith(color: AppColors.pureWhiteColor),
                  ),
            )));
  }
}

class AddToCartButton extends StatelessWidget {
  const AddToCartButton(
      {super.key, this.text, required this.onPressed, this.child});

  final String? text;
  final Widget? child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: MediaQuery.sizeOf(context).width - 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade900,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: onPressed,
          child: child ??
              Text(
                text ?? '',
                style: AppStyles.styleRegular20(context).copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.pureWhiteColor,
                    letterSpacing: isArabic(context) ? 1 : 2),
              )),
    );
  }
}
