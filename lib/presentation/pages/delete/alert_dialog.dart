import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../widgets/global_button.dart';

showAlertDialog(BuildContext context) {
  Widget deleteButton = GlobalButton(
    width: 136.w,
    height: 48.h,
    color: AppColors.red,
    onTap: () {},
    title: AppStrings.delete,
    style: AppTextStyles.whiteS16W400,
  );
  Widget cancelButton = GlobalButton(
    width: 136.w,
    height: 48.h,
    color: AppColors.primaryColor,
    onTap: () {
      Navigator.of(context).pop();
    },
    title: AppStrings.cancel,
    style: AppTextStyles.whiteS16W400,
  );

  AlertDialog alert = AlertDialog(
    backgroundColor: AppColors.secondaryBlue,
    insetPadding: const EdgeInsets.symmetric(horizontal: 21),
    titlePadding:
        const EdgeInsets.only(top: 24, bottom: 59, left: 109, right: 109),
    actionsPadding: const EdgeInsets.only(left: 26, right: 26, bottom: 32),
    title: Text(
      'Delete account?',
      style: AppTextStyles.whiteBlueS16W600,
    ),
    actions: [
      deleteButton,
      8.horizontalSpace,
      cancelButton,
    ],
  );

  showDialog(
    useSafeArea: true,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
