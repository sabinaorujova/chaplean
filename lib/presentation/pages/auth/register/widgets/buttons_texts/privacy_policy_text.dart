import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../../utils/constants/app_text_styles.dart';

class PrivacyPolicyText extends StatefulWidget {
  const PrivacyPolicyText({super.key});

  @override
  State<PrivacyPolicyText> createState() => _PrivacyPolicyTextState();
}

class _PrivacyPolicyTextState extends State<PrivacyPolicyText> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 24.0,
          width: 24.0,
          child: Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
            activeColor: AppColors.karimunBlue,
            visualDensity: VisualDensity.compact,
          ),
        ),
        30.verticalSpace,
        Text(
          AppStrings.privacyPolicy,
          style: AppTextStyles.smallStyle.copyWith(fontSize: 13.sp),
        ),
      ],
    );
  }
}
