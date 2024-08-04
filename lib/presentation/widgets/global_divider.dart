import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';

class GlobalDivider extends StatelessWidget {
  const GlobalDivider({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2.h,
      color: color?? AppColors.secondaryBlue,
      height: 1.h,
    );
  }
}
