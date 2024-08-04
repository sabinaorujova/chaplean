import 'package:flutter/material.dart';

import '../../../../../../utils/constants/app_paddings.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key, required this.children, required this.formKey});
  final List<Widget> children;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: AppPaddings.all16,
            child: Form(key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: children,
                ),
              ),
            )));
  }
}
