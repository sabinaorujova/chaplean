import 'package:chaplean/features/app_router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../cubits/login/login_cubit.dart';
import '../../../../../../utils/constants/app_strings.dart';
import '../../../../../widgets/global_button.dart';

class LoginButtonn extends StatelessWidget {
  const LoginButtonn({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
      if (state is LoginSuccess) {
        context.pushNamed(RouteConstants.home);
      } else if (state is LoginError) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Login failed'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    }, builder: (context, state) {
      return GlobalButton(
          onTap: () {
            cubit.checkAndLogin();
          },
          title: AppStrings.login);
    });
  }
}
