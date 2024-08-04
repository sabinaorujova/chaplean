import 'package:flutter/material.dart';

import '../../../core/routes/generator.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../widgets/custom_nav_bar.dart';
import '../../widgets/global_basic_app_bar.dart';
import '../setting/setting_page.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyScaleBlack,
      appBar:  GlobalBasicAppBar(title: AppStrings.privacy,onPressed: () => Navigate.back(context,const SettingPage()),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: AppPaddings.tlr24b16,
              child: Text(
                AppStrings.privacyDescription,
                style: AppTextStyles.whiteS13W500,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
     bottomNavigationBar: const BottomNavBar(),
      
      
    );
  }
}
