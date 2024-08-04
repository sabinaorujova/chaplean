import 'package:flutter/material.dart';

import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../../utils/constants/app_text_styles.dart';

class FogotPasswordTextButton extends StatelessWidget {
  const FogotPasswordTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          AppStrings.forgotPassword,
          style: AppTextStyles.smallStyle,
        ),
      ),
    );
  }
}
