import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_borders.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/app_text_styles.dart';

class MusicDownlandBox extends StatelessWidget {
  const MusicDownlandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 198.w,
      decoration: BoxDecoration(
        color: AppColors.royalty,
        borderRadius: AppBorders.c12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Icon(Icons.file_download_outlined, color: AppColors.etherealWhite, size: 24.sp),
          16.horizontalSpace,
          Text(
            AppStrings.downlandMp4,
            style: AppTextStyles.smalStyle13,
          )
        ],
      ),
    );
  }
}
