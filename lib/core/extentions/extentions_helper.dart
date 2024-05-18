import 'package:e_commerce_app/core/extentions/theme/colors_extention.dart';
import 'package:e_commerce_app/core/utils/languages/app_localizations.dart';
import 'package:flutter/material.dart';

extension ExtentionsHelper on BuildContext {
  MyColors get colors => Theme.of(this).extension<MyColors>()!;

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  String translate(String langKey) {
    return AppLocalizations.of(this)!.translate(langKey).toString();
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
