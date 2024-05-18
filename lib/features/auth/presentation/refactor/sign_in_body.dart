import 'package:e_commerce_app/core/extentions/extentions_helper.dart';
import 'package:e_commerce_app/core/languages/lang_keys.dart';
import 'package:e_commerce_app/core/utils/font_wieght_styles.dart';
import 'package:e_commerce_app/core/widgets/animation/animate_do_widget.dart';
import 'package:e_commerce_app/core/widgets/text_app.dart';
import 'package:e_commerce_app/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:e_commerce_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:e_commerce_app/features/auth/presentation/widgets/custom_text_form.dart';
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
            ),
            SizedBox(height: 50.h),
            CustomTextForm(),
            SizedBox(height: 30),
            CustomButton(),
            SizedBox(height: 60.h),
            CustomFadeInDown(
              duration: 400,
              child: TextApp(
                text: context.translate(LangKeys.createAccount),
                theme: context.textStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeightStyle.bold,
                  color: context.color.bluePinkLight,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
