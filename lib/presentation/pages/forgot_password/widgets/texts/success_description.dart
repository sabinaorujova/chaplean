import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/constants/app_text_styles.dart';

class SuccessDescription extends StatelessWidget {
  const SuccessDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.changedSuccessfully,
      style: AppTextStyles.smalStyle16,
    );
  }
}
