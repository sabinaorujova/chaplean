import 'package:flutter/material.dart';

import '../../../core/routes/generator.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_strings.dart';
import '../../widgets/global_basic_app_bar.dart';
import '../../widgets/global_divider.dart';
import '../about/about_page.dart';
import '../delete/delete_page.dart';
import '../privacy/privacy_page.dart';
import '../profile/profile_page.dart';
import '../security/security_page.dart';
import 'widgets/setting_about_button.dart';
import 'widgets/setting_delete_account_button.dart';
import 'widgets/setting_privacy_button.dart';
import 'widgets/setting_security_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyScaleBlack,
      appBar: GlobalBasicAppBar(
        title: AppStrings.setting,
        onPressed: () {
          Navigate.back(context, const ProfilePage());
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            SettingPrivacyButton(
              onTap: () => Navigate.to(context, const PrivacyPage()),
            ),
            const GlobalDivider(),
            SettingSecurityButton(
                onTap: () => Navigate.replace(context, const SecurityPage())),
            const GlobalDivider(),
            SettingAboutButton(
                onTap: () => Navigate.to(context, const AboutPage())),
            const Spacer(),
            SettingDeleteAccountButton(
                onTap: () => Navigate.replace(context, const DeletePage())),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
