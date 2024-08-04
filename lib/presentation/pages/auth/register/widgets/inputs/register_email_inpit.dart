import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../cubits/register/register_cubit.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../widgets/global_input.dart';

class RegisterEmailInput extends StatelessWidget {
  const RegisterEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
 final cubit = context.read<RegisterCubit>();
    return  GlobalInput(maxLine: 2,controller: cubit.emailController,
      hintText: AppStrings.username,validate: (v) {
          if (v == '') {
            return 'Field cannot be empty';
          }
          return null;
        },
    );
  }
}
