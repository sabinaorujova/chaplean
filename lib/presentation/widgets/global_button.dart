import '../../utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../utils/constants/app_borders.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.onTap,
    required this.title,
    this.isLoadings = false,
    this.color,
    this.style,
    this.borderside,
    this.height,
    this.width,
  });

  final void Function() onTap;
  final String title;
  final bool isLoadings;
  final Color? color;
  final TextStyle? style;
  final BoxBorder? borderside;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: width ?? double.infinity,
            height: height ?? 56.sp,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color ?? AppColors.karimunBlue,
              borderRadius: AppBorders.all8,
              border: borderside,
            ),
            child: Center(
              child: isLoadings
                  ? const CircularProgressIndicator.adaptive()
                  : Text(title, style: style??AppTextStyles.primary16),
            )));
  }
}
