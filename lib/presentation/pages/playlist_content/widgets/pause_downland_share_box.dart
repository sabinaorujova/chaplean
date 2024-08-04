import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../widgets/custom_back_button.dart';
import '../../home/widgets/home_side/pause_box.dart';

class PauseDownlandShareBox extends StatelessWidget {
  const PauseDownlandShareBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CustomBackButton(
              onPressed: () {},
              icon: Icons.share_rounded,
              width: 26,
              height: 26,size: 14.sp,radius: BorderRadius.circular(6),
            ),
            8.verticalSpace,
            CustomBackButton(
              onPressed: () {},
              icon: Icons.download,
              width: 26,
              height: 26,size: 14.sp,radius: BorderRadius.circular(6),
            ),
          ],
        ),
        8.horizontalSpace,
        const IconBox(
          icon: Icons.pause,
          color: AppColors.royalty,
        )
      ],
    );
  }
}
