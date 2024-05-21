import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoConnectionWidget extends StatelessWidget {
  const NoConnectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: LottieBuilder.asset(AppImages.noNetwork),
      )),
    );
  }
}
