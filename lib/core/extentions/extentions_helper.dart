import 'package:e_commerce_app/core/languages/app_localizations.dart';
import 'package:e_commerce_app/core/theme/assets_extension.dart';
import 'package:flutter/material.dart';

import '../theme/colors_extension.dart';

extension ExtentionsHelper on BuildContext {
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  MyAssets get assets => Theme.of(this).extension<MyAssets>()!;

  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

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
