import 'package:flutter/material.dart';

import '../features/auth/presentation/screens/sign_up_screen.dart';
import '../features/auth/presentation/screens/splash_screen.dart';

class AppRoutes {
  static MaterialPageRoute<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget widget = SizedBox();
    switch (settings.name) {
      case SplashScreen.routeName:
        widget = const SplashScreen();
        break;
      case SignUpScreen.routeName:
        widget = const SignUpScreen();
        break;

      /// return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
    return MaterialPageRoute(builder: (context) => widget);
  }
}
