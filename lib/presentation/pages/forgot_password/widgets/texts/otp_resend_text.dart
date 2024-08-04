import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/app_text_styles.dart';

class OtpResendText extends StatelessWidget {
  const OtpResendText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.resendtext,
          style: AppTextStyles.smalStyle16,
        ),
        4.horizontalSpace,
        Text(
          AppStrings.recents,
          style: AppTextStyles.blue16,
        ),
      ],
    );
  }
}
