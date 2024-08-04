import 'package:flutter/material.dart';

import '../../../core/routes/generator.dart';
import '../../widgets/app_logo_text.dart';
import 'onboard_second_page.dart';
import 'widgets/onboard_description.dart';
import 'widgets/onboard_view.dart';

class OnboardFirstPage extends StatelessWidget {
  const OnboardFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigate.to(context, const OnboardSecondPage());
    });
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnboardView(
              children: [
                AppLogoText(),
              ],
            ),
            Spacer(),
            OnboardDescription(),
          ],
        ),
      ),
    );
  }
}
