import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../features/app_router/route_constants.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../../utils/constants/assets_paths.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/custom_nav_bar.dart';
import '../../widgets/global_button.dart';
import '../../widgets/global_divider.dart';
import '../../widgets/global_input.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyScaleBlack,
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: true,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.primaryColor,
        leading: Center(
          child: CustomBackButton(
            onPressed: () {
              context.pushNamed(RouteConstants.profile);
            },
            icon: Icons.arrow_back,
          ),
        ),
        title: const Padding(
          padding: AppPaddings.all12,
          child: Text(
            AppStrings.editProfile,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: GlobalDivider(),
        ),
      ),
      body: Padding(
        padding: AppPaddings.h24,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              23.verticalSpace,
              Center(
                child: Stack(
                  children: [
                    Image.asset(
                      AssetsPaths.defaultProfileImage,
                    ),
                    Positioned(
                      right: 0,
                      child: SvgPicture.asset(
                        AssetsPaths.editPencil,
                      ),
                    )
                  ],
                ),
              ),
              47.verticalSpace,
              Text(
                'Username',
                style: AppTextStyles.grayScaleS13W500,
              ),
              8.verticalSpace,
              const GlobalInput(
                hintText: 'emildost',
                maxLine: 1,
              ),
              12.verticalSpace,
              Text(
                'Name',
                style: AppTextStyles.grayScaleS13W500,
              ),
              8.verticalSpace,
              const GlobalInput(
                hintText: 'Emil Dostaliyev',
                maxLine: 1,
              ),
              12.verticalSpace,
              Text(
                'Bio',
                style: AppTextStyles.grayScaleS13W500,
              ),
              8.verticalSpace,
              const GlobalInput(
                hintText: 'No way back.',
                maxLine: 4,
              ),
              95.verticalSpace,
              GlobalButton(onTap: () {}, title: 'Save')
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
