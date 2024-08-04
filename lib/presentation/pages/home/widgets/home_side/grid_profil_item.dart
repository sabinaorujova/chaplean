import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/app_text_styles.dart';
import '../../../../../utils/constants/assets_paths.dart';

class GridProfilItem extends StatelessWidget {
  const GridProfilItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:AppPaddings.h12,
      child: Column(
        children: [
          Container(
            width: 48.r,
            height: 48.r,
            decoration: BoxDecoration(
              color: AppColors.etherealWhite,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Center(
                child: SvgPicture.asset(
                  AssetsPaths.profileIconFilled,
                  height: 26.r,
                  width: 24.r,
                ),
              ),
            ),
          ),
         8.verticalSpace,
           Text(
            AppStrings.username,
            style: AppTextStyles.etheralWhite8,
          ),
        ],
      ),
    );
  }
}
