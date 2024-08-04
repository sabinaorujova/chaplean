import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/app_text_styles.dart';

class ForgotTitleText extends StatelessWidget {

  const ForgotTitleText({ super.key });

   @override
   Widget build(BuildContext context) {
       return Text(
      AppStrings.forgotPassword,
      style: AppTextStyles.appBarTitle25,
    );
  }
}