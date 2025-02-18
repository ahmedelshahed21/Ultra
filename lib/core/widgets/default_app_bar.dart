import 'package:ultra_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar(
      {super.key, required this.title, this.actions, this.leading});

  final String title;
  final List<Widget>? actions;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: Text(title, style: AppStyles.styleSemiBold18(context)),
      centerTitle: true,
      scrolledUnderElevation: 0,
      elevation: 0,
      actions: actions ?? [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
