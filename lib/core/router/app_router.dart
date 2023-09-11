import 'package:cart_corner_app/core/router/screens_names.dart';
import 'package:cart_corner_app/features/auth/view/login_screen.dart';
import 'package:cart_corner_app/features/auth/view/register_screen.dart';
import 'package:cart_corner_app/features/bottom_nav/view/bottom_nav_view.dart';
import 'package:cart_corner_app/features/cart/view/cart_view.dart';
import 'package:cart_corner_app/features/checkout/view/checkout_view.dart';
import 'package:cart_corner_app/features/checkout/view/complete_view.dart';
import 'package:cart_corner_app/features/home/view/details_mobile_view.dart';
import 'package:cart_corner_app/features/home/view/home_mobile_view.dart';
import 'package:cart_corner_app/features/profile/view/profile_view.dart';
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

      case ScreensNames.homeMobile:
        return MaterialPageRoute(builder: (_) =>  const HomeMobileView());
      case ScreensNames.profile:
        return MaterialPageRoute(builder: (_) =>  const ProfileView());
      case ScreensNames.cart:
        return MaterialPageRoute(builder: (_) =>  const CartView());
      case ScreensNames.bottomNav:
        return MaterialPageRoute(builder: (_) =>  const BottomNavView());
      case ScreensNames.checkOut:
        return MaterialPageRoute(builder: (_) =>  const CheckOutView());
      case ScreensNames.complete:
        return MaterialPageRoute(builder: (_) =>  const CompleteView());

      // case ScreensNames.detailsMobile:
      //   return MaterialPageRoute(builder: (_) =>  DetailsMobileView(product: null,
      //   )

      default:
        return null;
    }
  }
}