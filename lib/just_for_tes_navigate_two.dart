import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:e_commerce_app/core/router/app_router.dart';
import 'package:flutter/material.dart';

class JustForNavigationTestTwo extends StatelessWidget {
  const JustForNavigationTestTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
          child: TextButton(
        onPressed: () {
          context.pushNamed(AppRouter.testOne);
        },
        child: Text(
          'go to one ya',
          style: TextStyle(color: context.colors.mainColor,),
        ),
      )),
    );
  }
}
