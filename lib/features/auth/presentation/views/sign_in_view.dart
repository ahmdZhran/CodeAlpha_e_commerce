import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:flutter/material.dart';

import '../refactor/sign_in_body.dart';
import '../widgets/auth_custom_painter.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 170),
        painter: AuthCustomPainter(
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkDark!,
            ],
          ),
        ),
      ),
      body:SignInBody()
    );
  }
}
