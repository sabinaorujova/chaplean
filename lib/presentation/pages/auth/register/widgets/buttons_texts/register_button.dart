import 'package:chaplean/features/app_router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../cubits/register/register_cubit.dart';
import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../widgets/global_button.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
      if (state is RegisterSuccess) {
        context.pushNamed(RouteConstants.login);
      } else if (state is RegisterError) {
        print('sdfghjkl');
      }
    }, builder: (context, state) {
      return GlobalButton(
        onTap: () => cubit.checkAndRegister(),
        title: AppStrings.register,
        color: AppColors.karimunBlue,
      );
    });
  }
}
