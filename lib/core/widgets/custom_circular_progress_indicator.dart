import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: AppColors.firstColor,
      color: AppColors.offBlackColor,
    );
  }
}
