import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../features/app_router/route_constants.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/assets_paths.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 16, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            filterQuality: FilterQuality.high,
            AssetsPaths.defaultProfileImage,
            width: 96.r,
            height: 96.r,
            fit: BoxFit.cover,
          ),
          12.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Emil Dostaliyev',
                style: AppTextStyles.etheralWhite16,
              ),
              8.verticalSpace,
              Text(
                'No way back',
                style: AppTextStyles.etheralWhite12,
              ),
              16.verticalSpace,
              Row(
                children: [
                  Text(
                    '205 Followers',
                    style: AppTextStyles.smalStyle10,
                  ),
                  16.horizontalSpace,
                  Text(
                    '105 Following',
                    style: AppTextStyles.smalStyle10,
                  ),
                  40.horizontalSpace,
                  SizedBox(
                    height: 30.h,
                    width: 53.w,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: AppColors.secondaryBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () => context.pushNamed(RouteConstants.editPage),
                          child: Text(
                            AppStrings.edit,
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.etherealWhite),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
