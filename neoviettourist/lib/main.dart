import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neoviettourist/core/constants/color_constants.dart';
import 'package:neoviettourist/representation/routers.dart';
import 'package:neoviettourist/representation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel Team',
        theme: ThemeData(
            primaryColor: ColorPalette.primaryColor,
            scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
            backgroundColor: ColorPalette.backgroundScaffoldColor),
        routes: routes,
        home: const SplashScreen());
  }
}
