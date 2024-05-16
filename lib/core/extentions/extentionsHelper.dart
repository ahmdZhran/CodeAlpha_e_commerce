import 'package:e_commerce_app/core/extentions/theme/colors_extention.dart';
import 'package:flutter/material.dart';

extension NavigatoinHelper on BuildContext {
  MyColors get colors => Theme.of(this).extension<MyColors>()!;

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplaocementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.pop(this);
}
