import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({
    super.key,
    required this.text,
    required this.textButton,
    this.onPressed,
  });

  final String text;
  final String textButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: AppColors.pureBlackColor, fontSize: 14),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            textButton,
            style: AppStyles.styleSemiBold16(context).copyWith(
                color: Colors.blueGrey, decorationColor: Colors.blueGrey),
          ),
        ),
      ],
    );
  }
}
