import 'custom_back_button.dart';
import 'global_divider.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalBasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlobalBasicAppBar({super.key, required this.title, required this.onPressed});

  final String title;
   final  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 64.h,
      titleSpacing: 0,
      centerTitle: true,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.primaryColor,
      leading: Center(
        child: CustomBackButton(
          onPressed: onPressed,
          icon: Icons.arrow_back,
        ),
      ),
      title: Text(
        title,
        style: AppTextStyles.whiteS13W600,
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.h),
        child: const GlobalDivider(),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(64.h);
}
