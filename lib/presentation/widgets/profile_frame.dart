import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_text_styles.dart';

class GlobalFrame extends StatelessWidget {
  const GlobalFrame(
      {super.key, required this.profilePicture, required this.username});

  final String profilePicture;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          height: 100.h,
          width: 100.r,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          profilePicture,
        ),
        8.verticalSpace,
        Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          username,
          style: AppTextStyles.whiteS10W300,
        ),
      ],
    );
  }
}
