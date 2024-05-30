import 'package:e_commerce_app/core/widgets/animation/animate_do_widget.dart';
import 'package:e_commerce_app/core/widgets/custom_linear_button.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.childOfFadeButton,
    required this.onPressed,
  });

  final void Function() onPressed;
  final Widget childOfFadeButton;
  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 200,
      child: CustomLinearButton(
        height: 60,
        width: double.infinity,
        onPressed: onPressed,
        child: childOfFadeButton,
      ),
    );
  }
}
