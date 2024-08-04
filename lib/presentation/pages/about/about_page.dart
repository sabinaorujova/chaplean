import '../../../features/app_router/route_constants.dart';
import '../../widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../widgets/global_basic_app_bar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyScaleBlack,
      appBar: GlobalBasicAppBar(
        title: AppStrings.about,
        onPressed: () => context.pushNamed(RouteConstants.privacyPage)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: AppPaddings.tlr24b16,
              child: Text(
                AppStrings.aboutDescription,
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
