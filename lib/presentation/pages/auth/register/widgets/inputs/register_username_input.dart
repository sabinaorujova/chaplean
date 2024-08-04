import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../cubits/register/register_cubit.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../widgets/global_input.dart';

class RegisterUsernameInput extends StatelessWidget {
  const RegisterUsernameInput({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return GlobalInput(
      hintText: AppStrings.username,
      maxLine: 2,
      controller: cubit.usernameController,
      validate: (v) {
        if (v == '') {
          return 'Field cannot be empty';
        }
        return null;
      },
    );
  }
}
