import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

OutlineInputBorder buildOutlineInputBorder({Color? color}) {
  return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? AppColors.pureWhiteColor,
        width: 0.8,
      ),
      borderRadius: BorderRadius.circular(16));
}

UnderlineInputBorder buildUnderlineInputBorder({Color? color}) {
  return UnderlineInputBorder(
      borderSide:
          BorderSide(width: 1.5, color: color ?? AppColors.offBlackColor));
}
