import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/app_logo_text.dart';
import '../../widgets/login_button.dart';
import 'widgets/chaplean_picture.dart';
import 'widgets/onboard_view.dart';
import 'widgets/register_royalty_button.dart';

class OnboardSecondPage extends StatelessWidget {
  const OnboardSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardView(
        children: [
          const AppLogoText(),
          70.verticalSpace,
          const ChapleanPicture(),
          120.verticalSpace,
          const LoginButton(),
          16.verticalSpace,
          const RoyaltyColorButton()
        ],
      ),
    );
  }
}
