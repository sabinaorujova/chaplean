import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_divider.dart';
import '../../../widgets/global_rectangle.dart';

class SettingDeleteAccountButton extends StatelessWidget {
  const SettingDeleteAccountButton({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: GlobalRectangle(
            borderRadius: false,
            child: Center(
              child: Text(
                AppStrings.deleteAccount,
                style: AppTextStyles.red13,
              ),
            ),
          ),
        ),
        const GlobalDivider(color: AppColors.red),
      ],
    );
  }
}
