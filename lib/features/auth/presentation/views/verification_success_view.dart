import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_constants.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:ultra_app/core/routes/app_router.dart';
import 'package:ultra_app/core/widgets/custom_buttons.dart';
import 'package:ultra_app/core/widgets/spacing.dart';

class VerificationSuccessView extends StatelessWidget {
  const VerificationSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(flex: 3),
            Center(child: SvgPicture.asset('assets/images/success.svg')),
          const VerticalSpace(24),
          Text(
            "Thank you",
            style: AppStyles.styleMedium22(context).copyWith(fontFamily: AppConstants.poppinsFont,color: AppColors.lightBlack),
          ),

          const VerticalSpace(12),
          Text(
            "Verification has done",
            style: AppStyles.styleMedium12(context).copyWith(fontFamily: AppConstants.poppinsFont,color: AppColors.lightBlack),
          ),
          const Spacer(flex: 4),
         NextButton(
           text: 'Next',
             onPressed: (){
             GoRouter.of(context).go(AppRouter.userLocationDetectionView);
             }
         ),
          const Spacer(),
        ],
      ),
    );
  }
}
