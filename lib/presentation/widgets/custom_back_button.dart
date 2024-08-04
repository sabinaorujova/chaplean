import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_colors.dart';

class CustomBackButton extends StatefulWidget {
  const CustomBackButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.width,
    this.height,
    this.size, this.radius,
  }) : super(key: key);

  final void Function() onPressed;
  final IconData icon;
  final double? width;
  final double? height;
  final double? size;
  final BorderRadiusGeometry? radius;

  @override
  State<CustomBackButton> createState() => _CustomBackButtonState();
}

class _CustomBackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 40.w,
      height: widget.height ?? 40.h,
      decoration: BoxDecoration(
        color: AppColors.secondaryBlue,
        borderRadius:widget.radius?? BorderRadius.circular(12.sp),
      ),
      child: Center(
        child: IconButton(
          padding: EdgeInsets.only(right: 2.sp, top: 2.sp),
          icon: Icon(
            widget.icon,
            color: AppColors.etherealWhite,
            size: widget.size,
          ),
          onPressed: widget.onPressed,
        ),
      ),
    );
  }
}
