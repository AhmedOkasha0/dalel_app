import 'package:dalel_app1/feautures/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static MaterialPageRoute? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
    }
    return null;
  }
}
