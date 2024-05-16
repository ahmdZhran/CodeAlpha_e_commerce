import 'package:e_commerce_app/core/router/base_routes.dart';
import 'package:e_commerce_app/core/router/default_router.dart';
import 'package:e_commerce_app/just_for_tes_navigate_one.dart';
import 'package:e_commerce_app/just_for_tes_navigate_two.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String testOne = "First Screen";
  static const String testSecond = "Second Screen";

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case testOne:
        return BaseRoute(page: JustForNavigationTestOne());
      case testSecond:
        return BaseRoute(page: JustForNavigationTestTwo());

      default:
        return BaseRoute(page: NoRouteFinded());
    }
  }
}
