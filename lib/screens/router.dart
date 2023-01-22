import 'package:flutter/material.dart';
import 'package:random/screens/home/home.dart';
import 'package:random/screens/splash/splash.dart';

abstract class RouteName {
  static const splash = 'splash';
  static const home = 'home';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => HomePage());

      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}
