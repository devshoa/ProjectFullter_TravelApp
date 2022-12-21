import 'package:flutter/material.dart';
import 'package:neoviettourist/representation/screens/intro_screen.dart';

import 'screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  // đăng ký route
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
};
