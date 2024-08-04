import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../cubits/register/register_cubit.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../widgets/global_input.dart';

class RegisterConfirmPassword extends StatelessWidget {
  const RegisterConfirmPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return GlobalInput(
        hintText: AppStrings.newPassword,
        controller: cubit.confirmPassController,
        validate: (v) {
          final password = cubit.passwordController.text;
          if (v!.isEmpty) {
            return AppStrings.errorEmpty;
          } else if (v != password) {
            return "Passwords do not match";
          } else if (v.length < 6) {
            return AppStrings.errorLength;
          }
          return null;
        },
        suffixIcon: const Icon(Icons.remove_red_eye_outlined));
  }
}
