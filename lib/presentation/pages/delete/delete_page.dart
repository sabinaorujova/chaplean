import '../../widgets/custom_nav_bar.dart';

import '../../../core/routes/generator.dart';
import 'alert_dialog.dart';
import '../setting/setting_page.dart';
import '../../widgets/global_button.dart';
import '../../../utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../widgets/global_basic_app_bar.dart';

class DeletePage extends StatelessWidget {
  const DeletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyScaleBlack,
      appBar: GlobalBasicAppBar(
        title: AppStrings.deleteAccount,
        onPressed: () {
          Navigate.replace(
            context,
            const SettingPage(),
          );
        },
      ),
      body: Padding(
        padding: AppPaddings.tlr24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.titleDeleteAccountQuestion,
              style: AppTextStyles.etheralWhite25,
            ),
            8.verticalSpace,
            Text(
              AppStrings.subtitleDeleteAccountQuestion,
              style: AppTextStyles.grayScaleS13W500,
            ),
            const Spacer(),
            GlobalButton(
              onTap: () {
                showAlertDialog(context);
              },
              title: AppStrings.delete,
              color: AppColors.red,
            ),
            24.verticalSpace,
          ],
        ),
      ),bottomNavigationBar:const BottomNavBar(),
    );
  }
}
