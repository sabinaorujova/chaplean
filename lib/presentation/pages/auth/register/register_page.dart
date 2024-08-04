import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../core/routes/generator.dart';
import '../../../../cubits/register/register_cubit.dart';
import '../../../widgets/custom_back_button.dart';
import '../../onboard/onboard_second_page.dart';
import '../login/widgets/inputs/auth_view.dart';
import 'widgets/buttons_texts/privacy_policy_text.dart';
import 'widgets/buttons_texts/register_button.dart';
import 'widgets/buttons_texts/register_title_text.dart';
import 'widgets/buttons_texts/regsister_confirm_passford_input.dart';
import 'widgets/buttons_texts/request_account_text.dart';
import 'widgets/inputs/register_email_inpit.dart';
import 'widgets/inputs/register_password_input.dart';
import 'widgets/inputs/register_username_input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Scaffold(
        body: AuthView(formKey: cubit.formkey,
          children: [
      CustomBackButton(
        onPressed: () => Navigate.replace(context, const OnboardSecondPage()),
        icon: Icons.arrow_back,
      ),
      20.verticalSpace,
      const RegisterTitleText(),
      34.verticalSpace,
      const RegisterUsernameInput(),
      16.verticalSpace,
      const RegisterEmailInput(),
      16.verticalSpace,
      const RegisterPasswordInput(),
      16.verticalSpace,
      const RegisterConfirmPassword(),
      16.verticalSpace,
      const PrivacyPolicyText(),
      60.verticalSpace,
      const RegisterButton(),
      8.verticalSpace,
      const RequestAccountText(),
    ]));
  }
}
