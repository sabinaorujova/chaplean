import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../cubits/login/login_cubit.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../widgets/global_input.dart';

class LoginInputUsername extends StatelessWidget {
  const LoginInputUsername({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return  GlobalInput(maxLine: 2,
    controller:cubit.emailController,
      hintText: AppStrings.emailOrUsername,validate: (v) {
          if (v == '') {
            return 'Field cannot be empty';
          }
          return null;
        },
    );
  }
}
