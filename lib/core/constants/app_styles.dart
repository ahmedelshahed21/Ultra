import 'package:flutter/material.dart';
import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_constants.dart';
import 'package:ultra_app/core/functions/is_arabic.dart';

abstract class AppStyles {

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 15 : 16),
        fontWeight: FontWeight.w600,
        fontFamily: AppConstants.interFont,
        color: AppColors.firstColor);
  }
  static TextStyle styleBold13(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize:13),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.interFont,
        color: AppColors.greyColor);
  }
  static TextStyle styleRegular20(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 18 : 20),
        fontWeight: FontWeight.w700,
        fontFamily: AppConstants.interFont,
        color: AppColors.pureWhiteColor);
  }


























  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 22 : 24),
        fontWeight: FontWeight.w600,
        fontFamily: AppConstants.montserratFont,
        color: AppColors.offBlackColor);
  }

  static TextStyle styleLight20(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w300,
        fontFamily: AppConstants.almaraiFont,
        color: AppColors.firstColor);
  }



  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 18 : 20),
        fontWeight: FontWeight.w600,
        fontFamily: AppConstants.montserratFont,
        color: AppColors.pureWhiteColor);
  }

  static TextStyle styleRegular32(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 30 : 32),
        fontWeight: FontWeight.w400,
        fontFamily: AppConstants.almaraiFont,
        color: AppColors.pureWhiteColor);
  }

  static TextStyle styleMedium22(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 20 : 22),
        fontWeight: FontWeight.w500,
        fontFamily: AppConstants.montserratFont,
        color: AppColors.firstColor);
  }

  static TextStyle styleMedium12(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: 12),
        fontWeight: FontWeight.w500,
        fontFamily: AppConstants.montserratFont,
        color: AppColors.greyColor);
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: 12),
        fontWeight: FontWeight.w400,
        fontFamily: AppConstants.interFont,
        color: AppColors.offBlackColor);
  }

  static TextStyle styleLight18(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 17 : 18),
        fontWeight: FontWeight.w300,
        fontFamily: AppConstants.montserratFont,
        color: AppColors.firstColor);
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: 14),
        fontWeight: FontWeight.w400,
        fontFamily: AppConstants.manropeFont,
        color: AppColors.lightBlack
    );
  }
  static TextStyle styleSemiBold10(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: 10),
        fontWeight: FontWeight.w600,
        fontFamily: AppConstants.manropeFont,
        color: AppColors.lightGrey);
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w500,
        fontFamily: AppConstants.almaraiFont,
        color: AppColors.greyColor);
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 15 : 16),
        fontWeight: FontWeight.w400,
        fontFamily: AppConstants.manropeFont,
        color: AppColors.offBlackColor);
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 15 : 16),
        fontWeight: FontWeight.w500,
        fontFamily: AppConstants.almaraiFont,
        color: AppColors.offBlackColor);
  }

  static TextStyle styleMedium18(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 17 : 18),
        fontWeight: FontWeight.w500,
        fontFamily: AppConstants.almaraiFont,
        color: AppColors.firstColor);
  }








  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 17 : 18),
        fontWeight: FontWeight.w600,
        fontFamily: AppConstants.almaraiFont,
        color: AppColors.firstColor);
  }

  static TextStyle styleExtraBold32(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 28 : 32),
        fontWeight: FontWeight.w800,
        fontFamily: AppConstants.almaraiFont,
        color: AppColors.pureBlackColor,
        letterSpacing: 3);
  }

  static TextStyle styleExtraBold28(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context,
            fontSize: isArabic(context) ? 25 : 28),
        fontWeight: FontWeight.w800,
        fontFamily: AppConstants.montserratFont,
        color: AppColors.firstColor);
  }



  static TextStyle styleChefHamdyApp(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 26),
        fontWeight: FontWeight.w800,
        fontFamily: AppConstants.lobsterFont,
        color: AppColors.pureBlackColor);
  }
}

// scaleFactor
// responsive font size
// (min , max) font size

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double min = fontSize * .8;
  double max = fontSize * 1.2;

  return responsiveFontSize.clamp(min, max);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < 700) {
    return width / 370;
  } else if (width < 1300) {
    return width / 950;
  } else {
    return width / 1700;
  }
}
