import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_strings.dart';

class CustomTab extends StatelessWidget {
  const CustomTab.music({
    super.key,
    this.text = AppStrings.music,
  });
  const CustomTab.playlist({
    super.key,
    this.text = AppStrings.playlist,
  });
  const CustomTab.podcast({
    super.key,
    this.text = AppStrings.podcast,
  });
  const CustomTab.audio({
    super.key,
    this.text = AppStrings.audio
  });
  const CustomTab.account({
    super.key,
    this.text = AppStrings.account
  });
  const CustomTab.tag({
    super.key,
    this.text = AppStrings.tag
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
