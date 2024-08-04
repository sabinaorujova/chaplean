import '../../widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../core/routes/generator.dart';
import '../../../utils/constants/app_color_filters.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../../utils/constants/assets_paths.dart';
import '../../widgets/global_basic_app_bar.dart';
import '../../widgets/global_button.dart';
import '../../widgets/global_input.dart';
import '../setting/setting_page.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalBasicAppBar(
        title: AppStrings.security,
        onPressed: () {
          Navigate.replace(
            context,
            const SettingPage(),
          );
        },
      ),
      body: Padding(
        padding: AppPaddings.h24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            43.verticalSpace,
            Text(
              textAlign: TextAlign.center,
              AppStrings.changePassword,
              style: AppTextStyles.etheralWhite25,
            ),
            67.verticalSpace,
            GlobalInput(
              hintText: 'Current password',
              suffixIcon: SvgPicture.asset(
                fit: BoxFit.none,
                AssetsPaths.eyeVisibility,
                colorFilter: AppColorFilters.doverGreySrcIn,
              ),
            ),
            12.verticalSpace,
            GlobalInput(
              hintText: 'New password',
              suffixIcon: SvgPicture.asset(
                fit: BoxFit.none,
                AssetsPaths.eyeVisibility,
                colorFilter: AppColorFilters.doverGreySrcIn,
              ),
            ),
            12.verticalSpace,
            GlobalInput(
              hintText: 'Confirm new password',
              suffixIcon: SvgPicture.asset(
                fit: BoxFit.none,
                AssetsPaths.eyeVisibility,
                colorFilter: AppColorFilters.doverGreySrcIn,
              ),
            ),
            12.verticalSpace,
            Text(
              AppStrings.forgotPassword,
              style: AppTextStyles.doverGreyS14W500,
              textAlign: TextAlign.end,
            ),
            const Spacer(),
            GlobalButton(onTap: () {}, title: 'Save'),
            24.verticalSpace,
          ],
        ),
      ),
      bottomNavigationBar:const BottomNavBar(),
    );
  }
}
