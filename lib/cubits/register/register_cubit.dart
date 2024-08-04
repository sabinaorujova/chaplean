import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chaplean/data/models/register_response.dart';
import 'package:flutter/material.dart';

import '../../data/services/register_service.dart';
import '../../helpers/service_locator.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  late final RegisterService _registerService = getIt.get<RegisterService>();
  late final TextEditingController usernameController = TextEditingController();
  late final TextEditingController emailController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();
  late final TextEditingController confirmPassController =
      TextEditingController();

  late final formkey = GlobalKey<FormState>();

  void register() async {
    try {
        emit(RegisterLoading());
        final RegisterResponse? response = await _registerService.register(
            username: usernameController.text,
            email: emailController.text,
            password: passwordController.text
        );
        if (response != null) {
            emit(RegisterSuccess());
        } else {
            emit(RegisterError());
        }
    } on SocketException catch (_) {
        emit(RegisterNetwork());
    } catch (e) {
        log('Qeydiyyat xətası: $e');
        emit(RegisterError());
    }
}
  void checkAndRegister() {
    log('Formu və şifrə təsdiqini yoxlamaq');
    if ((formkey.currentState?.validate() ?? false) &&
        passwordController.text == confirmPassController.text) {
        log('Form etibarlıdır, qeydiyyat aparılır');
        register();
    } else {
        log('Form təsdiqi uğursuz oldu və ya şifrələr uyğun gəlmir');
    }
}


  @override
  Future<void> close() {
    usernameController.dispose();
    confirmPassController.dispose();
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
