import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../core/routes/generator.dart';
import '../../../cubits/register/register_cubit.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/global_button.dart';
import '../auth/login/widgets/inputs/auth_view.dart';
import 'forgot_password_page.dart';
import 'success_page.dart';
import 'widgets/buttons/enter_code.dart';
import 'widgets/texts/otp_description.dart';
import 'widgets/texts/otp_resend_text.dart';
import 'widgets/texts/otp_title_text.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {    final cubit = context.read<RegisterCubit>();

    return Scaffold(
        body: AuthView(formKey: cubit.formkey,
          children: [
      CustomBackButton(
        onPressed: () => Navigate.replace(context, const ForgotPasswordPage()),
        icon: Icons.arrow_back,
      ),
      20.verticalSpace,
      const OtpTitleText(),
      16.verticalSpace,
      const OtpDescription(),
      60.verticalSpace,
      const EnterCode(),
      100.verticalSpace,
      GlobalButton(
        onTap: () {
          Navigate.to(context, const SuccessPage());
        },
        title: AppStrings.verify,
        style: AppTextStyles.primary16,
      ),
      16.verticalSpace,
      const OtpResendText()
    ]));
  }
}
