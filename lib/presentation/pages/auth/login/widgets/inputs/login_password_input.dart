import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../cubits/login/login_cubit.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../widgets/global_input.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
        final cubit = context.read<LoginCubit>();

    return  GlobalInput(maxLine: 2,
        hintText: AppStrings.enterPassword,controller: cubit.passwordController,
        suffixIcon:const  Icon(Icons.remove_red_eye_sharp));
  }
}
