import 'package:chaplean/features/app_router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../../utils/constants/app_text_styles.dart';

class RequestAccountText extends StatelessWidget {
  const RequestAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(AppStrings.haveAccount, style: AppTextStyles.smallStyle),
      4.horizontalSpace,
      GestureDetector(
        onTap: () {
          context.pushNamed(RouteConstants.login);
        },
        child: Text(
          AppStrings.loginHere,
          style:
              AppTextStyles.smallStyle.copyWith(color: AppColors.karimunBlue),
        ),
      )
    ]);
  }
}
