import 'package:provider/provider.dart';

import '../../../cubits/register/register_cubit.dart';
import '../auth/login/login_page.dart';
import '../auth/login/widgets/inputs/auth_view.dart';
import 'widgets/texts/succes_title_text.dart';
import 'widgets/texts/success_description.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/global_button.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../core/routes/generator.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
        final cubit = context.read<RegisterCubit>();

    return Scaffold(
      body: AuthView(formKey: cubit.formkey,
        children: [
        CustomBackButton(
          onPressed: () => Navigate.replace(context, const LoginPage()),
          icon: Icons.arrow_back,
        ),
        20.verticalSpace,
        const SuccesTitleText(),
        16.verticalSpace,
        const SuccessDescription(),
        60.verticalSpace,
        Center(
          child: SvgPicture.asset(
            AssetsPaths.successChaplean,
            height: 121.h,
            width: 194.w,
          ),
        ),
        40.verticalSpace,
        GlobalButton(onTap: (){Navigate.to(context,const LoginPage());}, title: AppStrings.backToLogin)
      ]),
    );
  }
}
