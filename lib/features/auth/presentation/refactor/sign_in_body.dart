import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:e_commerce_app/core/languages/lang_keys.dart';
import 'package:e_commerce_app/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/mode_and_language_toggle_buttons .dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.w),
      child: SingleChildScrollView(
          child: Column(
        children: [
          ModeAndLanguageToggleButtons(),
          SizedBox(height: 50.h),
          AuthTileInfo(
            title: context.translate(LangKeys.login),
            description: context.translate(
              LangKeys.welcome,
            ),
          )
        ],
      )),
    );
  }
}
