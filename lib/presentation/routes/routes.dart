import 'package:flutter/material.dart';
import 'package:nacchofer31_portfolio/presentation/pages/home_page.dart';
import 'package:nacchofer31_portfolio/presentation/pages/not_found_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final Map<String, int> routes = {
    '/about': 0,
    '/portfolio': 1,
    '/experience': 2,
    '/education': 3,
  };

  final int? index = routes[settings.name];
    return PageRouteBuilder(
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
      pageBuilder: (_, __, ___) => index != null ? HomePage(index: index) : NotFoundRoute(),
    );
}
