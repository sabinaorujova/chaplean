import 'package:chaplean/features/app_router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../utils/constants/app_strings.dart';
import '../../utils/constants/app_text_styles.dart';
import 'global_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalButton(
        style: AppTextStyles.primary16,
        title: AppStrings.login,
        onTap: () {
          context.pushNamed(RouteConstants.login);
        });
  }
}
