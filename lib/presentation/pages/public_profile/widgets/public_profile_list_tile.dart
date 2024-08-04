import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/assets_paths.dart';

class PublicProfileListTile extends StatelessWidget {
  const PublicProfileListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            filterQuality: FilterQuality.high,
            AssetsPaths.publicProfileDefaultPicture,
            width: 96.r,
            height: 96.r,
            fit: BoxFit.cover,
          ),
          12.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name Username',
                style: AppTextStyles.etheralWhiteS20W600,
              ),
              8.verticalSpace,
              Text(
                'No way back',
                style: AppTextStyles.greyScale_1S13W400,
              ),
              // 8.verticalSpace  textler sizedboxun icinde
              12.verticalSpace,
              Row(
                children: [
                  Text(
                    '150 Followers',
                    style: AppTextStyles.smalStyle10,
                  ),
                  16.horizontalSpace,
                  Text(
                    '105 Following',
                    style: AppTextStyles.smalStyle10,
                  ),
                  35.horizontalSpace,
                  Center(
                    child: SizedBox(
                      height: 30.h,
                      width: 68.w,
                      child: DecoratedBox(
                        decoration: AppBoxDecorations.karimunBlueCircular8,
                        child: Center(
                          child: Text(
                            AppStrings.follow,
                            style: AppTextStyles.greyScaleBlackS13W400,
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
