import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:flutter/material.dart';

import '../widgets/auth_custom_painter.dart';
import '../widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
        body: SignUpViewBody());
  }
}
