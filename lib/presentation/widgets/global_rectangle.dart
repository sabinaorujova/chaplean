import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';

class GlobalRectangle extends StatelessWidget {
  const GlobalRectangle({super.key, this.child, this.borderRadius = true});

  final Widget? child;
  final bool borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: borderRadius ?
              const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ) : null,
        ),
        child: child,
      ),
    );
  }
}
