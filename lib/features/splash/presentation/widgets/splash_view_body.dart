import 'package:flutter/material.dart';
import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_constants.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:ultra_app/core/functions/navigation.dart';
import 'package:ultra_app/core/routes/app_router.dart';
import 'package:ultra_app/core/widgets/spacing.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends
State<SplashViewBody>{
  //   with SingleTickerProviderStateMixin {
  // late AnimationController animationController;
  // late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    //initSlidingAnimation();
    super.initState();
    navigationToNextView();
  }

  @override
  void dispose() {
    //animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: BoxDecoration(color: AppColors.firstColor),
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            color: AppColors.offWhiteColor,
          ),
        ),
        Column(
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                color: AppColors.pureWhiteColor.withValues(alpha: .5),
                borderRadius: BorderRadius.circular(64),
              ),

              child: Center(
                child: Image.asset(
                  'assets/images/ultra1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            VerticalSpace(12),
            Text(
              'Ultra App',
              style: AppStyles.styleExtraBold32(context)
                  .copyWith(color: AppColors.secondColor,fontFamily: AppConstants.interFont),
            )
          ],
        ),
      ],
    );
  }

  void _navigateToSelectLanguageView(BuildContext context) {
    customPushReplacement(context, AppRouter.signInView);
  }

  void navigationToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      _navigateToSelectLanguageView(context);
    });
  }


  // void initSlidingAnimation() {
  //   animationController = AnimationController(
  //     vsync: this,
  //     duration: const Duration(milliseconds: 300),
  //   );
  //   slidingAnimation =
  //       Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
  //           .animate(animationController);
  //   animationController.forward();
  // }
}
