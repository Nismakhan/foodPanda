import 'package:flutter/material.dart';
import 'package:foodpanda/app/splash.dart';
import 'package:foodpanda/screens/carts.dart';
import 'package:foodpanda/screens/deals.dart';
import 'package:foodpanda/screens/home.dart';
import 'package:foodpanda/screens/single_deals.dart';

class AppRouter {
  static const String splash = "/";
  static const String home = "/home";
  static const String deals = "/deals";
  static const String singleDeals = "/single_deals";
  static const String carts = "/carts";
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: ((context) => const Splash()));
      case home:
        return MaterialPageRoute(builder: ((context) => const Home()));
      case deals:
        return MaterialPageRoute(builder: ((context) => const Deals()));
      case singleDeals:
        return MaterialPageRoute(builder: ((context) => SingleDeals()));
      case carts:
        return MaterialPageRoute(builder: ((context) => const Carts()));
    }
    return null;
  }
}
