import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chaplean/data/services/login_service.dart';
import 'package:chaplean/helpers/service_locator.dart';
import 'package:flutter/widgets.dart';

import '../../data/models/register_response.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  late final LoginService _registerService = getIt.get<LoginService>();
  late final TextEditingController emailController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();

  late final formkey = GlobalKey<FormState>();

  void login() async {
    try {
      emit(LoginLoading());
      final RegisterResponse? response = await _registerService.login(
          email: emailController.text, password: passwordController.text);
      if (response is RegisterResponse) {
        emit(LoginSuccess());
      } else {
        emit(LoginError());
      }
    } on SocketException catch (_) {
      emit(LoginNetwork());
    } catch (_) {
      emit(LoginError());
    }
  }

  void checkAndLogin() {
    if (formkey.currentState?.validate() ?? false) {
      login();
    } else {
      log('error');
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
