import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

void showFilterOptions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Filter Options',
              style: AppStyles.styleSemiBold18(context).copyWith(),
            ),
            ListTile(
              leading: const Icon(
                Icons.sort,
              ),
              iconColor: AppColors.pureBlackColor,
              title: const Text('Sort by Price'),
              titleTextStyle: AppStyles.styleSemiBold16(context)
                  .copyWith(color: AppColors.lightGrey),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.sort,
              ),
              iconColor: AppColors.pureBlackColor,
              title: const Text('Sort by Price'),
              titleTextStyle: AppStyles.styleSemiBold16(context)
                  .copyWith(color: AppColors.lightGrey),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}
