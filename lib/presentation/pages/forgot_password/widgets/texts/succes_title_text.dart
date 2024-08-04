import '../../../../../utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';

class SuccesTitleText extends StatelessWidget {

  const SuccesTitleText({ super.key });

   @override
   Widget build(BuildContext context) {
       return Text(
      AppStrings.passwordChanged,
      style: AppTextStyles.etheralWhite25,
    );
  }
}