import 'package:flutter/material.dart';

import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_rectangle.dart';

class SettingAboutButton extends StatelessWidget {
  const SettingAboutButton({super.key, this.onTap});

   final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: GlobalRectangle(
        child: Center(
          child: Text(
            AppStrings.about,
            style: AppTextStyles.whiteS13W600,
          ),
        ),
      ),
    );
  }
}
