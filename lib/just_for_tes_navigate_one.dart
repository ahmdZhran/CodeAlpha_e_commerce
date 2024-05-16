import 'package:e_commerce_app/core/extentions/extentionsHelper.dart';
import 'package:e_commerce_app/core/router/app_router.dart';
import 'package:flutter/material.dart';

class JustForNavigationTestOne extends StatelessWidget {
  const JustForNavigationTestOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        onPressed: () {
          context.pushNamed(AppRouter.testSecond);
        },
        child: Text(
          'go to second',
          style: TextStyle(color: context.colors.mainColor),
        ),
      )),
    );
  }
}
