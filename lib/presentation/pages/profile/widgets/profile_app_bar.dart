import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/routes/generator.dart';
import '../../../../features/app_router/route_constants.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/assets_paths.dart';
import '../../../widgets/global_divider.dart';
import '../../setting/setting_page.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColors.primaryColor,
      scrolledUnderElevation: 0,
      leading: Padding(
        padding: AppPaddings.l12,
        child: Center(
          child: Container(
            width: 40.r,
            height: 40.r,
            decoration: BoxDecoration(
              color: AppColors.secondaryBlue,
              borderRadius: BorderRadius.circular(12.sp),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                AssetsPaths.like,
                height: 16.h,
                width: 17.79.w,
              ),
              onPressed: () {
               context.pushNamed(RouteConstants.likedPage);
              },
            ),
          ),
        ),
      ),
      title: Center(
        child: Text(
          'emildost',
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: AppPaddings.r20,
          child: Container(
            width: 40.r,
            height: 40.r,
            decoration: BoxDecoration(
              color: AppColors.secondaryBlue,
              borderRadius: BorderRadius.circular(12.sp),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                AssetsPaths.settings_2,
                height: 24.h,
                width: 24.w,
              ),
              onPressed: () {
                Navigate.to(context, const SettingPage());
              },
            ),
          ),
        ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(4.0),
        child: GlobalDivider(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
