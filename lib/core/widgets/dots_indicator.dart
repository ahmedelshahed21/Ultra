import 'package:ultra_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required int currentIndex,
  }) : _currentIndex = currentIndex;

  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: _currentIndex == index ? 16 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: _currentIndex == index
                ? AppColors.firstColor
                : AppColors.greyColor.withValues(alpha: .3),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
