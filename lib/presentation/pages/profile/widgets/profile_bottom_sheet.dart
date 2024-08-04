import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/assets_paths.dart';

class ProfileBottomSheet {
  ProfileBottomSheet._();

  static void profileSheet(BuildContext ctx) {
    showModalBottomSheet(
      useSafeArea: true,
      context: ctx,
      builder: (context) {
        return Container(
          height: 256.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            color: AppColors.secondaryBlue,
          ),
          width: double.infinity,
          padding: AppPaddings.all24,
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    'Playlist Details',
                    style: AppTextStyles.whiteBlueS16W600,
                  ),
                ],
              ),
              24.verticalSpace,
              Row(
                children: [
                  SvgPicture.asset(AssetsPaths.eyeVisibility),
                  8.horizontalSpace,
                  Text(
                    'Hide on profile',
                    style: AppTextStyles.whiteS16W400,
                  )
                ],
              ),
              32.verticalSpace,
              Row(
                children: [
                  4.horizontalSpace,
                  SvgPicture.asset(AssetsPaths.infoIcon),
                  12.horizontalSpace,
                  Text(
                    'Playlist Info',
                    style: AppTextStyles.whiteS16W400,
                  ),
                ],
              ),
              32.verticalSpace,
              Row(
                children: [
                  4.horizontalSpace,
                  SvgPicture.asset(AssetsPaths.shareIcon_3),
                  12.horizontalSpace,
                  Text(
                    'Share',
                    style: AppTextStyles.whiteS16W400,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
