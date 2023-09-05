import 'package:cart_corner_app/core/router/screens_names.dart';
import 'package:cart_corner_app/features/auth/view/desktop_login.dart';
import 'package:cart_corner_app/features/auth/view/desktop_register.dart';
import 'package:cart_corner_app/features/auth/view/login_screen.dart';
import 'package:cart_corner_app/features/auth/view/register_screen.dart';
import 'package:cart_corner_app/features/home/view/home_mobile_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  late Widget startScreen;

  Route? onGenerateRoute(RouteSettings settings) {
    startScreen =  const LoginScreen();
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startScreen);
      case ScreensNames.loginMobile:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case ScreensNames.registerMobile:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case ScreensNames.loginDeskTop:
        return MaterialPageRoute(builder: (_) => const DesktopLogin());
      case ScreensNames.registerDeskTop:
        return MaterialPageRoute(builder: (_) => const DeskTopRegister());
      case ScreensNames.homeMobile:
        return MaterialPageRoute(builder: (_) =>  HomeMobileView());
      default:
        return null;
    }
  }
}