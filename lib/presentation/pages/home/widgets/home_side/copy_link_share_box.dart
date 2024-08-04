import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_colors.dart';
import 'pause_box.dart';

class CopyLinkShareBox extends StatelessWidget {
  const CopyLinkShareBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IconBox(
          color: AppColors.royalty,
          icon: Icons.copy,
        ),
        16.horizontalSpace,
        const IconBox(
          icon: Icons.share,
          color: AppColors.royalty,
        ),
      ],
    );
  }
}
