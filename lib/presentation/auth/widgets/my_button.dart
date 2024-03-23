import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/core/routes/ui.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final bool isLoading;

  const MyButton({super.key, required this.onTap, required this.text, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: CupertinoButton(
            onPressed: onTap,
            color: Themes.isLightTheme ? Themes.lightTheme.colorScheme.primary : Themes.darkTheme.colorScheme.primary,
            child: isLoading ? SizedBox.square(
              dimension: 20,
              child: const CircularProgressIndicator(color: Colors.black, strokeWidth: 1)) : Text(text)),
      ),
    );
  }
}
