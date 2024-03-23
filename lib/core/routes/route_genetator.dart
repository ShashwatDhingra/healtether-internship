
import 'package:flutter/material.dart';
import 'package:login_app/core/routes/routes.dart';
import 'package:login_app/presentation/auth/provider/signin_provider.dart';
import 'package:login_app/presentation/auth/screens/signup_screen.dart';
import 'package:login_app/presentation/landing/landing_screen.dart';
import 'package:provider/provider.dart';

class RoutesGenerator {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signInScreen:
        return MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
                create: (context) => SignUpProvider(context),
                child: SignUpScreen()));

      case Routes.landingScreen:
        return MaterialPageRoute(builder: (context) => const LandingScreen());

      default:
        return MaterialPageRoute(builder: (context) => const ErrorRoute());
    }
  }
}

class ErrorRoute extends StatelessWidget {
  const ErrorRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('ERROR')),
    );
  }
}
