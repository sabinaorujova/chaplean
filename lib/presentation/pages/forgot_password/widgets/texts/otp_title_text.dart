import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/app_text_styles.dart';

class OtpTitleText extends StatelessWidget {

  const OtpTitleText({ super.key });

   @override
   Widget build(BuildContext context) {
       return Text(
      AppStrings.otpTitle,
      style: AppTextStyles.appBarTitle25,
    );
  }
}