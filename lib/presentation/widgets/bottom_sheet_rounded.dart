import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_paddings.dart';

class BottomSheetRounded extends StatelessWidget {
  const BottomSheetRounded({super.key,  required this.children, this.height});
  final List<Widget> children;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            height:height ?? 424.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              color: AppColors.secondaryBlue,
            ),
            width: double.infinity,
            padding: AppPaddings.all24,
            child: Column(children: children)));
  }
}
