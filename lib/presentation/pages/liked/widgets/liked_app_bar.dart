import 'package:chaplean/features/app_router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../widgets/custom_back_button.dart';
import '../../../widgets/custom_tab.dart';
import '../../../widgets/global_divider.dart';

class LikedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LikedAppBar({super.key, this.controller});

  final TabController? controller;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 112.h,
      titleSpacing: 0,
      leadingWidth: 12.w,
      backgroundColor: AppColors.primaryColor,
      title: Column(
        children: [
          Padding(
            padding: AppPaddings.all12,
            child: Row(
              children: [
                CustomBackButton(
                  onPressed: () =>
                     context.pushNamed(RouteConstants.profile),
                  icon: Icons.arrow_back,
                ),
                128.horizontalSpace,
                const Text(
                  AppStrings.liked,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          const GlobalDivider(),
        ],
      ),
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        controller: controller,
        tabs: const [
          CustomTab.music(),
          CustomTab.playlist(),
          CustomTab.podcast(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(112);
}
