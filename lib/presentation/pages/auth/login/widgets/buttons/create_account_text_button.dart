import 'package:chaplean/features/app_router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../../utils/constants/app_text_styles.dart';

class CreateAccountTextButton extends StatelessWidget {
  const CreateAccountTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppStrings.createAccount, style: AppTextStyles.smallStyle),
        SizedBox(width: 4.sp),
        GestureDetector(
          onTap: () {
            context.pushNamed(RouteConstants.register);
          },
          child: Text(
            AppStrings.register,
            style:
                AppTextStyles.smallStyle.copyWith(color: AppColors.karimunBlue),
          ),
        ),
      ],
    );
  }
}
