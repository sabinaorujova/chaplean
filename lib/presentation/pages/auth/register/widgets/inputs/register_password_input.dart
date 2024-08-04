import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../cubits/register/register_cubit.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../widgets/global_input.dart';

class RegisterPasswordInput extends StatelessWidget {
  const RegisterPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return GlobalInput(
      hintText: AppStrings.password,
      maxLine: 2,
      controller: cubit.passwordController,
      validate: (v) {
        if (v == '') {
          return 'Field cannot be empty';
        }
        return null;
      },
    );
  }
}
