import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
import 'package:login_app/core/routes/ui.dart';

class Utils{
  static void showToast(BuildContext context, String message){
    FlutterToastr.show(message, context, backgroundColor: Themes.isLightTheme ? Colors.black : Themes.darkTheme.colorScheme.primary);
  }
}