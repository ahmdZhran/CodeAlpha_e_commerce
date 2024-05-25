import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:flutter/material.dart';

import '../../../../core/languages/lang_keys.dart';
import 'custom_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: context.translate(LangKeys.login),
      onPressed: () {},
    );
  }
}
