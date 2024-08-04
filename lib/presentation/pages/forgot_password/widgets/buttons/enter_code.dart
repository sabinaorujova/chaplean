import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_text_styles.dart';

class EnterCode extends StatelessWidget {

  const EnterCode({ super.key });

   @override
   Widget build(BuildContext context) {
       return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Container(
          margin: AppPaddings.all16,
          height: 56.r,
          width: 56.r,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: AppColors.secondaryBlue ),
          child: Center(
            child: Text(
              (index + 1).toString(),
              style:AppTextStyles.smalStyle10
            ),
          ),
        ),
      ),
    );
  }
}