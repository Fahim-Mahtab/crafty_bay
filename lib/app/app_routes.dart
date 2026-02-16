import 'package:flutter/material.dart';

import '../features/auth/presentation/screens/splash_screen.dart';

class AppRoutes {
  static MaterialPageRoute<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget widget = SizedBox();
    switch (settings.name) {
      case '/':
        widget = const SplashScreen();
        break;

      /// return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
    return MaterialPageRoute(builder: (context) => widget);
  }
}
