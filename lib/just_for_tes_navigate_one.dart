import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:e_commerce_app/core/router/app_router.dart';
import 'package:e_commerce_app/core/languages/lang_keys.dart';
import 'package:flutter/material.dart';

class JustForNavigationTestOne extends StatelessWidget {
  const JustForNavigationTestOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
          child: TextButton(
        onPressed: () {
          context.pushNamed(AppRouter.testSecond);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.translate(LangKeys.appName),
              style: TextStyle(color: context.color.mainColor),
            ),
            Text(
              'go to second',
              style: TextStyle(color: context.color.mainColor),
            ),
          ],
        ),
      )),
    );
  }
}
