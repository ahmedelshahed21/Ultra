import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({
    super.key,
    this.iconColor,
  });
  final Color? iconColor;
  // final void Function()? iconButton;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      color: iconColor ?? AppColors.firstColor,
      iconSize: 32,
      icon: Icon(
        Icons.arrow_back,
      ),
    );
  }
}

// class DecoratedBackIconButton extends StatelessWidget {
//   const DecoratedBackIconButton({
//     super.key,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           color: AppColors.offWhiteColor,
//           boxShadow: [
//             BoxShadow(
//                 color: AppColors.greyColor.withOpacity(0.5),
//                 blurRadius: 8
//             )
//           ]
//       ),
//       child: Center(
//         child: IconButton(
//           onPressed: () {
//             GoRouter.of(context).pop();
//           },
//
//           color: AppColors.pureBlackColor,
//           icon: const Icon(
//             Icons.arrow_back_ios,
//           ),
//         ),
//       ),
//     );
//   }
// }
