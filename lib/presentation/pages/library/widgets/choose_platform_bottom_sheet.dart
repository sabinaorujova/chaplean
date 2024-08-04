import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_button.dart';
import 'platforms_rounded.dart';

class ChoosePlatformBottomSheet extends StatelessWidget {
  const ChoosePlatformBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Choose Platform',
          style: AppTextStyles.etheralWhite16,
        ),
        16.verticalSpace,
        Row(
          children: [
            const PlatformsRounded(text: 'Spotfy'),
            8.horizontalSpace,
            const PlatformsRounded(text: 'Youtube'),
            8.horizontalSpace,
            const PlatformsRounded(text: 'Deezer'),
            8.horizontalSpace,
            const PlatformsRounded(text: 'Deezer'),
          ],
        ),        16.verticalSpace,
        GlobalButton(onTap: (){}, title: 'Playlist Link',style: AppTextStyles.smalStyle13,color: AppColors.primarySwatch,),

        16.verticalSpace,
        GlobalButton(onTap: (){}, title: 'Convert',style: AppTextStyles.primary16,color: AppColors.karimunBlue,)
      ],
    );
  }
}
