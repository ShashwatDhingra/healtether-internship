import 'package:flutter/material.dart';
import 'package:login_app/core/routes/routes.dart';
import 'package:login_app/core/routes/ui.dart';
import 'package:login_app/presentation/auth/widgets/my_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello! Let\'s get started', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
            18.ph,
            MyButton(onTap: (){
              Navigator.pushNamed(context, Routes.signInScreen);
            }, text: 'Lets Go')
          ],
        ),
      )
    );
  }
}