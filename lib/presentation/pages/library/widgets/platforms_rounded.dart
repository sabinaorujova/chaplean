import '../../../../utils/constants/app_borders.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlatformsRounded extends StatelessWidget {
  const PlatformsRounded({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(width: 70.w,height: 32.h,
      decoration: BoxDecoration(borderRadius: AppBorders.c360,border: Border.all(color: AppColors.karimunBlue),color: AppColors.secondaryBlue,),
      child: Center(child: Text(text,style: AppTextStyles.etheralWhite12,)),
    );
  }
}
