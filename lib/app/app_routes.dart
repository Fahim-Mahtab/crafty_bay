import 'package:flutter/material.dart';

import '../features/auth/presentation/screens/otp_screen.dart';
import '../features/auth/presentation/screens/sign_in_screen.dart';
import '../features/auth/presentation/screens/sign_up_screen.dart';
import '../features/auth/presentation/screens/splash_screen.dart';
import '../features/shared/presetation/screens/main_nav_holder_screen.dart';

class AppRoutes {
  static MaterialPageRoute<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget widget = SizedBox();
    switch (settings.name) {
      case SplashScreen.routeName:
        widget = const SplashScreen();
        break;
      case SignInScreen.routeName:
        widget = const SignInScreen();
        break;
      case SignUpScreen.routeName:
        widget = const SignUpScreen();
        break;
      case OtpScreen.routeName:
        widget = const OtpScreen();
        break;
      case MainNavHolderScreen.routeName:
        widget = const MainNavHolderScreen();
        break;


      /// return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
    return MaterialPageRoute(builder: (context) => widget);
  }
}
