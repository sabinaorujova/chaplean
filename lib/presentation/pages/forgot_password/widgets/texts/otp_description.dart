import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/app_text_styles.dart';

class OtpDescription extends StatelessWidget {

  const OtpDescription({ super.key });

   @override
   Widget build(BuildContext context) {
       return Text(
      AppStrings.otpDescription,
      style: AppTextStyles.smalStyle16,
    );
  }
}