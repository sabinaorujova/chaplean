import 'package:flutter/material.dart';

import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../../utils/constants/app_text_styles.dart';

class LoginTitleText extends StatelessWidget {
  const LoginTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.loginDescription,
      style: AppTextStyles.appBarTitle25,
    );
  }
}
