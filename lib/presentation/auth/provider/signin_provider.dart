import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_app/utils/utils.dart';

class SignUpProvider extends ChangeNotifier {
  final BuildContext context;
  SignUpProvider(this.context);

  bool isLoading = false;

  // text editing controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  toggleLoading(bool newLoadingValue) {
    isLoading = newLoadingValue;
    notifyListeners();
  }

  void signUp() async {
    if (!formKey.currentState!.validate()) return;

    Utils.showToast( context, 'Successfully Sign Up');
  }
}
