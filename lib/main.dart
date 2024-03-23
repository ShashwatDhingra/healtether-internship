import 'package:flutter/material.dart';
import 'package:login_app/core/routes/route_genetator.dart';
import 'package:login_app/core/routes/routes.dart';
import 'package:login_app/core/routes/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Themes.isLightTheme ? Themes.lightTheme : Themes.darkTheme,
      initialRoute: Routes.landingScreen,
      onGenerateRoute: RoutesGenerator.onGenerateRoute,
    );
  }
}