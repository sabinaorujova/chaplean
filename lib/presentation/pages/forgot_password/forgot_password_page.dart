import 'package:provider/provider.dart';

import '../../../cubits/register/register_cubit.dart';
import 'widgets/texts/forgot_title_description.dart';
import 'widgets/texts/forgot_title_text.dart';
import '../../widgets/global_button.dart';
import '../../widgets/global_input.dart';
import '../../../utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routes/generator.dart';
import '../../widgets/custom_back_button.dart';
import '../auth/login/widgets/inputs/auth_view.dart';
import '../onboard/onboard_second_page.dart';
import 'otp_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {    final cubit = context.read<RegisterCubit>();

    return Scaffold(
      
        body: AuthView(formKey:cubit.formkey ,
          children: [
      CustomBackButton(
        onPressed: () => Navigate.replace(context, const OnboardSecondPage()),
        icon: Icons.arrow_back,
      ),
      20.verticalSpace,
      const ForgotTitleText(),
      16.verticalSpace,
      const ForgotTitleDescription(),
      192.verticalSpace,
      const GlobalInput(hintText: AppStrings.enterUrEmail,maxLine: 2,),
      16.verticalSpace,
      GlobalButton(
        onTap: () {Navigate.to(context,const OtpPage());},
        title: AppStrings.sendCode,
      ),
    ]));
  }
}
