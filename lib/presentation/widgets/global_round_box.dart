import '../../utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalRoundBox extends StatelessWidget {
  const GlobalRoundBox({
    super.key,
    this.child,
    this.height,
    this.width,
    this.color,
  });

  final Widget? child;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 100.h,
      width: width ?? 100.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color ?? AppColors.secondaryBlue,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: child,
      ),
    );
  }
}
