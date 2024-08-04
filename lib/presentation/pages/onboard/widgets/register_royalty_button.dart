import 'package:chaplean/features/app_router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_button.dart';

class RoyaltyColorButton extends StatelessWidget {
  const RoyaltyColorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalButton(
        onTap: () {
          context.pushNamed(RouteConstants.register);
        },
        title: AppStrings.register,
        color: AppColors.royalty,
        style: AppTextStyles.etheralWhite16);
  }
}
